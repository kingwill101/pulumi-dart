import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_access_point_attachment_args.dart';
import 's3_access_point_attachment_openzfs_configuration.dart';
import 's3_access_point_attachment_s3_access_point.dart';
import 's3_access_point_attachment_timeouts.dart';

/// Manages an Amazon FSx S3 Access Point attachment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.S3AccessPointAttachment("example", {
///     name: "example-attachment",
///     type: "OPENZFS",
///     openzfsConfiguration: {
///         volumeId: exampleAwsFsxOpenzfsVolume.id,
///         fileSystemIdentity: {
///             type: "POSIX",
///             posixUser: {
///                 uid: 1001,
///                 gid: 1001,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.S3AccessPointAttachment("example",
///     name="example-attachment",
///     type="OPENZFS",
///     openzfs_configuration={
///         "volume_id": example_aws_fsx_openzfs_volume["id"],
///         "file_system_identity": {
///             "type": "POSIX",
///             "posix_user": {
///                 "uid": 1001,
///                 "gid": 1001,
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
///     var example = new Aws.Fsx.S3AccessPointAttachment("example", new()
///     {
///         Name = "example-attachment",
///         Type = "OPENZFS",
///         OpenzfsConfiguration = new Aws.Fsx.Inputs.S3AccessPointAttachmentOpenzfsConfigurationArgs
///         {
///             VolumeId = exampleAwsFsxOpenzfsVolume.Id,
///             FileSystemIdentity = new Aws.Fsx.Inputs.S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityArgs
///             {
///                 Type = "POSIX",
///                 PosixUser = new Aws.Fsx.Inputs.S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUserArgs
///                 {
///                     Uid = 1001,
///                     Gid = 1001,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewS3AccessPointAttachment(ctx, "example", &fsx.S3AccessPointAttachmentArgs{
/// 			Name: pulumi.String("example-attachment"),
/// 			Type: pulumi.String("OPENZFS"),
/// 			OpenzfsConfiguration: &fsx.S3AccessPointAttachmentOpenzfsConfigurationArgs{
/// 				VolumeId: pulumi.Any(exampleAwsFsxOpenzfsVolume.Id),
/// 				FileSystemIdentity: &fsx.S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityArgs{
/// 					Type: pulumi.String("POSIX"),
/// 					PosixUser: &fsx.S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUserArgs{
/// 						Uid: pulumi.Int(1001),
/// 						Gid: pulumi.Int(1001),
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
/// import com.pulumi.aws.fsx.S3AccessPointAttachment;
/// import com.pulumi.aws.fsx.S3AccessPointAttachmentArgs;
/// import com.pulumi.aws.fsx.inputs.S3AccessPointAttachmentOpenzfsConfigurationArgs;
/// import com.pulumi.aws.fsx.inputs.S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityArgs;
/// import com.pulumi.aws.fsx.inputs.S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUserArgs;
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
///         var example = new S3AccessPointAttachment("example", S3AccessPointAttachmentArgs.builder()
///             .name("example-attachment")
///             .type("OPENZFS")
///             .openzfsConfiguration(S3AccessPointAttachmentOpenzfsConfigurationArgs.builder()
///                 .volumeId(exampleAwsFsxOpenzfsVolume.id())
///                 .fileSystemIdentity(S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityArgs.builder()
///                     .type("POSIX")
///                     .posixUser(S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUserArgs.builder()
///                         .uid(1001)
///                         .gid(1001)
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
///     type: aws:fsx:S3AccessPointAttachment
///     properties:
///       name: example-attachment
///       type: OPENZFS
///       openzfsConfiguration:
///         volumeId: ${exampleAwsFsxOpenzfsVolume.id}
///         fileSystemIdentity:
///           type: POSIX
///           posixUser:
///             uid: 1001
///             gid: 1001
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx S3 Access Point attachments using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/s3AccessPointAttachment:S3AccessPointAttachment example example-attachment
/// ```
class S3AccessPointAttachment extends pulumi.CustomResource {
  /// Name of the S3 access point.
  late final pulumi.Output<String> name;

  /// Configuration to use when creating and attaching an S3 access point to an FSx for OpenZFS volume. See `openzfs_configuration` Block for details.
  late final pulumi.Output<S3AccessPointAttachmentOpenzfsConfiguration>
      openzfsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// S3 access point configuration. See `s3_access_point` Block for details.
  late final pulumi.Output<S3AccessPointAttachmentS3AccessPoint?> s3AccessPoint;

  /// S3 access point's alias.
  late final pulumi.Output<String> s3AccessPointAlias;

  /// S3 access point's ARN.
  late final pulumi.Output<String> s3AccessPointArn;
  late final pulumi.Output<S3AccessPointAttachmentTimeouts?> timeouts;

  /// Type of S3 access point. Valid values: `OpenZFS`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [S3AccessPointAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [S3AccessPointAttachment]. {@macro pulumi_fsx_s3_access_point_attachment_s3_access_point_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  S3AccessPointAttachment(
    String name, {
    S3AccessPointAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/s3AccessPointAttachment:S3AccessPointAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.openzfsConfiguration =
        registerOutput<S3AccessPointAttachmentOpenzfsConfiguration>(
            'openzfsConfiguration');
    this.region = registerOutput<String>('region');
    this.s3AccessPoint =
        registerOutput<S3AccessPointAttachmentS3AccessPoint?>('s3AccessPoint');
    this.s3AccessPointAlias = registerOutput<String>('s3AccessPointAlias');
    this.s3AccessPointArn = registerOutput<String>('s3AccessPointArn');
    this.timeouts =
        registerOutput<S3AccessPointAttachmentTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
