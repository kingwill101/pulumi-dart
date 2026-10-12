import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_association_args.dart';
import 'custom_domain_association_certificate_validation_record.dart';
import 'custom_domain_association_state.dart';

/// Manages an App Runner Custom Domain association.
///
/// &gt; **NOTE:** After creation, you must use the information in the `certificateValidationRecords` attribute to add CNAME records to your DNS. For each mapped domain name, add a mapping to the target App Runner subdomain (found in the `dnsTarget` attribute) and one or more certificate validation records. App Runner then performs DNS validation to verify that you own or control the domain name you associated. App Runner tracks domain validity in a certificate stored in AWS Certificate Manager (ACM).
///
/// ## Example Usage
///
/// The attribute `certificateValidationRecords` has a fixed count of records, 3 when `enableWwwSubdomain` is `true` (the default) or 2 otherwise. Due to a limitation in how the `forEach` and `count` meta-arguments are handled, they cannot directly use the value of `certificateValidationRecords` when creating a new `aws.apprunner.CustomDomainAssociation`, as the value is unknown. A workaround is shown below, using a fixed `count` based on the value of `enableWwwSubdomain`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.CustomDomainAssociation("example", {
///     domainName: "example.com",
///     serviceArn: exampleAwsApprunnerService.arn,
/// });
/// const certificateValidationRecords = example.certificateValidationRecords;
/// const validation: aws.route53.Record[] = [];
/// example.enableWwwSubdomain.apply(enableWwwSubdomain => {
///     for (let range = 0; range < (enableWwwSubdomain ? 3 : 2); range++) {
///         validation.push(new aws.route53.Record(`validation-${range}`, {
///             zoneId: exampleAwsRoute53Zone.zoneId,
///             name: certificateValidationRecords.apply(certificateValidationRecords => certificateValidationRecords[range].name),
///             type: aws.route53.RecordType.CNAME,
///             ttl: 300,
///             records: [certificateValidationRecords.apply(certificateValidationRecords => certificateValidationRecords[range].value)],
///         }));
///     }
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// example = aws.apprunner.CustomDomainAssociation("example",
///     domain_name="example.com",
///     service_arn=example_aws_apprunner_service["arn"])
/// certificate_validation_records = example.certificate_validation_records
/// validation: list[aws.route53.Record] = []
/// def create_validation(range_body):
///     for validation_range in [{"value": i} for i in range(0, range_body)]:
///         validation.append(aws.route53.Record(f"validation-{validation_range['value']}",
///             zone_id=example_aws_route53_zone["zoneId"],
///             name=certificate_validation_records.apply(lambda certificate_validation_records: certificate_validation_records[validation_range["value"]].name),
///             type=aws.route53.RecordType.CNAME,
///             ttl=300,
///             records=[certificate_validation_records.apply(lambda certificate_validation_records: certificate_validation_records[validation_range["value"]].value)]))
///
/// example.enable_www_subdomain.apply(lambda resolved_outputs: create_validation(3 if resolved_outputs['enable_www_subdomain'] == "true" else 2))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppRunner.CustomDomainAssociation("example", new()
///     {
///         DomainName = "example.com",
///         ServiceArn = exampleAwsApprunnerService.Arn,
///     });
///
///     var certificateValidationRecords = example.CertificateValidationRecords;
///
///     var validation = new List<Aws.Route53.Record>();
///     for (var rangeIndex = 0; rangeIndex < example.EnableWwwSubdomain.Apply(enableWwwSubdomain => enableWwwSubdomain ? 3 : 2); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         validation.Add(new Aws.Route53.Record($"validation-{range.Value}", new()
///         {
///             ZoneId = exampleAwsRoute53Zone.ZoneId,
///             Name = certificateValidationRecords.Apply(certificateValidationRecords => certificateValidationRecords[range.Value].Name),
///             Type = Aws.Route53.RecordType.CNAME,
///             Ttl = 300,
///             Records = new[]
///             {
///                 certificateValidationRecords.Apply(certificateValidationRecords => certificateValidationRecords[range.Value].Value),
///             },
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apprunner.NewCustomDomainAssociation(ctx, "example", &apprunner.CustomDomainAssociationArgs{
/// 			DomainName: pulumi.String("example.com"),
/// 			ServiceArn: pulumi.Any(exampleAwsApprunnerService.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		certificateValidationRecords := example.CertificateValidationRecords
/// 		var validation []*route53.Record
/// 		for index := 0; index < int(example.EnableWwwSubdomain.ApplyT(func(enableWwwSubdomain *bool) (int, error) {
/// 			return int(enableWwwSubdomain.ApplyT(func(__convert bool) (int, error) {
/// 				var tmp0 int
/// 				if __convert {
/// 					tmp0 = 3
/// 				} else {
/// 					tmp0 = 2
/// 				}
/// 				return tmp0, nil
/// 			}).(pulumi.IntOutput)), nil
/// 		}).(pulumi.IntOutput)); index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := route53.NewRecord(ctx, fmt.Sprintf("validation-%v", key0), &route53.RecordArgs{
/// 				ZoneId: pulumi.Any(exampleAwsRoute53Zone.ZoneId),
/// 				Name: certificateValidationRecords.ApplyT(func(certificateValidationRecords []apprunner.CustomDomainAssociationCertificateValidationRecord) (*string, error) {
/// 					val := certificateValidationRecords[val0].Name
/// 					return &val, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				Type: pulumi.String(route53.RecordTypeCNAME),
/// 				Ttl:  pulumi.Int(300),
/// 				Records: pulumi.StringArray{
/// 					certificateValidationRecords.ApplyT(func(certificateValidationRecords []apprunner.CustomDomainAssociationCertificateValidationRecord) (*string, error) {
/// 						val := certificateValidationRecords[val0].Value
/// 						return &val, nil
/// 					}).(pulumi.StringPtrOutput),
/// 				},
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			validation = append(validation, __res)
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
/// resource "aws_apprunner_customdomainassociation" "example" {
///   domain_name = "example.com"
///   service_arn = exampleAwsApprunnerService.arn
/// }
/// resource "aws_route53_record" "validation" {
///   count   = aws_apprunner_customdomainassociation.example.enable_www_subdomain ? 3 : 2
///   zone_id = exampleAwsRoute53Zone.zoneId
///   name    = local.certificateValidationRecords[count.index].name
///   type    = "CNAME"
///   ttl     = 300
///   records = [local.certificateValidationRecords[count.index].value]
/// }
/// locals {
///   certificateValidationRecords = aws_apprunner_customdomainassociation.example.certificate_validation_records
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apprunner.CustomDomainAssociation;
/// import com.pulumi.aws.apprunner.CustomDomainAssociationArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         var example = new CustomDomainAssociation("example", CustomDomainAssociationArgs.builder()
///             .domainName("example.com")
///             .serviceArn(exampleAwsApprunnerService.arn())
///             .build());
///
///         final var certificateValidationRecords = example.certificateValidationRecords();
///
///         for (var i = 0; i < example.enableWwwSubdomain().applyValue(_enableWwwSubdomain -> _enableWwwSubdomain ? 3 : 2); i++) {
///             new Record("validation-" + i, RecordArgs.builder()
///                 .zoneId(exampleAwsRoute53Zone.zoneId())
///                 .name(certificateValidationRecords.applyValue(_certificateValidationRecords -> _certificateValidationRecords[range.value()].name()))
///                 .type("CNAME")
///                 .ttl(300)
///                 .records(certificateValidationRecords.applyValue(_certificateValidationRecords -> _certificateValidationRecords[range.value()].value()))
///                 .build());
///
///
/// }
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Runner Custom Domain Associations using the `domainName` and `serviceArn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/customDomainAssociation:CustomDomainAssociation example example.com,arn:aws:apprunner:us-east-1:123456789012:service/example-app/8fe1e10304f84fd2b0df550fe98a71fa
/// ```
class CustomDomainAssociation extends pulumi.CustomResource {
  /// Set of certificate CNAME records used for this domain name. See `certificateValidationRecords` Block below for more details.
  late final pulumi.Output<List<CustomDomainAssociationCertificateValidationRecord>> certificateValidationRecords;
  /// App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name.
  late final pulumi.Output<String> dnsTarget;
  /// Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`. Must not end with a trailing period. `enableWwwSubdomain` must be set to `false` when using a wildcard domain.
  late final pulumi.Output<String> domainName;
  /// Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to `true`. Must be set to `false` when `domainName` is a wildcard domain.
  late final pulumi.Output<bool?> enableWwwSubdomain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the App Runner service.
  late final pulumi.Output<String> serviceArn;
  /// Current state of the certificate `CNAME` record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  late final pulumi.Output<String> status;

  /// Creates a new [CustomDomainAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomainAssociation]. {@macro pulumi_apprunner_custom_domain_association_custom_domain_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomainAssociation(
    String name, {
    CustomDomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/customDomainAssociation:CustomDomainAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.50.0').merge(options),
        ) {
    certificateValidationRecords = registerOutput<List<CustomDomainAssociationCertificateValidationRecord>>('certificateValidationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainAssociationCertificateValidationRecord>(guardedValue, (value) => CustomDomainAssociationCertificateValidationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    dnsTarget = registerOutput<String>('dnsTarget');
    domainName = registerOutput<String>('domainName');
    enableWwwSubdomain = registerOutput<bool?>('enableWwwSubdomain');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [CustomDomainAssociation] resource's state with the given [name] and [id].
  static CustomDomainAssociation get(
    String name,
    pulumi.Input<String> id, {
    CustomDomainAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomDomainAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomDomainAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/customDomainAssociation:CustomDomainAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateValidationRecords = registerOutput<List<CustomDomainAssociationCertificateValidationRecord>>('certificateValidationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainAssociationCertificateValidationRecord>(guardedValue, (value) => CustomDomainAssociationCertificateValidationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    dnsTarget = registerOutput<String>('dnsTarget');
    domainName = registerOutput<String>('domainName');
    enableWwwSubdomain = registerOutput<bool?>('enableWwwSubdomain');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [CustomDomainAssociation] resource.
  CustomDomainAssociation.reference(String urn)
    : super(
        'aws:apprunner/customDomainAssociation:CustomDomainAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateValidationRecords = registerOutput<List<CustomDomainAssociationCertificateValidationRecord>>('certificateValidationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CustomDomainAssociationCertificateValidationRecord>(guardedValue, (value) => CustomDomainAssociationCertificateValidationRecord.fromMap((value as Map).cast<String, dynamic>())); });
    dnsTarget = registerOutput<String>('dnsTarget');
    domainName = registerOutput<String>('domainName');
    enableWwwSubdomain = registerOutput<bool?>('enableWwwSubdomain');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    status = registerOutput<String>('status');
  }
}
