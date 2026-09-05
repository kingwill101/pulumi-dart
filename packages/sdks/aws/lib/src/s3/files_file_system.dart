import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_file_system_args.dart';
import 'files_file_system_state.dart';
import 'files_file_system_timeouts.dart';

/// Manages an S3 Files File System.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.FilesFileSystem("example", {
///     bucket: exampleAwsS3Bucket.arn,
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.FilesFileSystem("example",
///     bucket=example_aws_s3_bucket["arn"],
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.FilesFileSystem("example", new()
///     {
///         Bucket = exampleAwsS3Bucket.Arn,
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewFilesFileSystem(ctx, "example", &s3.FilesFileSystemArgs{
/// 			Bucket:  pulumi.Any(exampleAwsS3Bucket.Arn),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_s3_filesfilesystem" "example" {
///   bucket   = exampleAwsS3Bucket.arn
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.FilesFileSystem;
/// import com.pulumi.aws.s3.FilesFileSystemArgs;
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
///         var example = new FilesFileSystem("example", FilesFileSystemArgs.builder()
///             .bucket(exampleAwsS3Bucket.arn())
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:FilesFileSystem
///     properties:
///       bucket: ${exampleAwsS3Bucket.arn}
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - Identifier of the file system.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 Files File System using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/filesFileSystem:FilesFileSystem example fs-1234567890abcdef0
/// ```
class FilesFileSystem extends pulumi.CustomResource {
  /// Set to `true` to acknowledge and accept any warnings related to the bucket configuration. If not specified, the operation may fail when such warnings are present. For example, warnings may be raised when creating a file system scoped to a prefix containing a large number of objects (approximately 12 million objects). See [the AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-files-synchronization.html#s3-files-sync-rename-move) for more details.
  late final pulumi.Output<bool?> acceptBucketWarning;
  /// ARN of the file system.
  late final pulumi.Output<String> arn;
  /// S3 bucket ARN. Changing this value forces replacement.
  late final pulumi.Output<String> bucket;
  /// Creation time.
  late final pulumi.Output<String> creationTime;
  /// KMS key ID for encryption. Changing this value forces replacement.
  late final pulumi.Output<String> kmsKeyId;
  /// File system name.
  late final pulumi.Output<String> name;
  /// AWS account ID of the owner.
  late final pulumi.Output<String> ownerId;
  /// S3 bucket prefix. Changing this value forces replacement.
  late final pulumi.Output<String?> prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// IAM role ARN for S3 access. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;
  /// File system status.
  late final pulumi.Output<String> status;
  /// Status message.
  late final pulumi.Output<String> statusMessage;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<FilesFileSystemTimeouts?> timeouts;

  /// Creates a new [FilesFileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FilesFileSystem]. {@macro pulumi_s3_files_file_system_files_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FilesFileSystem(
    String name, {
    FilesFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesFileSystem:FilesFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    acceptBucketWarning = registerOutput<bool?>('acceptBucketWarning');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    creationTime = registerOutput<String>('creationTime');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    prefix = registerOutput<String?>('prefix');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<FilesFileSystemTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FilesFileSystemTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FilesFileSystem] resource's state with the given [name] and [id].
  static FilesFileSystem get(
    String name,
    pulumi.Input<String> id, {
    FilesFileSystemState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FilesFileSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FilesFileSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesFileSystem:FilesFileSystem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptBucketWarning = registerOutput<bool?>('acceptBucketWarning');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    creationTime = registerOutput<String>('creationTime');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    prefix = registerOutput<String?>('prefix');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<FilesFileSystemTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FilesFileSystemTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FilesFileSystem] resource.
  FilesFileSystem.reference(String urn)
    : super(
        'aws:s3/filesFileSystem:FilesFileSystem',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acceptBucketWarning = registerOutput<bool?>('acceptBucketWarning');
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    creationTime = registerOutput<String>('creationTime');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    prefix = registerOutput<String?>('prefix');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<FilesFileSystemTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FilesFileSystemTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
