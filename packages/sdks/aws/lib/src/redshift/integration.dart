import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_args.dart';
import 'integration_state.dart';
import 'integration_timeouts.dart';

/// Resource for managing a DynamoDB zero-ETL integration or S3 event integration with Amazon Redshift. You can refer to the [User Guide](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/RedshiftforDynamoDB-zero-etl.html) for a DynamoDB zero-ETL integration or the [User Guide](https://docs.aws.amazon.com/redshift/latest/dg/loading-data-copy-job.html) for a S3 event integration.
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
/// const example = new aws.dynamodb.Table("example", {
///     name: "dynamodb-table-example",
///     readCapacity: 1,
///     writeCapacity: 1,
///     hashKey: "example",
///     attributes: [{
///         name: "example",
///         type: "S",
///     }],
///     pointInTimeRecovery: {
///         enabled: true,
///     },
/// });
/// const exampleNamespace = new aws.redshiftserverless.Namespace("example", {namespaceName: "redshift-example"});
/// const exampleWorkgroup = new aws.redshiftserverless.Workgroup("example", {
///     namespaceName: exampleNamespace.namespaceName,
///     workgroupName: "example-workgroup",
///     baseCapacity: 8,
///     publiclyAccessible: false,
///     subnetIds: [
///         example1.id,
///         example2.id,
///         example3.id,
///     ],
///     configParameters: [{
///         parameterKey: "enable_case_sensitive_identifier",
///         parameterValue: "true",
///     }],
/// });
/// const exampleIntegration = new aws.redshift.Integration("example", {
///     integrationName: "example",
///     sourceArn: example.arn,
///     targetArn: exampleNamespace.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.Table("example",
///     name="dynamodb-table-example",
///     read_capacity=1,
///     write_capacity=1,
///     hash_key="example",
///     attributes=[{
///         "name": "example",
///         "type": "S",
///     }],
///     point_in_time_recovery={
///         "enabled": True,
///     })
/// example_namespace = aws.redshiftserverless.Namespace("example", namespace_name="redshift-example")
/// example_workgroup = aws.redshiftserverless.Workgroup("example",
///     namespace_name=example_namespace.namespace_name,
///     workgroup_name="example-workgroup",
///     base_capacity=8,
///     publicly_accessible=False,
///     subnet_ids=[
///         example1["id"],
///         example2["id"],
///         example3["id"],
///     ],
///     config_parameters=[{
///         "parameter_key": "enable_case_sensitive_identifier",
///         "parameter_value": "true",
///     }])
/// example_integration = aws.redshift.Integration("example",
///     integration_name="example",
///     source_arn=example.arn,
///     target_arn=example_namespace.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DynamoDB.Table("example", new()
///     {
///         Name = "dynamodb-table-example",
///         ReadCapacity = 1,
///         WriteCapacity = 1,
///         HashKey = "example",
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "example",
///                 Type = "S",
///             },
///         },
///         PointInTimeRecovery = new Aws.DynamoDB.Inputs.TablePointInTimeRecoveryArgs
///         {
///             Enabled = true,
///         },
///     });
///
///     var exampleNamespace = new Aws.RedshiftServerless.Namespace("example", new()
///     {
///         NamespaceName = "redshift-example",
///     });
///
///     var exampleWorkgroup = new Aws.RedshiftServerless.Workgroup("example", new()
///     {
///         NamespaceName = exampleNamespace.NamespaceName,
///         WorkgroupName = "example-workgroup",
///         BaseCapacity = 8,
///         PubliclyAccessible = false,
///         SubnetIds = new[]
///         {
///             example1.Id,
///             example2.Id,
///             example3.Id,
///         },
///         ConfigParameters = new[]
///         {
///             new Aws.RedshiftServerless.Inputs.WorkgroupConfigParameterArgs
///             {
///                 ParameterKey = "enable_case_sensitive_identifier",
///                 ParameterValue = "true",
///             },
///         },
///     });
///
///     var exampleIntegration = new Aws.RedShift.Integration("example", new()
///     {
///         IntegrationName = "example",
///         SourceArn = example.Arn,
///         TargetArn = exampleNamespace.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// 			Name:          pulumi.String("dynamodb-table-example"),
/// 			ReadCapacity:  pulumi.Int(1),
/// 			WriteCapacity: pulumi.Int(1),
/// 			HashKey:       pulumi.String("example"),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("example"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 			PointInTimeRecovery: &dynamodb.TablePointInTimeRecoveryArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := redshiftserverless.NewNamespace(ctx, "example", &redshiftserverless.NamespaceArgs{
/// 			NamespaceName: pulumi.String("redshift-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshiftserverless.NewWorkgroup(ctx, "example", &redshiftserverless.WorkgroupArgs{
/// 			NamespaceName:      exampleNamespace.NamespaceName,
/// 			WorkgroupName:      pulumi.String("example-workgroup"),
/// 			BaseCapacity:       pulumi.Int(8),
/// 			PubliclyAccessible: pulumi.Bool(false),
/// 			SubnetIds: pulumi.StringArray{
/// 				example1.Id,
/// 				example2.Id,
/// 				example3.Id,
/// 			},
/// 			ConfigParameters: redshiftserverless.WorkgroupConfigParameterArray{
/// 				&redshiftserverless.WorkgroupConfigParameterArgs{
/// 					ParameterKey:   pulumi.String("enable_case_sensitive_identifier"),
/// 					ParameterValue: pulumi.String("true"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshift.NewIntegration(ctx, "example", &redshift.IntegrationArgs{
/// 			IntegrationName: pulumi.String("example"),
/// 			SourceArn:       example.Arn,
/// 			TargetArn:       exampleNamespace.Arn,
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
/// resource "aws_dynamodb_table" "example" {
///   name           = "dynamodb-table-example"
///   read_capacity  = 1
///   write_capacity = 1
///   hash_key       = "example"
///   attributes {
///     name = "example"
///     type = "S"
///   }
///   point_in_time_recovery = {
///     enabled = true
///   }
/// }
/// resource "aws_redshiftserverless_namespace" "example" {
///   namespace_name = "redshift-example"
/// }
/// resource "aws_redshiftserverless_workgroup" "example" {
///   namespace_name      = aws_redshiftserverless_namespace.example.namespace_name
///   workgroup_name      = "example-workgroup"
///   base_capacity       = 8
///   publicly_accessible = false
///   subnet_ids          = [example1.id, example2.id, example3.id]
///   config_parameters {
///     parameter_key   = "enable_case_sensitive_identifier"
///     parameter_value = "true"
///   }
/// }
/// resource "aws_redshift_integration" "example" {
///   integration_name = "example"
///   source_arn       = aws_dynamodb_table.example.arn
///   target_arn       = aws_redshiftserverless_namespace.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableAttributeArgs;
/// import com.pulumi.aws.dynamodb.inputs.TablePointInTimeRecoveryArgs;
/// import com.pulumi.aws.redshiftserverless.Namespace;
/// import com.pulumi.aws.redshiftserverless.NamespaceArgs;
/// import com.pulumi.aws.redshiftserverless.Workgroup;
/// import com.pulumi.aws.redshiftserverless.WorkgroupArgs;
/// import com.pulumi.aws.redshiftserverless.inputs.WorkgroupConfigParameterArgs;
/// import com.pulumi.aws.redshift.Integration;
/// import com.pulumi.aws.redshift.IntegrationArgs;
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
///         var example = new Table("example", TableArgs.builder()
///             .name("dynamodb-table-example")
///             .readCapacity(1)
///             .writeCapacity(1)
///             .hashKey("example")
///             .attributes(TableAttributeArgs.builder()
///                 .name("example")
///                 .type("S")
///                 .build())
///             .pointInTimeRecovery(TablePointInTimeRecoveryArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .namespaceName("redshift-example")
///             .build());
///
///         var exampleWorkgroup = new Workgroup("exampleWorkgroup", WorkgroupArgs.builder()
///             .namespaceName(exampleNamespace.namespaceName())
///             .workgroupName("example-workgroup")
///             .baseCapacity(8)
///             .publiclyAccessible(false)
///             .subnetIds(
///                 example1.id(),
///                 example2.id(),
///                 example3.id())
///             .configParameters(WorkgroupConfigParameterArgs.builder()
///                 .parameterKey("enable_case_sensitive_identifier")
///                 .parameterValue("true")
///                 .build())
///             .build());
///
///         var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
///             .integrationName("example")
///             .sourceArn(example.arn())
///             .targetArn(exampleNamespace.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dynamodb:Table
///     properties:
///       name: dynamodb-table-example
///       readCapacity: 1
///       writeCapacity: 1
///       hashKey: example
///       attributes:
///         - name: example
///           type: S
///       pointInTimeRecovery:
///         enabled: true
///   exampleNamespace:
///     type: aws:redshiftserverless:Namespace
///     name: example
///     properties:
///       namespaceName: redshift-example
///   exampleWorkgroup:
///     type: aws:redshiftserverless:Workgroup
///     name: example
///     properties:
///       namespaceName: ${exampleNamespace.namespaceName}
///       workgroupName: example-workgroup
///       baseCapacity: 8
///       publiclyAccessible: false
///       subnetIds:
///         - ${example1.id}
///         - ${example2.id}
///         - ${example3.id}
///       configParameters:
///         - parameterKey: enable_case_sensitive_identifier
///           parameterValue: 'true'
///   exampleIntegration:
///     type: aws:redshift:Integration
///     name: example
///     properties:
///       integrationName: example
///       sourceArn: ${example.arn}
///       targetArn: ${exampleNamespace.arn}
/// ```
///
///
/// ### Use own KMS key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.kms.Key("example", {
///     description: "example",
///     deletionWindowInDays: 10,
/// });
/// const exampleKeyPolicy = new aws.kms.KeyPolicy("example", {
///     keyId: example.id,
///     policy: JSON.stringify({
///         Version: "2008-10-17",
///         Statement: [
///             {
///                 Effect: "Allow",
///                 Principal: {
///                     AWS: current.then(current => `arn:aws:iam::${current.accountId}:root`),
///                 },
///                 Action: "kms:*",
///                 Resource: "*",
///             },
///             {
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "redshift.amazonaws.com",
///                 },
///                 Action: [
///                     "kms:Decrypt",
///                     "kms:CreateGrant",
///                 ],
///                 Resource: "*",
///                 Condition: {
///                     StringEquals: {
///                         "aws:SourceAccount": current.then(current => current.accountId),
///                     },
///                     ArnEquals: {
///                         "aws:SourceArn": current.then(current => `arn:aws:redshift:*:${current.accountId}:integration:*`),
///                     },
///                 },
///             },
///         ],
///     }),
/// });
/// const exampleIntegration = new aws.redshift.Integration("example", {
///     integrationName: "example",
///     sourceArn: exampleAwsDynamodbTable.arn,
///     targetArn: exampleAwsRedshiftserverlessNamespace.arn,
///     kmsKeyId: example.arn,
///     additionalEncryptionContext: {
///         example: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.kms.Key("example",
///     description="example",
///     deletion_window_in_days=10)
/// example_key_policy = aws.kms.KeyPolicy("example",
///     key_id=example.id,
///     policy=json.dumps({
///         "Version": "2008-10-17",
///         "Statement": [
///             {
///                 "Effect": "Allow",
///                 "Principal": {
///                     "AWS": f"arn:aws:iam::{current.account_id}:root",
///                 },
///                 "Action": "kms:*",
///                 "Resource": "*",
///             },
///             {
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "redshift.amazonaws.com",
///                 },
///                 "Action": [
///                     "kms:Decrypt",
///                     "kms:CreateGrant",
///                 ],
///                 "Resource": "*",
///                 "Condition": {
///                     "StringEquals": {
///                         "aws:SourceAccount": current.account_id,
///                     },
///                     "ArnEquals": {
///                         "aws:SourceArn": f"arn:aws:redshift:*:{current.account_id}:integration:*",
///                     },
///                 },
///             },
///         ],
///     }))
/// example_integration = aws.redshift.Integration("example",
///     integration_name="example",
///     source_arn=example_aws_dynamodb_table["arn"],
///     target_arn=example_aws_redshiftserverless_namespace["arn"],
///     kms_key_id=example.arn,
///     additional_encryption_context={
///         "example": "test",
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
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "example",
///         DeletionWindowInDays = 10,
///     });
///
///     var exampleKeyPolicy = new Aws.Kms.KeyPolicy("example", new()
///     {
///         KeyId = example.Id,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2008-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                     },
///                     ["Action"] = "kms:*",
///                     ["Resource"] = "*",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "redshift.amazonaws.com",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "kms:Decrypt",
///                         "kms:CreateGrant",
///                     },
///                     ["Resource"] = "*",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceAccount"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         ["ArnEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceArn"] = $"arn:aws:redshift:*:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:integration:*",
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleIntegration = new Aws.RedShift.Integration("example", new()
///     {
///         IntegrationName = "example",
///         SourceArn = exampleAwsDynamodbTable.Arn,
///         TargetArn = exampleAwsRedshiftserverlessNamespace.Arn,
///         KmsKeyId = example.Arn,
///         AdditionalEncryptionContext =
///         {
///             { "example", "test" },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("example"),
/// 			DeletionWindowInDays: pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2008-10-17",
/// 			"Statement": []interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"AWS": fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// 					},
/// 					"Action":   "kms:*",
/// 					"Resource": "*",
/// 				},
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "redshift.amazonaws.com",
/// 					},
/// 					"Action": []string{
/// 						"kms:Decrypt",
/// 						"kms:CreateGrant",
/// 					},
/// 					"Resource": "*",
/// 					"Condition": map[string]interface{}{
/// 						"StringEquals": map[string]interface{}{
/// 							"aws:SourceAccount": current.AccountId,
/// 						},
/// 						"ArnEquals": map[string]string{
/// 							"aws:SourceArn": fmt.Sprintf("arn:aws:redshift:*:%v:integration:*", current.AccountId),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = kms.NewKeyPolicy(ctx, "example", &kms.KeyPolicyArgs{
/// 			KeyId:  example.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: json0,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshift.NewIntegration(ctx, "example", &redshift.IntegrationArgs{
/// 			IntegrationName: pulumi.String("example"),
/// 			SourceArn:       pulumi.Any(exampleAwsDynamodbTable.Arn),
/// 			TargetArn:       pulumi.Any(exampleAwsRedshiftserverlessNamespace.Arn),
/// 			KmsKeyId:        example.Arn,
/// 			AdditionalEncryptionContext: pulumi.StringMap{
/// 				"example": pulumi.String("test"),
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
/// data "aws_getcalleridentity" "current" {
/// }
///
/// resource "aws_kms_key" "example" {
///   description             = "example"
///   deletion_window_in_days = 10
/// }
/// resource "aws_kms_keypolicy" "example" {
///   key_id = aws_kms_key.example.id
///   policy = jsonencode({
///     "Version" = "2008-10-17"
///     "Statement" = [{
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" ="arn:aws:iam::${data.aws_getcalleridentity.current.account_id}:root"
///       }
///       "Action"   = "kms:*"
///       "Resource" = "*"
///       }, {
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "redshift.amazonaws.com"
///       }
///       "Action"   = ["kms:Decrypt", "kms:CreateGrant"]
///       "Resource" = "*"
///       "Condition" = {
///         "StringEquals" = {
///           "aws:SourceAccount" = data.aws_getcalleridentity.current.account_id
///         }
///         "ArnEquals" = {
///           "aws:SourceArn" ="arn:aws:redshift:*:${data.aws_getcalleridentity.current.account_id}:integration:*"
///         }
///       }
///     }]
///   })
/// }
/// resource "aws_redshift_integration" "example" {
///   integration_name = "example"
///   source_arn       = exampleAwsDynamodbTable.arn
///   target_arn       = exampleAwsRedshiftserverlessNamespace.arn
///   kms_key_id       = aws_kms_key.example.arn
///   additional_encryption_context = {
///     "example" = "test"
///   }
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
/// import com.pulumi.aws.kms.KeyPolicy;
/// import com.pulumi.aws.kms.KeyPolicyArgs;
/// import com.pulumi.aws.redshift.Integration;
/// import com.pulumi.aws.redshift.IntegrationArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new Key("example", KeyArgs.builder()
///             .description("example")
///             .deletionWindowInDays(10)
///             .build());
///
///         var exampleKeyPolicy = new KeyPolicy("exampleKeyPolicy", KeyPolicyArgs.builder()
///             .keyId(example.id())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2008-10-17"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("AWS", String.format("arn:aws:iam::%s:root", current.accountId()))
///                             )),
///                             jsonProperty("Action", "kms:*"),
///                             jsonProperty("Resource", "*")
///                         ),
///                         jsonObject(
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "redshift.amazonaws.com")
///                             )),
///                             jsonProperty("Action", jsonArray(
///                                 "kms:Decrypt",
///                                 "kms:CreateGrant"
///                             )),
///                             jsonProperty("Resource", "*"),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("StringEquals", jsonObject(
///                                     jsonProperty("aws:SourceAccount", current.accountId())
///                                 )),
///                                 jsonProperty("ArnEquals", jsonObject(
///                                     jsonProperty("aws:SourceArn", String.format("arn:aws:redshift:*:%s:integration:*", current.accountId()))
///                                 ))
///                             ))
///                         )
///                     ))
///                 )))
///             .build());
///
///         var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
///             .integrationName("example")
///             .sourceArn(exampleAwsDynamodbTable.arn())
///             .targetArn(exampleAwsRedshiftserverlessNamespace.arn())
///             .kmsKeyId(example.arn())
///             .additionalEncryptionContext(Map.of("example", "test"))
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
///       description: example
///       deletionWindowInDays: 10
///   exampleKeyPolicy:
///     type: aws:kms:KeyPolicy
///     name: example
///     properties:
///       keyId: ${example.id}
///       policy:
///         fn::toJSON:
///           Version: 2008-10-17
///           Statement:
///             - Effect: Allow
///               Principal:
///                 AWS: arn:aws:iam::${current.accountId}:root
///               Action: kms:*
///               Resource: '*'
///             - Effect: Allow
///               Principal:
///                 Service: redshift.amazonaws.com
///               Action:
///                 - kms:Decrypt
///                 - kms:CreateGrant
///               Resource: '*'
///               Condition:
///                 StringEquals:
///                   aws:SourceAccount: ${current.accountId}
///                 ArnEquals:
///                   aws:SourceArn: arn:aws:redshift:*:${current.accountId}:integration:*
///   exampleIntegration:
///     type: aws:redshift:Integration
///     name: example
///     properties:
///       integrationName: example
///       sourceArn: ${exampleAwsDynamodbTable.arn}
///       targetArn: ${exampleAwsRedshiftserverlessNamespace.arn}
///       kmsKeyId: ${example.arn}
///       additionalEncryptionContext:
///         example: test
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
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Redshift integration.
///
///
/// Using `pulumi import`, import Redshift Integration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/integration:Integration example arn:aws:redshift:us-west-2:123456789012:integration:abcdefgh-0000-1111-2222-123456789012
/// ```
class Integration extends pulumi.CustomResource {
  /// Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// For more information, see the [User Guide](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).
  /// You can only include this parameter if you specify the `kmsKeyId` parameter.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;
  /// ARN of the Integration.
  late final pulumi.Output<String> arn;
  /// Description of the integration.
  late final pulumi.Output<String?> description;
  /// Name of the integration.
  late final pulumi.Output<String> integrationName;
  /// KMS key identifier for the key to use to encrypt the integration.
  /// If you don't specify an encryption key, Redshift uses a default AWS owned key.
  /// You can only include this parameter if `sourceArn` references a DynamoDB table.
  late final pulumi.Output<String> kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the database to use as the source for replication. You can specify a DynamoDB table or an S3 bucket.
  late final pulumi.Output<String> sourceArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/redshift/create-integration.html).
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the Redshift data warehouse to use as the target for replication.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetArn;
  late final pulumi.Output<IntegrationTimeouts?> timeouts;

  /// Creates a new [Integration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Integration]. {@macro pulumi_redshift_integration_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Integration(
    String name, {
    IntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/integration:Integration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    integrationName = registerOutput<String>('integrationName');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    region = registerOutput<String>('region');
    sourceArn = registerOutput<String>('sourceArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
    timeouts = registerOutput<IntegrationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Integration] resource's state with the given [name] and [id].
  static Integration get(
    String name,
    pulumi.Input<String> id, {
    IntegrationState? state,
  }) {
    return Integration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Integration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/integration:Integration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    integrationName = registerOutput<String>('integrationName');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    region = registerOutput<String>('region');
    sourceArn = registerOutput<String>('sourceArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
    timeouts = registerOutput<IntegrationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
