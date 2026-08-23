import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_args.dart';
import 'access_point_posix_user.dart';
import 'access_point_root_directory.dart';
import 'access_point_state.dart';

/// Provides an Elastic File System (EFS) access point.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.efs.AccessPoint("test", {fileSystemId: foo.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.efs.AccessPoint("test", file_system_id=foo["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Efs.AccessPoint("test", new()
///     {
///         FileSystemId = foo.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := efs.NewAccessPoint(ctx, "test", &efs.AccessPointArgs{
/// 			FileSystemId: pulumi.Any(foo.Id),
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
/// resource "aws_efs_accesspoint" "test" {
///   file_system_id = foo.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.efs.AccessPoint;
/// import com.pulumi.aws.efs.AccessPointArgs;
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
///         var test = new AccessPoint("test", AccessPointArgs.builder()
///             .fileSystemId(foo.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:efs:AccessPoint
///     properties:
///       fileSystemId: ${foo.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the EFS access points using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:efs/accessPoint:AccessPoint test fsap-52a643fb
/// ```
class AccessPoint extends pulumi.CustomResource {
  /// ARN of the access point.
  late final pulumi.Output<String> arn;
  /// ARN of the file system.
  late final pulumi.Output<String> fileSystemArn;
  /// ID of the file system for which the access point is intended.
  late final pulumi.Output<String> fileSystemId;
  late final pulumi.Output<String> ownerId;
  /// Operating system user and group applied to all file system requests made using the access point. Detailed below.
  late final pulumi.Output<AccessPointPosixUser?> posixUser;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Directory on the Amazon EFS file system that the access point provides access to. Detailed below.
  late final pulumi.Output<AccessPointRootDirectory> rootDirectory;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AccessPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPoint]. {@macro pulumi_efs_access_point_access_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPoint(
    String name, {
    AccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:efs/accessPoint:AccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    fileSystemArn = registerOutput<String>('fileSystemArn');
    fileSystemId = registerOutput<String>('fileSystemId');
    ownerId = registerOutput<String>('ownerId');
    posixUser = registerOutput<AccessPointPosixUser?>('posixUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointPosixUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    rootDirectory = registerOutput<AccessPointRootDirectory>('rootDirectory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointRootDirectory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [AccessPoint] resource's state with the given [name] and [id].
  static AccessPoint get(
    String name,
    pulumi.Input<String> id, {
    AccessPointState? state,
  }) {
    return AccessPoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:efs/accessPoint:AccessPoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    fileSystemArn = registerOutput<String>('fileSystemArn');
    fileSystemId = registerOutput<String>('fileSystemId');
    ownerId = registerOutput<String>('ownerId');
    posixUser = registerOutput<AccessPointPosixUser?>('posixUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointPosixUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    rootDirectory = registerOutput<AccessPointRootDirectory>('rootDirectory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointRootDirectory.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
