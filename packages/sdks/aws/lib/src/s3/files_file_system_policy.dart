import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_file_system_policy_args.dart';
import 'files_file_system_policy_state.dart';

/// Manages an S3 Files File System Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const example = new aws.s3.FilesFileSystemPolicy("example", {
///     fileSystemId: exampleAwsS3filesFileSystem.id,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Principal: {
///                 AWS: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:iam::${current.accountId}:root`),
///             },
///             Action: "s3files:ClientMount",
///             Resource: "*",
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// example = aws.s3.FilesFileSystemPolicy("example",
///     file_system_id=example_aws_s3files_file_system["id"],
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Principal": {
///                 "AWS": f"arn:{current_get_partition.partition}:iam::{current.account_id}:root",
///             },
///             "Action": "s3files:ClientMount",
///             "Resource": "*",
///         }],
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
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var example = new Aws.S3.FilesFileSystemPolicy("example", new()
///     {
///         FileSystemId = exampleAwsS3filesFileSystem.Id,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = Output.Tuple(currentGetPartition, current).Apply(values =>
///                         {
///                             var currentGetPartition = values.Item1;
///                             var current = values.Item2;
///                             return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root";
///                         }),
///                     },
///                     ["Action"] = "s3files:ClientMount",
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"AWS": fmt.Sprintf("arn:%v:iam::%v:root", currentGetPartition.Partition, current.AccountId),
/// 					},
/// 					"Action":   "s3files:ClientMount",
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = s3.NewFilesFileSystemPolicy(ctx, "example", &s3.FilesFileSystemPolicyArgs{
/// 			FileSystemId: pulumi.Any(exampleAwsS3filesFileSystem.Id),
/// 			Policy:       json0,
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
/// data "aws_getpartition" "currentGetPartition" {
/// }
///
/// resource "aws_s3_filesfilesystempolicy" "example" {
///   file_system_id = exampleAwsS3filesFileSystem.id
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" ="arn:${data.aws_getpartition.currentGetPartition.partition}:iam::${data.aws_getcalleridentity.current.account_id}:root"
///       }
///       "Action"   = "s3files:ClientMount"
///       "Resource" = "*"
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.s3.FilesFileSystemPolicy;
/// import com.pulumi.aws.s3.FilesFileSystemPolicyArgs;
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
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new FilesFileSystemPolicy("example", FilesFileSystemPolicyArgs.builder()
///             .fileSystemId(exampleAwsS3filesFileSystem.id())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", String.format("arn:%s:iam::%s:root", currentGetPartition.partition(),current.accountId()))
///                         )),
///                         jsonProperty("Action", "s3files:ClientMount"),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:FilesFileSystemPolicy
///     properties:
///       fileSystemId: ${exampleAwsS3filesFileSystem.id}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Principal:
///                 AWS: arn:${currentGetPartition.partition}:iam::${current.accountId}:root
///               Action: s3files:ClientMount
///               Resource: '*'
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
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
/// * `fileSystemId` - File system ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 Files File System Policy using `fileSystemId`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/filesFileSystemPolicy:FilesFileSystemPolicy example fs-1234567890abcdef0
/// ```
class FilesFileSystemPolicy extends pulumi.CustomResource {
  /// File system ID. Changing this value forces replacement.
  late final pulumi.Output<String> fileSystemId;
  /// JSON policy document.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [FilesFileSystemPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FilesFileSystemPolicy]. {@macro pulumi_s3_files_file_system_policy_files_file_system_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FilesFileSystemPolicy(
    String name, {
    FilesFileSystemPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesFileSystemPolicy:FilesFileSystemPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fileSystemId = registerOutput<String>('fileSystemId');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [FilesFileSystemPolicy] resource's state with the given [name] and [id].
  static FilesFileSystemPolicy get(
    String name,
    pulumi.Input<String> id, {
    FilesFileSystemPolicyState? state,
  }) {
    return FilesFileSystemPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FilesFileSystemPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesFileSystemPolicy:FilesFileSystemPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fileSystemId = registerOutput<String>('fileSystemId');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}
