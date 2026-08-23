import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_data_protection_policy_args.dart';
import 'log_data_protection_policy_state.dart';

/// Provides a CloudWatch Log Data Protection Policy resource.
///
/// Read more about protecting sensitive user data in the [User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleLogDataProtectionPolicy = new aws.cloudwatch.LogDataProtectionPolicy("example", {
///     logGroupName: example.name,
///     policyDocument: pulumi.jsonStringify({
///         Name: "Example",
///         Version: "2021-06-01",
///         Statement: [
///             {
///                 Sid: "Audit",
///                 DataIdentifier: ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///                 Operation: {
///                     Audit: {
///                         FindingsDestination: {
///                             S3: {
///                                 Bucket: exampleBucket.bucket,
///                             },
///                         },
///                     },
///                 },
///             },
///             {
///                 Sid: "Redact",
///                 DataIdentifier: ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///                 Operation: {
///                     Deidentify: {
///                         MaskConfig: {},
///                     },
///                 },
///             },
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example", name="example")
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example_log_data_protection_policy = aws.cloudwatch.LogDataProtectionPolicy("example",
///     log_group_name=example.name,
///     policy_document=pulumi.Output.json_dumps({
///         "Name": "Example",
///         "Version": "2021-06-01",
///         "Statement": [
///             {
///                 "Sid": "Audit",
///                 "DataIdentifier": ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///                 "Operation": {
///                     "Audit": {
///                         "FindingsDestination": {
///                             "S3": {
///                                 "Bucket": example_bucket.bucket,
///                             },
///                         },
///                     },
///                 },
///             },
///             {
///                 "Sid": "Redact",
///                 "DataIdentifier": ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///                 "Operation": {
///                     "Deidentify": {
///                         "MaskConfig": {},
///                     },
///                 },
///             },
///         ],
///     }))
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
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleLogDataProtectionPolicy = new Aws.CloudWatch.LogDataProtectionPolicy("example", new()
///     {
///         LogGroupName = example.Name,
///         PolicyDocument = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Name"] = "Example",
///             ["Version"] = "2021-06-01",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Audit",
///                     ["DataIdentifier"] = new[]
///                     {
///                         "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                     },
///                     ["Operation"] = new Dictionary<string, object?>
///                     {
///                         ["Audit"] = new Dictionary<string, object?>
///                         {
///                             ["FindingsDestination"] = new Dictionary<string, object?>
///                             {
///                                 ["S3"] = new Dictionary<string, object?>
///                                 {
///                                     ["Bucket"] = exampleBucket.BucketName,
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Redact",
///                     ["DataIdentifier"] = new[]
///                     {
///                         "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                     },
///                     ["Operation"] = new Dictionary<string, object?>
///                     {
///                         ["Deidentify"] = new Dictionary<string, object?>
///                         {
///                             ["MaskConfig"] = new Dictionary<string, object?>
///                             {
///                             },
///                         },
///                     },
///                 },
///             },
///         })),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogDataProtectionPolicy(ctx, "example", &cloudwatch.LogDataProtectionPolicyArgs{
/// 			LogGroupName: example.Name,
/// 			PolicyDocument: exampleBucket.Bucket.ApplyT(func(bucket string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Name":    "Example",
/// 					"Version": "2021-06-01",
/// 					"Statement": []interface{}{
/// 						map[string]interface{}{
/// 							"Sid": "Audit",
/// 							"DataIdentifier": []string{
/// 								"arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// 							},
/// 							"Operation": map[string]map[string]map[string]map[string]string{
/// 								"Audit": map[string]map[string]map[string]string{
/// 									"FindingsDestination": map[string]map[string]string{
/// 										"S3": map[string]string{
/// 											"Bucket": bucket,
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						map[string]interface{}{
/// 							"Sid": "Redact",
/// 							"DataIdentifier": []string{
/// 								"arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// 							},
/// 							"Operation": map[string]map[string]map[string]interface{}{
/// 								"Deidentify": map[string]map[string]interface{}{
/// 									"MaskConfig": map[string]interface{}{},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
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
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "example"
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_cloudwatch_logdataprotectionpolicy" "example" {
///   log_group_name = aws_cloudwatch_loggroup.example.name
///   policy_document = jsonencode({
///     "Name"    = "Example"
///     "Version" = "2021-06-01"
///     "Statement" = [{
///       "Sid"            = "Audit"
///       "DataIdentifier" = ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"]
///       "Operation" = {
///         "Audit" = {
///           "FindingsDestination" = {
///             "S3" = {
///               "Bucket" = aws_s3_bucket.example.bucket
///             }
///           }
///         }
///       }
///       }, {
///       "Sid"            = "Redact"
///       "DataIdentifier" = ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"]
///       "Operation" = {
///         "Deidentify" = {
///           "MaskConfig" = {}
///         }
///       }
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.cloudwatch.LogDataProtectionPolicy;
/// import com.pulumi.aws.cloudwatch.LogDataProtectionPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleLogDataProtectionPolicy = new LogDataProtectionPolicy("exampleLogDataProtectionPolicy", LogDataProtectionPolicyArgs.builder()
///             .logGroupName(example.name())
///             .policyDocument(exampleBucket.bucket().applyValue(_bucket -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Name", "Example"),
///                     jsonProperty("Version", "2021-06-01"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Sid", "Audit"),
///                             jsonProperty("DataIdentifier", jsonArray("arn:aws:dataprotection::aws:data-identifier/EmailAddress")),
///                             jsonProperty("Operation", jsonObject(
///                                 jsonProperty("Audit", jsonObject(
///                                     jsonProperty("FindingsDestination", jsonObject(
///                                         jsonProperty("S3", jsonObject(
///                                             jsonProperty("Bucket", _bucket)
///                                         ))
///                                     ))
///                                 ))
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("Sid", "Redact"),
///                             jsonProperty("DataIdentifier", jsonArray("arn:aws:dataprotection::aws:data-identifier/EmailAddress")),
///                             jsonProperty("Operation", jsonObject(
///                                 jsonProperty("Deidentify", jsonObject(
///                                     jsonProperty("MaskConfig", jsonObject(
///
///                                     ))
///                                 ))
///                             ))
///                         )
///                     ))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: example
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
///   exampleLogDataProtectionPolicy:
///     type: aws:cloudwatch:LogDataProtectionPolicy
///     name: example
///     properties:
///       logGroupName: ${example.name}
///       policyDocument:
///         fn::toJSON:
///           Name: Example
///           Version: 2021-06-01
///           Statement:
///             - Sid: Audit
///               DataIdentifier:
///                 - arn:aws:dataprotection::aws:data-identifier/EmailAddress
///               Operation:
///                 Audit:
///                   FindingsDestination:
///                     S3:
///                       Bucket: ${exampleBucket.bucket}
///             - Sid: Redact
///               DataIdentifier:
///                 - arn:aws:dataprotection::aws:data-identifier/EmailAddress
///               Operation:
///                 Deidentify:
///                   MaskConfig: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `logGroupName` (String) Name of the log group.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Data Protection Policies using `logGroupName`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDataProtectionPolicy:LogDataProtectionPolicy example my-log-group
/// ```
class LogDataProtectionPolicy extends pulumi.CustomResource {
  /// The name of the log group under which the log stream is to be created.
  late final pulumi.Output<String> logGroupName;
  /// Specifies the data protection policy in JSON. Read more at [Data protection policy syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-start.html#mask-sensitive-log-data-policysyntax).
  late final pulumi.Output<String> policyDocument;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LogDataProtectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogDataProtectionPolicy]. {@macro pulumi_cloudwatch_log_data_protection_policy_log_data_protection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogDataProtectionPolicy(
    String name, {
    LogDataProtectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDataProtectionPolicy:LogDataProtectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logGroupName = registerOutput<String>('logGroupName');
    policyDocument = registerOutput<String>('policyDocument');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [LogDataProtectionPolicy] resource's state with the given [name] and [id].
  static LogDataProtectionPolicy get(
    String name,
    pulumi.Input<String> id, {
    LogDataProtectionPolicyState? state,
  }) {
    return LogDataProtectionPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogDataProtectionPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDataProtectionPolicy:LogDataProtectionPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logGroupName = registerOutput<String>('logGroupName');
    policyDocument = registerOutput<String>('policyDocument');
    region = registerOutput<String>('region');
  }
}
