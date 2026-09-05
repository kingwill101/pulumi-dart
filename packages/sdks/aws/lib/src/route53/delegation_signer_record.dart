import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_signer_record_args.dart';
import 'delegation_signer_record_signing_attributes.dart';
import 'delegation_signer_record_state.dart';
import 'delegation_signer_record_timeouts.dart';

/// Provides a resource to manage a [delegation signer record](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-enable-signing.html#dns-configuring-dnssec-enable-signing-step-1) in the parent DNS zone for domains registered with Route53.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.kms.Key("example", {
///     customerMasterKeySpec: "ECC_NIST_P256",
///     deletionWindowInDays: 7,
///     keyUsage: "SIGN_VERIFY",
///     policy: JSON.stringify({
///         Statement: [
///             {
///                 Action: [
///                     "kms:DescribeKey",
///                     "kms:GetPublicKey",
///                     "kms:Sign",
///                 ],
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "dnssec-route53.amazonaws.com",
///                 },
///                 Sid: "Allow Route 53 DNSSEC Service",
///                 Resource: "*",
///                 Condition: {
///                     StringEquals: {
///                         "aws:SourceAccount": current.then(current => current.accountId),
///                     },
///                     ArnLike: {
///                         "aws:SourceArn": "arn:aws:route53:::hostedzone/*",
///                     },
///                 },
///             },
///             {
///                 Action: "kms:CreateGrant",
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "dnssec-route53.amazonaws.com",
///                 },
///                 Sid: "Allow Route 53 DNSSEC Service to CreateGrant",
///                 Resource: "*",
///                 Condition: {
///                     Bool: {
///                         "kms:GrantIsForAWSResource": "true",
///                     },
///                 },
///             },
///             {
///                 Action: "kms:*",
///                 Effect: "Allow",
///                 Principal: {
///                     AWS: current.then(current => `arn:aws:iam::${current.accountId}:root`),
///                 },
///                 Resource: "*",
///                 Sid: "Enable IAM User Permissions",
///             },
///         ],
///         Version: "2012-10-17",
///     }),
/// });
/// const exampleZone = new aws.route53.Zone("example", {name: "example.com"});
/// const exampleKeySigningKey = new aws.route53.KeySigningKey("example", {
///     hostedZoneId: test.id,
///     keyManagementServiceArn: testAwsKmsKey.arn,
///     name: "example",
/// });
/// const exampleHostedZoneDnsSec = new aws.route53.HostedZoneDnsSec("example", {hostedZoneId: exampleKeySigningKey.hostedZoneId}, {
///     dependsOn: [exampleKeySigningKey],
/// });
/// const exampleDelegationSignerRecord = new aws.route53domains.DelegationSignerRecord("example", {
///     signingAttributes: {
///         algorithm: exampleKeySigningKey.signingAlgorithmType,
///         flags: exampleKeySigningKey.flag,
///         publicKey: exampleKeySigningKey.publicKey,
///     },
///     domainName: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.kms.Key("example",
///     customer_master_key_spec="ECC_NIST_P256",
///     deletion_window_in_days=7,
///     key_usage="SIGN_VERIFY",
///     policy=json.dumps({
///         "Statement": [
///             {
///                 "Action": [
///                     "kms:DescribeKey",
///                     "kms:GetPublicKey",
///                     "kms:Sign",
///                 ],
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "dnssec-route53.amazonaws.com",
///                 },
///                 "Sid": "Allow Route 53 DNSSEC Service",
///                 "Resource": "*",
///                 "Condition": {
///                     "StringEquals": {
///                         "aws:SourceAccount": current.account_id,
///                     },
///                     "ArnLike": {
///                         "aws:SourceArn": "arn:aws:route53:::hostedzone/*",
///                     },
///                 },
///             },
///             {
///                 "Action": "kms:CreateGrant",
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "dnssec-route53.amazonaws.com",
///                 },
///                 "Sid": "Allow Route 53 DNSSEC Service to CreateGrant",
///                 "Resource": "*",
///                 "Condition": {
///                     "Bool": {
///                         "kms:GrantIsForAWSResource": "true",
///                     },
///                 },
///             },
///             {
///                 "Action": "kms:*",
///                 "Effect": "Allow",
///                 "Principal": {
///                     "AWS": f"arn:aws:iam::{current.account_id}:root",
///                 },
///                 "Resource": "*",
///                 "Sid": "Enable IAM User Permissions",
///             },
///         ],
///         "Version": "2012-10-17",
///     }))
/// example_zone = aws.route53.Zone("example", name="example.com")
/// example_key_signing_key = aws.route53.KeySigningKey("example",
///     hosted_zone_id=test["id"],
///     key_management_service_arn=test_aws_kms_key["arn"],
///     name="example")
/// example_hosted_zone_dns_sec = aws.route53.HostedZoneDnsSec("example", hosted_zone_id=example_key_signing_key.hosted_zone_id,
/// opts = pulumi.ResourceOptions(depends_on=[example_key_signing_key]))
/// example_delegation_signer_record = aws.route53domains.DelegationSignerRecord("example",
///     signing_attributes={
///         "algorithm": example_key_signing_key.signing_algorithm_type,
///         "flags": example_key_signing_key.flag,
///         "public_key": example_key_signing_key.public_key,
///     },
///     domain_name="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Kms.Key("example", new()
///     {
///         CustomerMasterKeySpec = "ECC_NIST_P256",
///         DeletionWindowInDays = 7,
///         KeyUsage = "SIGN_VERIFY",
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "kms:DescribeKey",
///                         "kms:GetPublicKey",
///                         "kms:Sign",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "dnssec-route53.amazonaws.com",
///                     },
///                     ["Sid"] = "Allow Route 53 DNSSEC Service",
///                     ["Resource"] = "*",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceAccount"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         ["ArnLike"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceArn"] = "arn:aws:route53:::hostedzone/*",
///                         },
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "kms:CreateGrant",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "dnssec-route53.amazonaws.com",
///                     },
///                     ["Sid"] = "Allow Route 53 DNSSEC Service to CreateGrant",
///                     ["Resource"] = "*",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["Bool"] = new Dictionary<string, object?>
///                         {
///                             ["kms:GrantIsForAWSResource"] = "true",
///                         },
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "kms:*",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                     },
///                     ["Resource"] = "*",
///                     ["Sid"] = "Enable IAM User Permissions",
///                 },
///             },
///             ["Version"] = "2012-10-17",
///         }),
///     });
///
///     var exampleZone = new Aws.Route53.Zone("example", new()
///     {
///         Name = "example.com",
///     });
///
///     var exampleKeySigningKey = new Aws.Route53.KeySigningKey("example", new()
///     {
///         HostedZoneId = test.Id,
///         KeyManagementServiceArn = testAwsKmsKey.Arn,
///         Name = "example",
///     });
///
///     var exampleHostedZoneDnsSec = new Aws.Route53.HostedZoneDnsSec("example", new()
///     {
///         HostedZoneId = exampleKeySigningKey.HostedZoneId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleKeySigningKey,
///         },
///     });
///
///     var exampleDelegationSignerRecord = new Aws.Route53Domains.DelegationSignerRecord("example", new()
///     {
///         SigningAttributes = new Aws.Route53Domains.Inputs.DelegationSignerRecordSigningAttributesArgs
///         {
///             Algorithm = exampleKeySigningKey.SigningAlgorithmType,
///             Flags = exampleKeySigningKey.Flag,
///             PublicKey = exampleKeySigningKey.PublicKey,
///         },
///         DomainName = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53domains"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Statement": []interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"kms:DescribeKey",
/// 						"kms:GetPublicKey",
/// 						"kms:Sign",
/// 					},
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "dnssec-route53.amazonaws.com",
/// 					},
/// 					"Sid":      "Allow Route 53 DNSSEC Service",
/// 					"Resource": "*",
/// 					"Condition": map[string]interface{}{
/// 						"StringEquals": map[string]interface{}{
/// 							"aws:SourceAccount": current.AccountId,
/// 						},
/// 						"ArnLike": map[string]string{
/// 							"aws:SourceArn": "arn:aws:route53:::hostedzone/*",
/// 						},
/// 					},
/// 				},
/// 				map[string]interface{}{
/// 					"Action": "kms:CreateGrant",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "dnssec-route53.amazonaws.com",
/// 					},
/// 					"Sid":      "Allow Route 53 DNSSEC Service to CreateGrant",
/// 					"Resource": "*",
/// 					"Condition": map[string]map[string]string{
/// 						"Bool": map[string]string{
/// 							"kms:GrantIsForAWSResource": "true",
/// 						},
/// 					},
/// 				},
/// 				map[string]interface{}{
/// 					"Action": "kms:*",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"AWS": fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// 					},
/// 					"Resource": "*",
/// 					"Sid":      "Enable IAM User Permissions",
/// 				},
/// 			},
/// 			"Version": "2012-10-17",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			CustomerMasterKeySpec: pulumi.String("ECC_NIST_P256"),
/// 			DeletionWindowInDays:  pulumi.Int(7),
/// 			KeyUsage:              pulumi.String("SIGN_VERIFY"),
/// 			Policy:                json0,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewZone(ctx, "example", &route53.ZoneArgs{
/// 			Name: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeySigningKey, err := route53.NewKeySigningKey(ctx, "example", &route53.KeySigningKeyArgs{
/// 			HostedZoneId:            pulumi.Any(test.Id),
/// 			KeyManagementServiceArn: pulumi.Any(testAwsKmsKey.Arn),
/// 			Name:                    pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewHostedZoneDnsSec(ctx, "example", &route53.HostedZoneDnsSecArgs{
/// 			HostedZoneId: exampleKeySigningKey.HostedZoneId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleKeySigningKey,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53domains.NewDelegationSignerRecord(ctx, "example", &route53domains.DelegationSignerRecordArgs{
/// 			SigningAttributes: &route53domains.DelegationSignerRecordSigningAttributesArgs{
/// 				Algorithm: exampleKeySigningKey.SigningAlgorithmType,
/// 				Flags:     exampleKeySigningKey.Flag,
/// 				PublicKey: exampleKeySigningKey.PublicKey,
/// 			},
/// 			DomainName: pulumi.String("example.com"),
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
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_kms_key" "example" {
///   customer_master_key_spec = "ECC_NIST_P256"
///   deletion_window_in_days  = 7
///   key_usage                = "SIGN_VERIFY"
///   policy = jsonencode({
///     "Statement" = [{
///       "Action" = ["kms:DescribeKey", "kms:GetPublicKey", "kms:Sign"]
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "dnssec-route53.amazonaws.com"
///       }
///       "Sid"      = "Allow Route 53 DNSSEC Service"
///       "Resource" = "*"
///       "Condition" = {
///         "StringEquals" = {
///           "aws:SourceAccount" = data.aws_getcalleridentity.current.account_id
///         }
///         "ArnLike" = {
///           "aws:SourceArn" = "arn:aws:route53:::hostedzone/*"
///         }
///       }
///       }, {
///       "Action" = "kms:CreateGrant"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "dnssec-route53.amazonaws.com"
///       }
///       "Sid"      = "Allow Route 53 DNSSEC Service to CreateGrant"
///       "Resource" = "*"
///       "Condition" = {
///         "Bool" = {
///           "kms:GrantIsForAWSResource" = "true"
///         }
///       }
///       }, {
///       "Action" = "kms:*"
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" ="arn:aws:iam::${data.aws_getcalleridentity.current.account_id}:root"
///       }
///       "Resource" = "*"
///       "Sid"      = "Enable IAM User Permissions"
///     }]
///     "Version" = "2012-10-17"
///   })
/// }
/// resource "aws_route53_zone" "example" {
///   name = "example.com"
/// }
/// resource "aws_route53_keysigningkey" "example" {
///   hosted_zone_id             = test.id
///   key_management_service_arn = testAwsKmsKey.arn
///   name                       = "example"
/// }
/// resource "aws_route53_hostedzonednssec" "example" {
///   depends_on     = [aws_route53_keysigningkey.example]
///   hosted_zone_id = aws_route53_keysigningkey.example.hosted_zone_id
/// }
/// resource "aws_route53domains_delegationsignerrecord" "example" {
///   signing_attributes = {
///     algorithm  = aws_route53_keysigningkey.example.signing_algorithm_type
///     flags      = aws_route53_keysigningkey.example.flag
///     public_key = aws_route53_keysigningkey.example.public_key
///   }
///   domain_name = "example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
/// import com.pulumi.aws.route53.KeySigningKey;
/// import com.pulumi.aws.route53.KeySigningKeyArgs;
/// import com.pulumi.aws.route53.HostedZoneDnsSec;
/// import com.pulumi.aws.route53.HostedZoneDnsSecArgs;
/// import com.pulumi.aws.route53domains.DelegationSignerRecord;
/// import com.pulumi.aws.route53domains.DelegationSignerRecordArgs;
/// import com.pulumi.aws.route53domains.inputs.DelegationSignerRecordSigningAttributesArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new Key("example", KeyArgs.builder()
///             .customerMasterKeySpec("ECC_NIST_P256")
///             .deletionWindowInDays(7)
///             .keyUsage("SIGN_VERIFY")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Action", jsonArray(
///                                 "kms:DescribeKey",
///                                 "kms:GetPublicKey",
///                                 "kms:Sign"
///                             )),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "dnssec-route53.amazonaws.com")
///                             )),
///                             jsonProperty("Sid", "Allow Route 53 DNSSEC Service"),
///                             jsonProperty("Resource", "*"),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("StringEquals", jsonObject(
///                                     jsonProperty("aws:SourceAccount", current.accountId())
///                                 )),
///                                 jsonProperty("ArnLike", jsonObject(
///                                     jsonProperty("aws:SourceArn", "arn:aws:route53:::hostedzone/*")
///                                 ))
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("Action", "kms:CreateGrant"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "dnssec-route53.amazonaws.com")
///                             )),
///                             jsonProperty("Sid", "Allow Route 53 DNSSEC Service to CreateGrant"),
///                             jsonProperty("Resource", "*"),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("Bool", jsonObject(
///                                     jsonProperty("kms:GrantIsForAWSResource", "true")
///                                 ))
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("Action", "kms:*"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("AWS", String.format("arn:aws:iam::%s:root", current.accountId()))
///                             )),
///                             jsonProperty("Resource", "*"),
///                             jsonProperty("Sid", "Enable IAM User Permissions")
///                         )
///                     )),
///                     jsonProperty("Version", "2012-10-17")
///                 )))
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("example.com")
///             .build());
///
///         var exampleKeySigningKey = new KeySigningKey("exampleKeySigningKey", KeySigningKeyArgs.builder()
///             .hostedZoneId(test.id())
///             .keyManagementServiceArn(testAwsKmsKey.arn())
///             .name("example")
///             .build());
///
///         var exampleHostedZoneDnsSec = new HostedZoneDnsSec("exampleHostedZoneDnsSec", HostedZoneDnsSecArgs.builder()
///             .hostedZoneId(exampleKeySigningKey.hostedZoneId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleKeySigningKey)
///                 .build());
///
///         var exampleDelegationSignerRecord = new DelegationSignerRecord("exampleDelegationSignerRecord", DelegationSignerRecordArgs.builder()
///             .signingAttributes(DelegationSignerRecordSigningAttributesArgs.builder()
///                 .algorithm(exampleKeySigningKey.signingAlgorithmType())
///                 .flags(exampleKeySigningKey.flag())
///                 .publicKey(exampleKeySigningKey.publicKey())
///                 .build())
///             .domainName("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       customerMasterKeySpec: ECC_NIST_P256
///       deletionWindowInDays: 7
///       keyUsage: SIGN_VERIFY
///       policy:
///         fn::toJSON:
///           Statement:
///             - Action:
///                 - kms:DescribeKey
///                 - kms:GetPublicKey
///                 - kms:Sign
///               Effect: Allow
///               Principal:
///                 Service: dnssec-route53.amazonaws.com
///               Sid: Allow Route 53 DNSSEC Service
///               Resource: '*'
///               Condition:
///                 StringEquals:
///                   aws:SourceAccount: ${current.accountId}
///                 ArnLike:
///                   aws:SourceArn: arn:aws:route53:::hostedzone/*
///             - Action: kms:CreateGrant
///               Effect: Allow
///               Principal:
///                 Service: dnssec-route53.amazonaws.com
///               Sid: Allow Route 53 DNSSEC Service to CreateGrant
///               Resource: '*'
///               Condition:
///                 Bool:
///                   kms:GrantIsForAWSResource: 'true'
///             - Action: kms:*
///               Effect: Allow
///               Principal:
///                 AWS: arn:aws:iam::${current.accountId}:root
///               Resource: '*'
///               Sid: Enable IAM User Permissions
///           Version: 2012-10-17
///   exampleZone:
///     type: aws:route53:Zone
///     name: example
///     properties:
///       name: example.com
///   exampleKeySigningKey:
///     type: aws:route53:KeySigningKey
///     name: example
///     properties:
///       hostedZoneId: ${test.id}
///       keyManagementServiceArn: ${testAwsKmsKey.arn}
///       name: example
///   exampleHostedZoneDnsSec:
///     type: aws:route53:HostedZoneDnsSec
///     name: example
///     properties:
///       hostedZoneId: ${exampleKeySigningKey.hostedZoneId}
///     options:
///       dependsOn:
///         - ${exampleKeySigningKey}
///   exampleDelegationSignerRecord:
///     type: aws:route53domains:DelegationSignerRecord
///     name: example
///     properties:
///       signingAttributes:
///         algorithm: ${exampleKeySigningKey.signingAlgorithmType}
///         flags: ${exampleKeySigningKey.flag}
///         publicKey: ${exampleKeySigningKey.publicKey}
///       domainName: example.com
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import delegation signer records using the domain name and DNSSEC key ID, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:route53domains/delegationSignerRecord:DelegationSignerRecord example example.com,40DE3534F5324DBDAC598ACEDB5B1E26A5368732D9C791D1347E4FBDDF6FC343
/// ```
class DelegationSignerRecord extends pulumi.CustomResource {
  /// An ID assigned to the created DS record.
  late final pulumi.Output<String> dnssecKeyId;
  /// The name of the domain that will have its parent DNS zone updated with the Delegation Signer record.
  late final pulumi.Output<String> domainName;
  /// The information about a key, including the algorithm, public key-value, and flags.
  late final pulumi.Output<DelegationSignerRecordSigningAttributes?> signingAttributes;
  late final pulumi.Output<DelegationSignerRecordTimeouts?> timeouts;

  /// Creates a new [DelegationSignerRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DelegationSignerRecord]. {@macro pulumi_route53_domains_delegation_signer_record_delegation_signer_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DelegationSignerRecord(
    String name, {
    DelegationSignerRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53domains/delegationSignerRecord:DelegationSignerRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    dnssecKeyId = registerOutput<String>('dnssecKeyId');
    domainName = registerOutput<String>('domainName');
    signingAttributes = registerOutput<DelegationSignerRecordSigningAttributes?>('signingAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DelegationSignerRecordSigningAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<DelegationSignerRecordTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DelegationSignerRecordTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DelegationSignerRecord] resource's state with the given [name] and [id].
  static DelegationSignerRecord get(
    String name,
    pulumi.Input<String> id, {
    DelegationSignerRecordState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DelegationSignerRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DelegationSignerRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53domains/delegationSignerRecord:DelegationSignerRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dnssecKeyId = registerOutput<String>('dnssecKeyId');
    domainName = registerOutput<String>('domainName');
    signingAttributes = registerOutput<DelegationSignerRecordSigningAttributes?>('signingAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DelegationSignerRecordSigningAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<DelegationSignerRecordTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DelegationSignerRecordTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DelegationSignerRecord] resource.
  DelegationSignerRecord.reference(String urn)
    : super(
        'aws:route53domains/delegationSignerRecord:DelegationSignerRecord',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dnssecKeyId = registerOutput<String>('dnssecKeyId');
    domainName = registerOutput<String>('domainName');
    signingAttributes = registerOutput<DelegationSignerRecordSigningAttributes?>('signingAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DelegationSignerRecordSigningAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<DelegationSignerRecordTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DelegationSignerRecordTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
