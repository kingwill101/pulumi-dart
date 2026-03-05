import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_task_args.dart';
import 'export_task_state.dart';
import 'export_task_timeouts.dart';

/// Resource for managing an AWS RDS (Relational Database) Export Task.
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
/// const example = new aws.rds.ExportTask("example", {
///     exportTaskIdentifier: "example",
///     sourceArn: exampleAwsDbSnapshot.dbSnapshotArn,
///     s3BucketName: exampleAwsS3Bucket.id,
///     iamRoleArn: exampleAwsIamRole.arn,
///     kmsKeyId: exampleAwsKmsKey.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.ExportTask("example",
///     export_task_identifier="example",
///     source_arn=example_aws_db_snapshot["dbSnapshotArn"],
///     s3_bucket_name=example_aws_s3_bucket["id"],
///     iam_role_arn=example_aws_iam_role["arn"],
///     kms_key_id=example_aws_kms_key["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.ExportTask("example", new()
///     {
///         ExportTaskIdentifier = "example",
///         SourceArn = exampleAwsDbSnapshot.DbSnapshotArn,
///         S3BucketName = exampleAwsS3Bucket.Id,
///         IamRoleArn = exampleAwsIamRole.Arn,
///         KmsKeyId = exampleAwsKmsKey.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewExportTask(ctx, "example", &rds.ExportTaskArgs{
/// 			ExportTaskIdentifier: pulumi.String("example"),
/// 			SourceArn:            pulumi.Any(exampleAwsDbSnapshot.DbSnapshotArn),
/// 			S3BucketName:         pulumi.Any(exampleAwsS3Bucket.Id),
/// 			IamRoleArn:           pulumi.Any(exampleAwsIamRole.Arn),
/// 			KmsKeyId:             pulumi.Any(exampleAwsKmsKey.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.ExportTask;
/// import com.pulumi.aws.rds.ExportTaskArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new ExportTask("example", ExportTaskArgs.builder()
///             .exportTaskIdentifier("example")
///             .sourceArn(exampleAwsDbSnapshot.dbSnapshotArn())
///             .s3BucketName(exampleAwsS3Bucket.id())
///             .iamRoleArn(exampleAwsIamRole.arn())
///             .kmsKeyId(exampleAwsKmsKey.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:ExportTask
///     properties:
///       exportTaskIdentifier: example
///       sourceArn: ${exampleAwsDbSnapshot.dbSnapshotArn}
///       s3BucketName: ${exampleAwsS3Bucket.id}
///       iamRoleArn: ${exampleAwsIamRole.arn}
///       kmsKeyId: ${exampleAwsKmsKey.arn}
/// ```
///
///
/// ### Complete Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "example",
///     forceDestroy: true,
/// });
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: exampleBucket.id,
///     acl: "private",
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Sid: "",
///             Principal: {
///                 Service: "export.rds.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             actions: ["s3:ListAllMyBuckets"],
///             resources: ["*"],
///         },
///         {
///             actions: [
///                 "s3:GetBucketLocation",
///                 "s3:ListBucket",
///             ],
///             resources: [exampleBucket.arn],
///         },
///         {
///             actions: [
///                 "s3:GetObject",
///                 "s3:PutObject",
///                 "s3:DeleteObject",
///             ],
///             resources: [pulumi.interpolate`${exampleBucket.arn}/*`],
///         },
///     ],
/// });
/// const examplePolicy = new aws.iam.Policy("example", {
///     name: "example",
///     policy: example.apply(example => example.json),
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     role: exampleRole.name,
///     policyArn: examplePolicy.arn,
/// });
/// const exampleKey = new aws.kms.Key("example", {deletionWindowInDays: 10});
/// const exampleInstance = new aws.rds.Instance("example", {
///     identifier: "example",
///     allocatedStorage: 10,
///     dbName: "test",
///     engine: "mysql",
///     engineVersion: "5.7",
///     instanceClass: aws.rds.InstanceType.T3_Micro,
///     username: "foo",
///     password: "foobarbaz",
///     parameterGroupName: "default.mysql5.7",
///     skipFinalSnapshot: true,
/// });
/// const exampleSnapshot = new aws.rds.Snapshot("example", {
///     dbInstanceIdentifier: exampleInstance.identifier,
///     dbSnapshotIdentifier: "example",
/// });
/// const exampleExportTask = new aws.rds.ExportTask("example", {
///     exportTaskIdentifier: "example",
///     sourceArn: exampleSnapshot.dbSnapshotArn,
///     s3BucketName: exampleBucket.id,
///     iamRoleArn: exampleRole.arn,
///     kmsKeyId: exampleKey.arn,
///     exportOnlies: ["database"],
///     s3Prefix: "my_prefix/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example",
///     bucket="example",
///     force_destroy=True)
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example_bucket.id,
///     acl="private")
/// example_role = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Sid": "",
///             "Principal": {
///                 "Service": "export.rds.amazonaws.com",
///             },
///         }],
///     }))
/// example = aws.iam.get_policy_document_output(statements=[
///     {
///         "actions": ["s3:ListAllMyBuckets"],
///         "resources": ["*"],
///     },
///     {
///         "actions": [
///             "s3:GetBucketLocation",
///             "s3:ListBucket",
///         ],
///         "resources": [example_bucket.arn],
///     },
///     {
///         "actions": [
///             "s3:GetObject",
///             "s3:PutObject",
///             "s3:DeleteObject",
///         ],
///         "resources": [example_bucket.arn.apply(lambda arn: f"{arn}/*")],
///     },
/// ])
/// example_policy = aws.iam.Policy("example",
///     name="example",
///     policy=example.json)
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     role=example_role.name,
///     policy_arn=example_policy.arn)
/// example_key = aws.kms.Key("example", deletion_window_in_days=10)
/// example_instance = aws.rds.Instance("example",
///     identifier="example",
///     allocated_storage=10,
///     db_name="test",
///     engine="mysql",
///     engine_version="5.7",
///     instance_class=aws.rds.InstanceType.T3_MICRO,
///     username="foo",
///     password="foobarbaz",
///     parameter_group_name="default.mysql5.7",
///     skip_final_snapshot=True)
/// example_snapshot = aws.rds.Snapshot("example",
///     db_instance_identifier=example_instance.identifier,
///     db_snapshot_identifier="example")
/// example_export_task = aws.rds.ExportTask("example",
///     export_task_identifier="example",
///     source_arn=example_snapshot.db_snapshot_arn,
///     s3_bucket_name=example_bucket.id,
///     iam_role_arn=example_role.arn,
///     kms_key_id=example_key.arn,
///     export_onlies=["database"],
///     s3_prefix="my_prefix/example")
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
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///         ForceDestroy = true,
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         Acl = "private",
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Sid"] = "",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "export.rds.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "s3:ListAllMyBuckets",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "s3:GetBucketLocation",
///                     "s3:ListBucket",
///                 },
///                 Resources = new[]
///                 {
///                     exampleBucket.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "s3:GetObject",
///                     "s3:PutObject",
///                     "s3:DeleteObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{exampleBucket.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var examplePolicy = new Aws.Iam.Policy("example", new()
///     {
///         Name = "example",
///         PolicyDocument = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         Role = exampleRole.Name,
///         PolicyArn = examplePolicy.Arn,
///     });
///
///     var exampleKey = new Aws.Kms.Key("example", new()
///     {
///         DeletionWindowInDays = 10,
///     });
///
///     var exampleInstance = new Aws.Rds.Instance("example", new()
///     {
///         Identifier = "example",
///         AllocatedStorage = 10,
///         DbName = "test",
///         Engine = "mysql",
///         EngineVersion = "5.7",
///         InstanceClass = Aws.Rds.InstanceType.T3_Micro,
///         Username = "foo",
///         Password = "foobarbaz",
///         ParameterGroupName = "default.mysql5.7",
///         SkipFinalSnapshot = true,
///     });
///
///     var exampleSnapshot = new Aws.Rds.Snapshot("example", new()
///     {
///         DbInstanceIdentifier = exampleInstance.Identifier,
///         DbSnapshotIdentifier = "example",
///     });
///
///     var exampleExportTask = new Aws.Rds.ExportTask("example", new()
///     {
///         ExportTaskIdentifier = "example",
///         SourceArn = exampleSnapshot.DbSnapshotArn,
///         S3BucketName = exampleBucket.Id,
///         IamRoleArn = exampleRole.Arn,
///         KmsKeyId = exampleKey.Arn,
///         ExportOnlies = new[]
///         {
///             "database",
///         },
///         S3Prefix = "my_prefix/example",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: exampleBucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Sid":    "",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "export.rds.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:ListAllMyBuckets"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetBucketLocation"),
/// 						pulumi.String("s3:ListBucket"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn,
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetObject"),
/// 						pulumi.String("s3:PutObject"),
/// 						pulumi.String("s3:DeleteObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		examplePolicy, err := iam.NewPolicy(ctx, "example", &iam.PolicyArgs{
/// 			Name: pulumi.String("example"),
/// 			Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &example.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			Role:      exampleRole.Name,
/// 			PolicyArn: examplePolicy.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			DeletionWindowInDays: pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			Identifier:         pulumi.String("example"),
/// 			AllocatedStorage:   pulumi.Int(10),
/// 			DbName:             pulumi.String("test"),
/// 			Engine:             pulumi.String("mysql"),
/// 			EngineVersion:      pulumi.String("5.7"),
/// 			InstanceClass:      pulumi.String(rds.InstanceType_T3_Micro),
/// 			Username:           pulumi.String("foo"),
/// 			Password:           pulumi.String("foobarbaz"),
/// 			ParameterGroupName: pulumi.String("default.mysql5.7"),
/// 			SkipFinalSnapshot:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSnapshot, err := rds.NewSnapshot(ctx, "example", &rds.SnapshotArgs{
/// 			DbInstanceIdentifier: exampleInstance.Identifier,
/// 			DbSnapshotIdentifier: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewExportTask(ctx, "example", &rds.ExportTaskArgs{
/// 			ExportTaskIdentifier: pulumi.String("example"),
/// 			SourceArn:            exampleSnapshot.DbSnapshotArn,
/// 			S3BucketName:         exampleBucket.ID(),
/// 			IamRoleArn:           exampleRole.Arn,
/// 			KmsKeyId:             exampleKey.Arn,
/// 			ExportOnlies: pulumi.StringArray{
/// 				pulumi.String("database"),
/// 			},
/// 			S3Prefix: pulumi.String("my_prefix/example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.rds.Instance;
/// import com.pulumi.aws.rds.InstanceArgs;
/// import com.pulumi.aws.rds.Snapshot;
/// import com.pulumi.aws.rds.SnapshotArgs;
/// import com.pulumi.aws.rds.ExportTask;
/// import com.pulumi.aws.rds.ExportTaskArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .forceDestroy(true)
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(exampleBucket.id())
///             .acl("private")
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Sid", ""),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "export.rds.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("s3:ListAllMyBuckets")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions(
///                         "s3:GetBucketLocation",
///                         "s3:ListBucket")
///                     .resources(exampleBucket.arn())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions(
///                         "s3:GetObject",
///                         "s3:PutObject",
///                         "s3:DeleteObject")
///                     .resources(exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build())
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .name("example")
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(exampleRole.name())
///             .policyArn(examplePolicy.arn())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .deletionWindowInDays(10)
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .identifier("example")
///             .allocatedStorage(10)
///             .dbName("test")
///             .engine("mysql")
///             .engineVersion("5.7")
///             .instanceClass("db.t3.micro")
///             .username("foo")
///             .password("foobarbaz")
///             .parameterGroupName("default.mysql5.7")
///             .skipFinalSnapshot(true)
///             .build());
///
///         var exampleSnapshot = new Snapshot("exampleSnapshot", SnapshotArgs.builder()
///             .dbInstanceIdentifier(exampleInstance.identifier())
///             .dbSnapshotIdentifier("example")
///             .build());
///
///         var exampleExportTask = new ExportTask("exampleExportTask", ExportTaskArgs.builder()
///             .exportTaskIdentifier("example")
///             .sourceArn(exampleSnapshot.dbSnapshotArn())
///             .s3BucketName(exampleBucket.id())
///             .iamRoleArn(exampleRole.arn())
///             .kmsKeyId(exampleKey.arn())
///             .exportOnlies("database")
///             .s3Prefix("my_prefix/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
///       forceDestroy: true
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       acl: private
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Sid: ""
///               Principal:
///                 Service: export.rds.amazonaws.com
///   examplePolicy:
///     type: aws:iam:Policy
///     name: example
///     properties:
///       name: example
///       policy: ${example.json}
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       role: ${exampleRole.name}
///       policyArn: ${examplePolicy.arn}
///   exampleKey:
///     type: aws:kms:Key
///     name: example
///     properties:
///       deletionWindowInDays: 10
///   exampleInstance:
///     type: aws:rds:Instance
///     name: example
///     properties:
///       identifier: example
///       allocatedStorage: 10
///       dbName: test
///       engine: mysql
///       engineVersion: '5.7'
///       instanceClass: db.t3.micro
///       username: foo
///       password: foobarbaz
///       parameterGroupName: default.mysql5.7
///       skipFinalSnapshot: true
///   exampleSnapshot:
///     type: aws:rds:Snapshot
///     name: example
///     properties:
///       dbInstanceIdentifier: ${exampleInstance.identifier}
///       dbSnapshotIdentifier: example
///   exampleExportTask:
///     type: aws:rds:ExportTask
///     name: example
///     properties:
///       exportTaskIdentifier: example
///       sourceArn: ${exampleSnapshot.dbSnapshotArn}
///       s3BucketName: ${exampleBucket.id}
///       iamRoleArn: ${exampleRole.arn}
///       kmsKeyId: ${exampleKey.arn}
///       exportOnlies:
///         - database
///       s3Prefix: my_prefix/example
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - s3:ListAllMyBuckets
///             resources:
///               - '*'
///           - actions:
///               - s3:GetBucketLocation
///               - s3:ListBucket
///             resources:
///               - ${exampleBucket.arn}
///           - actions:
///               - s3:GetObject
///               - s3:PutObject
///               - s3:DeleteObject
///             resources:
///               - ${exampleBucket.arn}/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a RDS (Relational Database) Export Task using the `export_task_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/exportTask:ExportTask example example
/// ```
class ExportTask extends pulumi.CustomResource {
  /// Data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are documented in the [AWS StartExportTask API documentation](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestParameters).
  late final pulumi.Output<List<String>?> exportOnlies;

  /// Unique identifier for the snapshot export task.
  late final pulumi.Output<String> exportTaskIdentifier;

  /// Reason the export failed, if it failed.
  late final pulumi.Output<String> failureCause;

  /// ARN of the IAM role to use for writing to the Amazon S3 bucket.
  late final pulumi.Output<String> iamRoleArn;

  /// ID of the Amazon Web Services KMS key to use to encrypt the snapshot.
  late final pulumi.Output<String> kmsKeyId;

  /// Progress of the snapshot export task as a percentage.
  late final pulumi.Output<int> percentProgress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the Amazon S3 bucket to export the snapshot to.
  late final pulumi.Output<String> s3BucketName;

  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  late final pulumi.Output<String> s3Prefix;

  /// Time that the snapshot was created.
  late final pulumi.Output<String> snapshotTime;

  /// Amazon Resource Name (ARN) of the snapshot to export.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> sourceArn;

  /// Type of source for the export.
  late final pulumi.Output<String> sourceType;

  /// Status of the export task.
  late final pulumi.Output<String> status;

  /// Time that the snapshot export task completed.
  late final pulumi.Output<String> taskEndTime;

  /// Time that the snapshot export task started.
  late final pulumi.Output<String> taskStartTime;
  late final pulumi.Output<ExportTaskTimeouts?> timeouts;

  /// Warning about the snapshot export task, if any.
  late final pulumi.Output<String> warningMessage;

  /// Creates a new [ExportTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExportTask]. {@macro pulumi_rds_export_task_export_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExportTask(
    String name, {
    ExportTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/exportTask:ExportTask',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    exportOnlies = registerOutput<List<String>?>('exportOnlies');
    exportTaskIdentifier = registerOutput<String>('exportTaskIdentifier');
    failureCause = registerOutput<String>('failureCause');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    percentProgress = registerOutput<int>('percentProgress');
    region = registerOutput<String>('region');
    s3BucketName = registerOutput<String>('s3BucketName');
    s3Prefix = registerOutput<String>('s3Prefix');
    snapshotTime = registerOutput<String>('snapshotTime');
    sourceArn = registerOutput<String>('sourceArn');
    sourceType = registerOutput<String>('sourceType');
    status = registerOutput<String>('status');
    taskEndTime = registerOutput<String>('taskEndTime');
    taskStartTime = registerOutput<String>('taskStartTime');
    timeouts = registerOutput<ExportTaskTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExportTaskTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    warningMessage = registerOutput<String>('warningMessage');
  }

  /// Gets an existing [ExportTask] resource's state with the given [name] and [id].
  static ExportTask get(
    String name,
    pulumi.Input<String> id, {
    ExportTaskState? state,
  }) {
    return ExportTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExportTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/exportTask:ExportTask',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    exportOnlies = registerOutput<List<String>?>('exportOnlies');
    exportTaskIdentifier = registerOutput<String>('exportTaskIdentifier');
    failureCause = registerOutput<String>('failureCause');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    percentProgress = registerOutput<int>('percentProgress');
    region = registerOutput<String>('region');
    s3BucketName = registerOutput<String>('s3BucketName');
    s3Prefix = registerOutput<String>('s3Prefix');
    snapshotTime = registerOutput<String>('snapshotTime');
    sourceArn = registerOutput<String>('sourceArn');
    sourceType = registerOutput<String>('sourceType');
    status = registerOutput<String>('status');
    taskEndTime = registerOutput<String>('taskEndTime');
    taskStartTime = registerOutput<String>('taskStartTime');
    timeouts = registerOutput<ExportTaskTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExportTaskTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    warningMessage = registerOutput<String>('warningMessage');
  }
}
