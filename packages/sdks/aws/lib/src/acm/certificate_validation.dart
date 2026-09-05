import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_validation_args.dart';
import 'certificate_validation_state.dart';

/// This resource represents a successful validation of an ACM certificate in concert
/// with other resources.
///
/// Most commonly, this resource is used together with `aws.route53.Record` and
/// `aws.acm.Certificate` to request a DNS validated certificate,
/// deploy the required validation records and wait for validation to complete.
///
/// &gt; **WARNING:** This resource implements a part of the validation workflow. It does not represent a real-world entity in AWS, therefore changing or deleting this resource on its own has no immediate effect.
///
/// ## Example Usage
///
/// ### DNS Validation with Route 53
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleCertificate = new aws.acm.Certificate("example", {
///     domainName: "example.com",
///     validationMethod: "DNS",
/// });
/// const example = aws.route53.getZone({
///     name: "example.com",
///     privateZone: false,
/// });
/// const exampleRecord: {[key: string]: aws.route53.Record} = {};
/// exampleCertificate.domainValidationOptions.apply(domainValidationOptions => {
///     for (const range of Object.entries(domainValidationOptions.reduce((__obj, dvo) => ({ ...__obj, [dvo.domainName]: {
///         name: dvo.resourceRecordName,
///         record: dvo.resourceRecordValue,
///         type: dvo.resourceRecordType,
///     } }), {})).sort().map(([k, v]) => ({key: k, value: v}))) {
///         exampleRecord[range.key] = new aws.route53.Record(`example-${range.key}`, {
///             allowOverwrite: true,
///             name: range.value.name,
///             records: [range.value.record],
///             ttl: 60,
///             type: aws.route53.RecordType[range.value.type],
///             zoneId: example.then(example => example.zoneId),
///         });
///     }
/// });
/// const exampleCertificateValidation = new aws.acm.CertificateValidation("example", {
///     certificateArn: exampleCertificate.arn,
///     validationRecordFqdns: exampleRecord.apply(exampleRecord => Object.values(exampleRecord).map(record => (record.fqdn))),
/// });
/// const exampleListener = new aws.lb.Listener("example", {certificateArn: exampleCertificateValidation.certificateArn});
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// example_certificate = aws.acm.Certificate("example",
///     domain_name="example.com",
///     validation_method="DNS")
/// example = aws.route53.get_zone(name="example.com",
///     private_zone=False)
/// example_record: dict[str, aws.route53.Record] = {}
/// def create_example(range_body):
///     for example_record_range in [{"key": k, "value": v} for [k, v] in sorted((range_body).items())]:
///         example_record[example_record_range['key']] = aws.route53.Record(f"example-{example_record_range['key']}",
///             allow_overwrite=True,
///             name=example_record_range["value"]["name"],
///             records=[example_record_range["value"]["record"]],
///             ttl=60,
///             type=aws.route53.RecordType(example_record_range["value"]["type"]),
///             zone_id=example.zone_id)
///
/// example_certificate.domain_validation_options.apply(lambda resolved_outputs: create_example({dvo.domain_name: {
///     "name": dvo.resource_record_name,
///     "record": dvo.resource_record_value,
///     "type": dvo.resource_record_type,
/// } for dvo in resolved_outputs['domain_validation_options']}))
/// example_certificate_validation = aws.acm.CertificateValidation("example",
///     certificate_arn=example_certificate.arn,
///     validation_record_fqdns=example_record.apply(lambda example_record: [record.fqdn for record in example_record.values()]))
/// example_listener = aws.lb.Listener("example", certificate_arn=example_certificate_validation.certificate_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCertificate = new Aws.Acm.Certificate("example", new()
///     {
///         DomainName = "example.com",
///         ValidationMethod = "DNS",
///     });
///
///     var example = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = "example.com",
///         PrivateZone = false,
///     });
///
///     var exampleRecord = new List<Aws.Route53.Record>();
///     foreach (var range in exampleCertificate.DomainValidationOptions.Apply(domainValidationOptions => domainValidationOptions.ToDictionary(item => {
///         var dvo = item.Value;
///         return dvo.DomainName;
///     }, item => {
///         var dvo = item.Value;
///         return
///         {
///             { "name", dvo.ResourceRecordName },
///             { "record", dvo.ResourceRecordValue },
///             { "type", dvo.ResourceRecordType },
///         };
///     })).Select(pair => new { pair.Key, pair.Value }))
///     {
///         exampleRecord.Add(new Aws.Route53.Record($"example-{range.Key}", new()
///         {
///             AllowOverwrite = true,
///             Name = range.Value.Name,
///             Records = new[]
///             {
///                 range.Value.Record,
///             },
///             Ttl = 60,
///             Type = System.Enum.Parse<Aws.Route53.RecordType>(range.Value.Type),
///             ZoneId = example.Apply(getZoneResult => getZoneResult.ZoneId),
///         }));
///     }
///     var exampleCertificateValidation = new Aws.Acm.CertificateValidation("example", new()
///     {
///         CertificateArn = exampleCertificate.Arn,
///         ValidationRecordFqdns = exampleRecord.Apply(exampleRecord => (exampleRecord).Values.Select(record =>
///         {
///             return record.Fqdn;
///         }).ToList()),
///     });
///
///     var exampleListener = new Aws.LB.Listener("example", new()
///     {
///         CertificateArn = exampleCertificateValidation.CertificateArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
/// 	"sort"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleCertificate, err := acm.NewCertificate(ctx, "example", &acm.CertificateArgs{
/// DomainName: pulumi.String("example.com"),
/// ValidationMethod: pulumi.String("DNS"),
/// })
/// if err != nil {
/// return err
/// }
/// example, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// Name: pulumi.StringRef("example.com"),
/// PrivateZone: pulumi.BoolRef(false),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// forResult0 := map[string]map[string]interface{}{}
/// for _, dvo := range domainValidationOptions {
/// forResult0[dvo.DomainName] = map[string]interface{}{
/// "name": dvo.ResourceRecordName,
/// "record": dvo.ResourceRecordValue,
/// "type": dvo.ResourceRecordType,
/// }
/// }
/// var exampleRecord []*route53.Record
/// for key0, val0 := range map[string]map[string]interface{}(exampleCertificate.DomainValidationOptions.ApplyT(func(domainValidationOptions []acm.CertificateDomainValidationOption) (map[string]map[string]interface{}, error) {
/// return forResult0, nil
/// }).(pulumi.MapOutput)) {
/// __res, err := route53.NewRecord(ctx, fmt.Sprintf("example-%v", key0), &route53.RecordArgs{
/// AllowOverwrite: pulumi.Bool(true),
/// Name: pulumi.String(val0),
/// Records: pulumi.StringArray{
/// pulumi.String(val0),
/// },
/// Ttl: pulumi.Int(60),
/// Type: route53.RecordType(val0),
/// ZoneId: pulumi.String(example.ZoneId),
/// })
/// if err != nil {
/// return err
/// }
/// exampleRecord = append(exampleRecord, __res)
/// }
/// var forResult1 []string
/// forRange1 := exampleRecord
/// forKeys1 := make([]string, 0, len(forRange1))
/// for forKey1 := range forRange1 {
/// forKeys1 = append(forKeys1, forKey1)
/// }
/// sort.Strings(forKeys1)
/// for _, forKey1 := range forKeys1 {
/// record := forRange1[forKey1]
/// forResult1 = append(forResult1, record.Fqdn)
/// }
/// exampleCertificateValidation, err := acm.NewCertificateValidation(ctx, "example", &acm.CertificateValidationArgs{
/// CertificateArn: exampleCertificate.Arn,
/// ValidationRecordFqdns: exampleRecord.ApplyT(func(%!v(PANIC=Format method: fatal: An assertion has failed: tok: )).(pulumi.StringArrayOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "example", &lb.ListenerArgs{
/// CertificateArn: exampleCertificateValidation.CertificateArn,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_route53_getzone" "example" {
///   name         = "example.com"
///   private_zone = false
/// }
///
/// resource "aws_acm_certificate" "example" {
///   domain_name       = "example.com"
///   validation_method = "DNS"
/// }
/// resource "aws_route53_record" "example" {
///   for_each = {for dvo in aws_acm_certificate.example.domain_validation_options : dvo.domainName => {
///     "name"   = dvo.resourceRecordName
///     "record" = dvo.resourceRecordValue
///     "type"   = dvo.resourceRecordType
///   } }
///   allow_overwrite = true
///   name            = each.value.name
///   records         = [each.value.record]
///   ttl             = 60
///   type            = each.value.type
///   zone_id         = data.aws_route53_getzone.example.zone_id
/// }
/// resource "aws_acm_certificatevalidation" "example" {
///   certificate_arn         = aws_acm_certificate.example.arn
///   validation_record_fqdns = [for record in aws_route53_record.example : record.fqdn]
/// }
/// resource "aws_lb_listener" "example" {
///   certificate_arn = aws_acm_certificatevalidation.example.certificate_arn
/// }
/// ```
///
///
/// ### Alternative Domains DNS Validation with Route 53
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.acm.Certificate("example", {
///     domainName: "example.com",
///     subjectAlternativeNames: [
///         "www.example.com",
///         "example.org",
///     ],
///     validationMethod: "DNS",
/// });
/// const exampleCom = aws.route53.getZone({
///     name: "example.com",
///     privateZone: false,
/// });
/// const exampleOrg = aws.route53.getZone({
///     name: "example.org",
///     privateZone: false,
/// });
/// const exampleRecord: {[key: string]: aws.route53.Record} = {};
/// pulumi.all([example.domainValidationOptions, dvo.domainName == "example.org" ? exampleOrg.then(exampleOrg => exampleOrg.zoneId) : exampleCom.then(exampleCom => exampleCom.zoneId)]).apply(([domainValidationOptions, value]) => {
///     for (const range of Object.entries(domainValidationOptions.reduce((__obj, dvo) => ({ ...__obj, [dvo.domainName]: {
///         name: dvo.resourceRecordName,
///         record: dvo.resourceRecordValue,
///         type: dvo.resourceRecordType,
///         zoneId: value,
///     } }), {})).sort().map(([k, v]) => ({key: k, value: v}))) {
///         exampleRecord[range.key] = new aws.route53.Record(`example-${range.key}`, {
///             allowOverwrite: true,
///             name: range.value.name,
///             records: [range.value.record],
///             ttl: 60,
///             type: aws.route53.RecordType[range.value.type],
///             zoneId: range.value.zoneId,
///         });
///     }
/// });
/// const exampleCertificateValidation = new aws.acm.CertificateValidation("example", {
///     certificateArn: example.arn,
///     validationRecordFqdns: exampleRecord.apply(exampleRecord => Object.values(exampleRecord).map(record => (record.fqdn))),
/// });
/// const exampleListener = new aws.lb.Listener("example", {certificateArn: exampleCertificateValidation.certificateArn});
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// example = aws.acm.Certificate("example",
///     domain_name="example.com",
///     subject_alternative_names=[
///         "www.example.com",
///         "example.org",
///     ],
///     validation_method="DNS")
/// example_com = aws.route53.get_zone(name="example.com",
///     private_zone=False)
/// example_org = aws.route53.get_zone(name="example.org",
///     private_zone=False)
/// example_record: dict[str, aws.route53.Record] = {}
/// def create_example(range_body):
///     for example_record_range in [{"key": k, "value": v} for [k, v] in sorted((range_body).items())]:
///         example_record[example_record_range['key']] = aws.route53.Record(f"example-{example_record_range['key']}",
///             allow_overwrite=True,
///             name=example_record_range["value"]["name"],
///             records=[example_record_range["value"]["record"]],
///             ttl=60,
///             type=aws.route53.RecordType(example_record_range["value"]["type"]),
///             zone_id=example_record_range["value"]["zoneId"])
///
/// example.domain_validation_options.apply(lambda resolved_outputs: create_example({dvo.domain_name: {
///     "name": dvo.resource_record_name,
///     "record": dvo.resource_record_value,
///     "type": dvo.resource_record_type,
///     "zoneId": example_org.zone_id if dvo.domain_name == "example.org" else example_com.zone_id,
/// } for dvo in resolved_outputs['domain_validation_options']}))
/// example_certificate_validation = aws.acm.CertificateValidation("example",
///     certificate_arn=example.arn,
///     validation_record_fqdns=example_record.apply(lambda example_record: [record.fqdn for record in example_record.values()]))
/// example_listener = aws.lb.Listener("example", certificate_arn=example_certificate_validation.certificate_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Acm.Certificate("example", new()
///     {
///         DomainName = "example.com",
///         SubjectAlternativeNames = new[]
///         {
///             "www.example.com",
///             "example.org",
///         },
///         ValidationMethod = "DNS",
///     });
///
///     var exampleCom = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = "example.com",
///         PrivateZone = false,
///     });
///
///     var exampleOrg = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = "example.org",
///         PrivateZone = false,
///     });
///
///     var exampleRecord = new List<Aws.Route53.Record>();
///     foreach (var range in Output.Tuple(example.DomainValidationOptions, dvo.DomainName == "example.org" ? exampleOrg.Apply(getZoneResult => getZoneResult.ZoneId) : exampleCom.Apply(getZoneResult => getZoneResult.ZoneId)).Apply(values =>
///     {
///         var domainValidationOptions = values.Item1;
///         var @value = values.Item2;
///         return domainValidationOptions.ToDictionary(item => {
///             var dvo = item.Value;
///             return dvo.DomainName;
///         }, item => {
///             var dvo = item.Value;
///             return
///             {
///                 { "name", dvo.ResourceRecordName },
///                 { "record", dvo.ResourceRecordValue },
///                 { "type", dvo.ResourceRecordType },
///                 { "zoneId", @value },
///             };
///         });
///     }).Select(pair => new { pair.Key, pair.Value }))
///     {
///         exampleRecord.Add(new Aws.Route53.Record($"example-{range.Key}", new()
///         {
///             AllowOverwrite = true,
///             Name = range.Value.Name,
///             Records = new[]
///             {
///                 range.Value.Record,
///             },
///             Ttl = 60,
///             Type = System.Enum.Parse<Aws.Route53.RecordType>(range.Value.Type),
///             ZoneId = range.Value.ZoneId,
///         }));
///     }
///     var exampleCertificateValidation = new Aws.Acm.CertificateValidation("example", new()
///     {
///         CertificateArn = example.Arn,
///         ValidationRecordFqdns = exampleRecord.Apply(exampleRecord => (exampleRecord).Values.Select(record =>
///         {
///             return record.Fqdn;
///         }).ToList()),
///     });
///
///     var exampleListener = new Aws.LB.Listener("example", new()
///     {
///         CertificateArn = exampleCertificateValidation.CertificateArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
/// 	"sort"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := acm.NewCertificate(ctx, "example", &acm.CertificateArgs{
/// DomainName: pulumi.String("example.com"),
/// SubjectAlternativeNames: pulumi.StringArray{
/// pulumi.String("www.example.com"),
/// pulumi.String("example.org"),
/// },
/// ValidationMethod: pulumi.String("DNS"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleCom, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// Name: pulumi.StringRef("example.com"),
/// PrivateZone: pulumi.BoolRef(false),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleOrg, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// Name: pulumi.StringRef("example.org"),
/// PrivateZone: pulumi.BoolRef(false),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// forResult0 := map[string]map[string]interface{}{}
/// for _, dvo := range domainValidationOptions {
/// forResult0[dvo.DomainName] = map[string]interface{}{
/// "name": dvo.ResourceRecordName,
/// "record": dvo.ResourceRecordValue,
/// "type": dvo.ResourceRecordType,
/// "zoneId": %!v(PANIC=Format method: fatal: A failure has occurred: unlowered conditional expression @ example.pp:23,16-87),
/// }
/// }
/// var exampleRecord []*route53.Record
/// for key0, val0 := range map[string]map[string]interface{}(example.DomainValidationOptions.ApplyT(func(domainValidationOptions []acm.CertificateDomainValidationOption) (map[string]map[string]interface{}, error) {
/// return forResult0, nil
/// }).(pulumi.MapOutput)) {
/// __res, err := route53.NewRecord(ctx, fmt.Sprintf("example-%v", key0), &route53.RecordArgs{
/// AllowOverwrite: pulumi.Bool(true),
/// Name: pulumi.String(val0),
/// Records: pulumi.StringArray{
/// pulumi.String(val0),
/// },
/// Ttl: pulumi.Int(60),
/// Type: route53.RecordType(val0),
/// ZoneId: pulumi.String(val0),
/// })
/// if err != nil {
/// return err
/// }
/// exampleRecord = append(exampleRecord, __res)
/// }
/// var forResult1 []string
/// forRange1 := exampleRecord
/// forKeys1 := make([]string, 0, len(forRange1))
/// for forKey1 := range forRange1 {
/// forKeys1 = append(forKeys1, forKey1)
/// }
/// sort.Strings(forKeys1)
/// for _, forKey1 := range forKeys1 {
/// record := forRange1[forKey1]
/// forResult1 = append(forResult1, record.Fqdn)
/// }
/// exampleCertificateValidation, err := acm.NewCertificateValidation(ctx, "example", &acm.CertificateValidationArgs{
/// CertificateArn: example.Arn,
/// ValidationRecordFqdns: exampleRecord.ApplyT(func(%!v(PANIC=Format method: fatal: An assertion has failed: tok: )).(pulumi.StringArrayOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lb.NewListener(ctx, "example", &lb.ListenerArgs{
/// CertificateArn: exampleCertificateValidation.CertificateArn,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_route53_getzone" "exampleCom" {
///   name         = "example.com"
///   private_zone = false
/// }
/// data "aws_route53_getzone" "exampleOrg" {
///   name         = "example.org"
///   private_zone = false
/// }
///
/// resource "aws_acm_certificate" "example" {
///   domain_name               = "example.com"
///   subject_alternative_names = ["www.example.com", "example.org"]
///   validation_method         = "DNS"
/// }
/// resource "aws_route53_record" "example" {
///   for_each = {for dvo in aws_acm_certificate.example.domain_validation_options : dvo.domainName => {
///     "name"   = dvo.resourceRecordName
///     "record" = dvo.resourceRecordValue
///     "type"   = dvo.resourceRecordType
///     "zoneId" = dvo.domainName == "example.org" ? data.aws_route53_getzone.exampleOrg.zone_id : data.aws_route53_getzone.exampleCom.zone_id
///   } }
///   allow_overwrite = true
///   name            = each.value.name
///   records         = [each.value.record]
///   ttl             = 60
///   type            = each.value.type
///   zone_id         = each.value.zoneId
/// }
/// resource "aws_acm_certificatevalidation" "example" {
///   certificate_arn         = aws_acm_certificate.example.arn
///   validation_record_fqdns = [for record in aws_route53_record.example : record.fqdn]
/// }
/// resource "aws_lb_listener" "example" {
///   certificate_arn = aws_acm_certificatevalidation.example.certificate_arn
/// }
/// ```
///
///
/// ### Email Validation
///
/// In this situation, the resource is simply a waiter for manual email approval of ACM certificates.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.acm.Certificate("example", {
///     domainName: "example.com",
///     validationMethod: "EMAIL",
/// });
/// const exampleCertificateValidation = new aws.acm.CertificateValidation("example", {certificateArn: example.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.acm.Certificate("example",
///     domain_name="example.com",
///     validation_method="EMAIL")
/// example_certificate_validation = aws.acm.CertificateValidation("example", certificate_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Acm.Certificate("example", new()
///     {
///         DomainName = "example.com",
///         ValidationMethod = "EMAIL",
///     });
///
///     var exampleCertificateValidation = new Aws.Acm.CertificateValidation("example", new()
///     {
///         CertificateArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := acm.NewCertificate(ctx, "example", &acm.CertificateArgs{
/// 			DomainName:       pulumi.String("example.com"),
/// 			ValidationMethod: pulumi.String("EMAIL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = acm.NewCertificateValidation(ctx, "example", &acm.CertificateValidationArgs{
/// 			CertificateArn: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_acm_certificate" "example" {
///   domain_name       = "example.com"
///   validation_method = "EMAIL"
/// }
/// resource "aws_acm_certificatevalidation" "example" {
///   certificate_arn = aws_acm_certificate.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.acm.Certificate;
/// import com.pulumi.aws.acm.CertificateArgs;
/// import com.pulumi.aws.acm.CertificateValidation;
/// import com.pulumi.aws.acm.CertificateValidationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Certificate("example", CertificateArgs.builder()
///             .domainName("example.com")
///             .validationMethod("EMAIL")
///             .build());
///
///         var exampleCertificateValidation = new CertificateValidation("exampleCertificateValidation", CertificateValidationArgs.builder()
///             .certificateArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:acm:Certificate
///     properties:
///       domainName: example.com
///       validationMethod: EMAIL
///   exampleCertificateValidation:
///     type: aws:acm:CertificateValidation
///     name: example
///     properties:
///       certificateArn: ${example.arn}
/// ```
class CertificateValidation extends pulumi.CustomResource {
  /// ARN of the certificate that is being validated.
  late final pulumi.Output<String> certificateArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of FQDNs that implement the validation. Only valid for DNS validation method ACM certificates. If this is set, the resource can implement additional sanity checks and has an explicit dependency on the resource that is implementing the validation
  late final pulumi.Output<List<String>?> validationRecordFqdns;

  /// Creates a new [CertificateValidation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateValidation]. {@macro pulumi_acm_certificate_validation_certificate_validation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateValidation(
    String name, {
    CertificateValidationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acm/certificateValidation:CertificateValidation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    certificateArn = registerOutput<String>('certificateArn');
    region = registerOutput<String>('region');
    validationRecordFqdns = registerOutput<List<String>?>('validationRecordFqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [CertificateValidation] resource's state with the given [name] and [id].
  static CertificateValidation get(
    String name,
    pulumi.Input<String> id, {
    CertificateValidationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CertificateValidation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CertificateValidation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:acm/certificateValidation:CertificateValidation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateArn = registerOutput<String>('certificateArn');
    region = registerOutput<String>('region');
    validationRecordFqdns = registerOutput<List<String>?>('validationRecordFqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [CertificateValidation] resource.
  CertificateValidation.reference(String urn)
    : super(
        'aws:acm/certificateValidation:CertificateValidation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateArn = registerOutput<String>('certificateArn');
    region = registerOutput<String>('region');
    validationRecordFqdns = registerOutput<List<String>?>('validationRecordFqdns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
