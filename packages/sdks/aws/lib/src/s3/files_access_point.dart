import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_access_point_args.dart';
import 'files_access_point_state.dart';
import 'files_access_point_timeouts.dart';

/// Manages an S3 Files Access Point.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.FilesAccessPoint("example", {
///     fileSystemId: exampleAwsS3filesFileSystem.id,
///     posixUsers: [{
///         gid: 1001,
///         uid: 1001,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.FilesAccessPoint("example",
///     file_system_id=example_aws_s3files_file_system["id"],
///     posix_users=[{
///         "gid": 1001,
///         "uid": 1001,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.FilesAccessPoint("example", new()
///     {
///         FileSystemId = exampleAwsS3filesFileSystem.Id,
///         PosixUsers = new[]
///         {
///             new Aws.S3.Inputs.FilesAccessPointPosixUserArgs
///             {
///                 Gid = 1001,
///                 Uid = 1001,
///             },
///         },
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
/// 		_, err := s3.NewFilesAccessPoint(ctx, "example", &s3.FilesAccessPointArgs{
/// 			FileSystemId: pulumi.Any(exampleAwsS3filesFileSystem.Id),
/// 			PosixUsers: s3.FilesAccessPointPosixUserArray{
/// 				&s3.FilesAccessPointPosixUserArgs{
/// 					Gid: pulumi.Int(1001),
/// 					Uid: pulumi.Int(1001),
/// 				},
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
/// resource "aws_s3_filesaccesspoint" "example" {
///   file_system_id = exampleAwsS3filesFileSystem.id
///   posix_users {
///     gid = 1001
///     uid = 1001
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.FilesAccessPoint;
/// import com.pulumi.aws.s3.FilesAccessPointArgs;
/// import com.pulumi.aws.s3.inputs.FilesAccessPointPosixUserArgs;
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
///         var example = new FilesAccessPoint("example", FilesAccessPointArgs.builder()
///             .fileSystemId(exampleAwsS3filesFileSystem.id())
///             .posixUsers(FilesAccessPointPosixUserArgs.builder()
///                 .gid(1001)
///                 .uid(1001)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:FilesAccessPoint
///     properties:
///       fileSystemId: ${exampleAwsS3filesFileSystem.id}
///       posixUsers:
///         - gid: 1001
///           uid: 1001
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - Identifier of the access point.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 Files Access Point using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/filesAccessPoint:FilesAccessPoint example fsap-1234567890abcdef0
/// ```
class FilesAccessPoint extends pulumi.CustomResource {
  /// ARN of the access point.
  late final pulumi.Output<String> arn;
  /// File system ID. Changing this value forces replacement.
  late final pulumi.Output<String> fileSystemId;
  /// Access point name.
  late final pulumi.Output<String> name;
  /// AWS account ID of the owner.
  late final pulumi.Output<String> ownerId;
  /// POSIX user configuration. See `posixUser` below. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<Map<String, dynamic>>?> posixUsers;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Root directory configuration. See `rootDirectory` below. Changing this value forces replacement.
  late final pulumi.Output<List<Map<String, dynamic>>?> rootDirectories;
  /// Access point status.
  late final pulumi.Output<String> status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<FilesAccessPointTimeouts?> timeouts;

  /// Creates a new [FilesAccessPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FilesAccessPoint]. {@macro pulumi_s3_files_access_point_files_access_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FilesAccessPoint(
    String name, {
    FilesAccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesAccessPoint:FilesAccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    fileSystemId = registerOutput<String>('fileSystemId');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    posixUsers = registerOutput<List<Map<String, dynamic>>?>('posixUsers');
    region = registerOutput<String>('region');
    rootDirectories = registerOutput<List<Map<String, dynamic>>?>('rootDirectories');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<FilesAccessPointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FilesAccessPointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FilesAccessPoint] resource's state with the given [name] and [id].
  static FilesAccessPoint get(
    String name,
    pulumi.Input<String> id, {
    FilesAccessPointState? state,
  }) {
    return FilesAccessPoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FilesAccessPoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesAccessPoint:FilesAccessPoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    fileSystemId = registerOutput<String>('fileSystemId');
    this.name = registerOutput<String>('name');
    ownerId = registerOutput<String>('ownerId');
    posixUsers = registerOutput<List<Map<String, dynamic>>?>('posixUsers');
    region = registerOutput<String>('region');
    rootDirectories = registerOutput<List<Map<String, dynamic>>?>('rootDirectories');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<FilesAccessPointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FilesAccessPointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
