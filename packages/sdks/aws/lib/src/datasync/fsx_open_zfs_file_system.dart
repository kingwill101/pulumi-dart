import 'package:pulumi/pulumi.dart' as pulumi;
import 'fsx_open_zfs_file_system_args.dart';
import 'fsx_open_zfs_file_system_protocol.dart';
import 'fsx_open_zfs_file_system_state.dart';

/// Manages an AWS DataSync FSx OpenZfs Location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.FsxOpenZfsFileSystem("example", {
///     fsxFilesystemArn: exampleAwsFsxOpenzfsFileSystem.arn,
///     securityGroupArns: [exampleAwsSecurityGroup.arn],
///     protocol: {
///         nfs: {
///             mountOptions: {
///                 version: "AUTOMATIC",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.FsxOpenZfsFileSystem("example",
///     fsx_filesystem_arn=example_aws_fsx_openzfs_file_system["arn"],
///     security_group_arns=[example_aws_security_group["arn"]],
///     protocol={
///         "nfs": {
///             "mount_options": {
///                 "version": "AUTOMATIC",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.FsxOpenZfsFileSystem("example", new()
///     {
///         FsxFilesystemArn = exampleAwsFsxOpenzfsFileSystem.Arn,
///         SecurityGroupArns = new[]
///         {
///             exampleAwsSecurityGroup.Arn,
///         },
///         Protocol = new Aws.DataSync.Inputs.FsxOpenZfsFileSystemProtocolArgs
///         {
///             Nfs = new Aws.DataSync.Inputs.FsxOpenZfsFileSystemProtocolNfsArgs
///             {
///                 MountOptions = new Aws.DataSync.Inputs.FsxOpenZfsFileSystemProtocolNfsMountOptionsArgs
///                 {
///                     Version = "AUTOMATIC",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewFsxOpenZfsFileSystem(ctx, "example", &datasync.FsxOpenZfsFileSystemArgs{
/// 			FsxFilesystemArn: pulumi.Any(exampleAwsFsxOpenzfsFileSystem.Arn),
/// 			SecurityGroupArns: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Arn,
/// 			},
/// 			Protocol: &datasync.FsxOpenZfsFileSystemProtocolArgs{
/// 				Nfs: &datasync.FsxOpenZfsFileSystemProtocolNfsArgs{
/// 					MountOptions: &datasync.FsxOpenZfsFileSystemProtocolNfsMountOptionsArgs{
/// 						Version: pulumi.String("AUTOMATIC"),
/// 					},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.FsxOpenZfsFileSystem;
/// import com.pulumi.aws.datasync.FsxOpenZfsFileSystemArgs;
/// import com.pulumi.aws.datasync.inputs.FsxOpenZfsFileSystemProtocolArgs;
/// import com.pulumi.aws.datasync.inputs.FsxOpenZfsFileSystemProtocolNfsArgs;
/// import com.pulumi.aws.datasync.inputs.FsxOpenZfsFileSystemProtocolNfsMountOptionsArgs;
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
///         var example = new FsxOpenZfsFileSystem("example", FsxOpenZfsFileSystemArgs.builder()
///             .fsxFilesystemArn(exampleAwsFsxOpenzfsFileSystem.arn())
///             .securityGroupArns(exampleAwsSecurityGroup.arn())
///             .protocol(FsxOpenZfsFileSystemProtocolArgs.builder()
///                 .nfs(FsxOpenZfsFileSystemProtocolNfsArgs.builder()
///                     .mountOptions(FsxOpenZfsFileSystemProtocolNfsMountOptionsArgs.builder()
///                         .version("AUTOMATIC")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:FsxOpenZfsFileSystem
///     properties:
///       fsxFilesystemArn: ${exampleAwsFsxOpenzfsFileSystem.arn}
///       securityGroupArns:
///         - ${exampleAwsSecurityGroup.arn}
///       protocol:
///         nfs:
///           mountOptions:
///             version: AUTOMATIC
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datasync.FsxOpenZfsFileSystem` using the `DataSync-ARN#FSx-openzfs-ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/fsxOpenZfsFileSystem:FsxOpenZfsFileSystem example arn:aws:datasync:us-west-2:123456789012:location/loc-12345678901234567#arn:aws:fsx:us-west-2:123456789012:file-system/fs-08e04cd442c1bb94a
/// ```
class FsxOpenZfsFileSystem extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;
  /// The time that the FSx for openzfs location was created.
  late final pulumi.Output<String> creationTime;
  /// The Amazon Resource Name (ARN) for the FSx for OpenZfs file system.
  late final pulumi.Output<String> fsxFilesystemArn;
  /// The type of protocol that DataSync uses to access your file system. See below.
  late final pulumi.Output<FsxOpenZfsFileSystemProtocol> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system.
  late final pulumi.Output<List<String>> securityGroupArns;
  /// Subdirectory to perform actions as source or destination. Must start with `/fsx`.
  late final pulumi.Output<String> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The URL of the FSx for openzfs location that was described.
  late final pulumi.Output<String> uri;

  /// Creates a new [FsxOpenZfsFileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FsxOpenZfsFileSystem]. {@macro pulumi_datasync_fsx_open_zfs_file_system_fsx_open_zfs_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FsxOpenZfsFileSystem(
    String name, {
    FsxOpenZfsFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/fsxOpenZfsFileSystem:FsxOpenZfsFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    protocol = registerOutput<FsxOpenZfsFileSystemProtocol>('protocol', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FsxOpenZfsFileSystemProtocol.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
  }

  /// Gets an existing [FsxOpenZfsFileSystem] resource's state with the given [name] and [id].
  static FsxOpenZfsFileSystem get(
    String name,
    pulumi.Input<String> id, {
    FsxOpenZfsFileSystemState? state,
  }) {
    return FsxOpenZfsFileSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FsxOpenZfsFileSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/fsxOpenZfsFileSystem:FsxOpenZfsFileSystem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    protocol = registerOutput<FsxOpenZfsFileSystemProtocol>('protocol', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FsxOpenZfsFileSystemProtocol.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
  }
}
