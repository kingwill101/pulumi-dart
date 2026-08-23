import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_table_integration_args.dart';
import 's3_table_integration_encryption.dart';
import 's3_table_integration_state.dart';
import 's3_table_integration_timeouts.dart';

/// Manages a CloudWatch Observability Admin S3 Table Integration. This integration enables CloudWatch to duplicate telemetry data to Amazon S3 Tables, making it available for analysis by tools such as Amazon Athena and Amazon Redshift.
///
/// For more information, see the [CloudWatch Logs S3 Tables integration documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/s3-tables-integration.html).
///
/// ## Example Usage
///
/// ### Basic Integration with AES256 Encryption
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.Role("example", {
///     name: "example-s3-table-integration",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "logs.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     role: example.name,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: [
///                 "s3tables:CreateTableBucket",
///                 "s3tables:ListTableBuckets",
///                 "s3tables:GetTableBucket",
///                 "s3tables:CreateNamespace",
///                 "s3tables:GetNamespace",
///                 "s3tables:ListNamespaces",
///                 "s3tables:CreateTable",
///                 "s3tables:GetTable",
///                 "s3tables:ListTables",
///                 "s3tables:PutTableData",
///                 "s3tables:GetTableData",
///             ],
///             Resource: "*",
///         }],
///     }),
/// });
/// const exampleS3TableIntegration = new aws.observabilityadmin.S3TableIntegration("example", {
///     roleArn: example.arn,
///     encryption: {
///         sseAlgorithm: "AES256",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
///     name="example-s3-table-integration",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "logs.amazonaws.com",
///             },
///         }],
///     }))
/// example_role_policy = aws.iam.RolePolicy("example",
///     role=example.name,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": [
///                 "s3tables:CreateTableBucket",
///                 "s3tables:ListTableBuckets",
///                 "s3tables:GetTableBucket",
///                 "s3tables:CreateNamespace",
///                 "s3tables:GetNamespace",
///                 "s3tables:ListNamespaces",
///                 "s3tables:CreateTable",
///                 "s3tables:GetTable",
///                 "s3tables:ListTables",
///                 "s3tables:PutTableData",
///                 "s3tables:GetTableData",
///             ],
///             "Resource": "*",
///         }],
///     }))
/// example_s3_table_integration = aws.observabilityadmin.S3TableIntegration("example",
///     role_arn=example.arn,
///     encryption={
///         "sse_algorithm": "AES256",
///     })
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
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "example-s3-table-integration",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "logs.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Role = example.Name,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "s3tables:CreateTableBucket",
///                         "s3tables:ListTableBuckets",
///                         "s3tables:GetTableBucket",
///                         "s3tables:CreateNamespace",
///                         "s3tables:GetNamespace",
///                         "s3tables:ListNamespaces",
///                         "s3tables:CreateTable",
///                         "s3tables:GetTable",
///                         "s3tables:ListTables",
///                         "s3tables:PutTableData",
///                         "s3tables:GetTableData",
///                     },
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     var exampleS3TableIntegration = new Aws.Observabilityadmin.S3TableIntegration("example", new()
///     {
///         RoleArn = example.Arn,
///         Encryption = new Aws.Observabilityadmin.Inputs.S3TableIntegrationEncryptionArgs
///         {
///             SseAlgorithm = "AES256",
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "logs.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-s3-table-integration"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"s3tables:CreateTableBucket",
/// 						"s3tables:ListTableBuckets",
/// 						"s3tables:GetTableBucket",
/// 						"s3tables:CreateNamespace",
/// 						"s3tables:GetNamespace",
/// 						"s3tables:ListNamespaces",
/// 						"s3tables:CreateTable",
/// 						"s3tables:GetTable",
/// 						"s3tables:ListTables",
/// 						"s3tables:PutTableData",
/// 						"s3tables:GetTableData",
/// 					},
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Role:   example.Name,
/// 			Policy: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewS3TableIntegration(ctx, "example", &observabilityadmin.S3TableIntegrationArgs{
/// 			RoleArn: example.Arn,
/// 			Encryption: &observabilityadmin.S3TableIntegrationEncryptionArgs{
/// 				SseAlgorithm: pulumi.String("AES256"),
/// 			},
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
/// resource "aws_iam_role" "example" {
///   name = "example-s3-table-integration"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "logs.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicy" "example" {
///   role = aws_iam_role.example.name
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect"   = "Allow"
///       "Action"   = ["s3tables:CreateTableBucket", "s3tables:ListTableBuckets", "s3tables:GetTableBucket", "s3tables:CreateNamespace", "s3tables:GetNamespace", "s3tables:ListNamespaces", "s3tables:CreateTable", "s3tables:GetTable", "s3tables:ListTables", "s3tables:PutTableData", "s3tables:GetTableData"]
///       "Resource" = "*"
///     }]
///   })
/// }
/// resource "aws_observabilityadmin_s3tableintegration" "example" {
///   role_arn = aws_iam_role.example.arn
///   encryption = {
///     sse_algorithm = "AES256"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.observabilityadmin.S3TableIntegration;
/// import com.pulumi.aws.observabilityadmin.S3TableIntegrationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.S3TableIntegrationEncryptionArgs;
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
///         var example = new Role("example", RoleArgs.builder()
///             .name("example-s3-table-integration")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "logs.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .role(example.name())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray(
///                             "s3tables:CreateTableBucket",
///                             "s3tables:ListTableBuckets",
///                             "s3tables:GetTableBucket",
///                             "s3tables:CreateNamespace",
///                             "s3tables:GetNamespace",
///                             "s3tables:ListNamespaces",
///                             "s3tables:CreateTable",
///                             "s3tables:GetTable",
///                             "s3tables:ListTables",
///                             "s3tables:PutTableData",
///                             "s3tables:GetTableData"
///                         )),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///         var exampleS3TableIntegration = new S3TableIntegration("exampleS3TableIntegration", S3TableIntegrationArgs.builder()
///             .roleArn(example.arn())
///             .encryption(S3TableIntegrationEncryptionArgs.builder()
///                 .sseAlgorithm("AES256")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: example-s3-table-integration
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: logs.amazonaws.com
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       role: ${example.name}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action:
///                 - s3tables:CreateTableBucket
///                 - s3tables:ListTableBuckets
///                 - s3tables:GetTableBucket
///                 - s3tables:CreateNamespace
///                 - s3tables:GetNamespace
///                 - s3tables:ListNamespaces
///                 - s3tables:CreateTable
///                 - s3tables:GetTable
///                 - s3tables:ListTables
///                 - s3tables:PutTableData
///                 - s3tables:GetTableData
///               Resource: '*'
///   exampleS3TableIntegration:
///     type: aws:observabilityadmin:S3TableIntegration
///     name: example
///     properties:
///       roleArn: ${example.arn}
///       encryption:
///         sseAlgorithm: AES256
/// ```
///
///
/// ### Integration with KMS Encryption
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.Role("example", {
///     name: "example-s3-table-integration",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "logs.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const exampleKey = new aws.kms.Key("example", {
///     description: "S3 Table Integration KMS key",
///     deletionWindowInDays: 7,
/// });
/// const exampleS3TableIntegration = new aws.observabilityadmin.S3TableIntegration("example", {
///     roleArn: example.arn,
///     encryption: {
///         sseAlgorithm: "aws:kms",
///         kmsKeyArn: exampleKey.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
///     name="example-s3-table-integration",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "logs.amazonaws.com",
///             },
///         }],
///     }))
/// example_key = aws.kms.Key("example",
///     description="S3 Table Integration KMS key",
///     deletion_window_in_days=7)
/// example_s3_table_integration = aws.observabilityadmin.S3TableIntegration("example",
///     role_arn=example.arn,
///     encryption={
///         "sse_algorithm": "aws:kms",
///         "kms_key_arn": example_key.arn,
///     })
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
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "example-s3-table-integration",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "logs.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleKey = new Aws.Kms.Key("example", new()
///     {
///         Description = "S3 Table Integration KMS key",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleS3TableIntegration = new Aws.Observabilityadmin.S3TableIntegration("example", new()
///     {
///         RoleArn = example.Arn,
///         Encryption = new Aws.Observabilityadmin.Inputs.S3TableIntegrationEncryptionArgs
///         {
///             SseAlgorithm = "aws:kms",
///             KmsKeyArn = exampleKey.Arn,
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/observabilityadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "logs.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-s3-table-integration"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("S3 Table Integration KMS key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observabilityadmin.NewS3TableIntegration(ctx, "example", &observabilityadmin.S3TableIntegrationArgs{
/// 			RoleArn: example.Arn,
/// 			Encryption: &observabilityadmin.S3TableIntegrationEncryptionArgs{
/// 				SseAlgorithm: pulumi.String("aws:kms"),
/// 				KmsKeyArn:    exampleKey.Arn,
/// 			},
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
/// resource "aws_iam_role" "example" {
///   name = "example-s3-table-integration"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "logs.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_kms_key" "example" {
///   description             = "S3 Table Integration KMS key"
///   deletion_window_in_days = 7
/// }
/// resource "aws_observabilityadmin_s3tableintegration" "example" {
///   role_arn = aws_iam_role.example.arn
///   encryption = {
///     sse_algorithm = "aws:kms"
///     kms_key_arn   = aws_kms_key.example.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.observabilityadmin.S3TableIntegration;
/// import com.pulumi.aws.observabilityadmin.S3TableIntegrationArgs;
/// import com.pulumi.aws.observabilityadmin.inputs.S3TableIntegrationEncryptionArgs;
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
///         var example = new Role("example", RoleArgs.builder()
///             .name("example-s3-table-integration")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "logs.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .description("S3 Table Integration KMS key")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleS3TableIntegration = new S3TableIntegration("exampleS3TableIntegration", S3TableIntegrationArgs.builder()
///             .roleArn(example.arn())
///             .encryption(S3TableIntegrationEncryptionArgs.builder()
///                 .sseAlgorithm("aws:kms")
///                 .kmsKeyArn(exampleKey.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: example-s3-table-integration
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: logs.amazonaws.com
///   exampleKey:
///     type: aws:kms:Key
///     name: example
///     properties:
///       description: S3 Table Integration KMS key
///       deletionWindowInDays: 7
///   exampleS3TableIntegration:
///     type: aws:observabilityadmin:S3TableIntegration
///     name: example
///     properties:
///       roleArn: ${example.arn}
///       encryption:
///         sseAlgorithm: aws:kms
///         kmsKeyArn: ${exampleKey.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the S3 Table integration.
///
///
/// Using `pulumi import`, import CloudWatch Observability Admin S3 Table Integrations using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/s3TableIntegration:S3TableIntegration example arn:aws:observabilityadmin:us-east-1:123456789012:s3-table-integration/example-id
/// ```
class S3TableIntegration extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the S3 Table integration.
  late final pulumi.Output<String> arn;
  /// ARN of the S3 Table bucket where CloudWatch data is stored. AWS automatically creates a bucket named `_aws-cloudwatch_` if one does not already exist.
  late final pulumi.Output<String> destinationTableBucketArn;
  /// Encryption configuration block. Documented below.
  late final pulumi.Output<S3TableIntegrationEncryption> encryption;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Resource Name (ARN) of the IAM role that grants the S3 Table integration permissions to access necessary resources.
  late final pulumi.Output<String> roleArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<S3TableIntegrationTimeouts?> timeouts;

  /// Creates a new [S3TableIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [S3TableIntegration]. {@macro pulumi_observabilityadmin_s3_table_integration_s3_table_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  S3TableIntegration(
    String name, {
    S3TableIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/s3TableIntegration:S3TableIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destinationTableBucketArn = registerOutput<String>('destinationTableBucketArn');
    encryption = registerOutput<S3TableIntegrationEncryption>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return S3TableIntegrationEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<S3TableIntegrationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return S3TableIntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [S3TableIntegration] resource's state with the given [name] and [id].
  static S3TableIntegration get(
    String name,
    pulumi.Input<String> id, {
    S3TableIntegrationState? state,
  }) {
    return S3TableIntegration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  S3TableIntegration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/s3TableIntegration:S3TableIntegration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destinationTableBucketArn = registerOutput<String>('destinationTableBucketArn');
    encryption = registerOutput<S3TableIntegrationEncryption>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return S3TableIntegrationEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<S3TableIntegrationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return S3TableIntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
