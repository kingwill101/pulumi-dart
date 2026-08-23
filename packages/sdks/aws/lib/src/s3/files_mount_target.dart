import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_mount_target_args.dart';
import 'files_mount_target_state.dart';
import 'files_mount_target_timeouts.dart';

/// Manages an S3 Files Mount Target.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.FilesMountTarget("example", {
///     fileSystemId: exampleAwsS3filesFileSystem.id,
///     subnetId: exampleAwsSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.FilesMountTarget("example",
///     file_system_id=example_aws_s3files_file_system["id"],
///     subnet_id=example_aws_subnet["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.FilesMountTarget("example", new()
///     {
///         FileSystemId = exampleAwsS3filesFileSystem.Id,
///         SubnetId = exampleAwsSubnet.Id,
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
/// 		_, err := s3.NewFilesMountTarget(ctx, "example", &s3.FilesMountTargetArgs{
/// 			FileSystemId: pulumi.Any(exampleAwsS3filesFileSystem.Id),
/// 			SubnetId:     pulumi.Any(exampleAwsSubnet.Id),
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
/// resource "aws_s3_filesmounttarget" "example" {
///   file_system_id = exampleAwsS3filesFileSystem.id
///   subnet_id      = exampleAwsSubnet.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.FilesMountTarget;
/// import com.pulumi.aws.s3.FilesMountTargetArgs;
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
///         var example = new FilesMountTarget("example", FilesMountTargetArgs.builder()
///             .fileSystemId(exampleAwsS3filesFileSystem.id())
///             .subnetId(exampleAwsSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:FilesMountTarget
///     properties:
///       fileSystemId: ${exampleAwsS3filesFileSystem.id}
///       subnetId: ${exampleAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - Identifier of the mount target.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 Files Mount Target using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/filesMountTarget:FilesMountTarget example fsmt-1234567890abcdef0
/// ```
class FilesMountTarget extends pulumi.CustomResource {
  /// Availability Zone ID.
  late final pulumi.Output<String> availabilityZoneId;
  /// File system ID. Changing this value forces replacement.
  late final pulumi.Output<String> fileSystemId;
  /// IP address type.
  late final pulumi.Output<String?> ipAddressType;
  /// IPv4 address.
  late final pulumi.Output<String> ipv4Address;
  /// IPv6 address.
  late final pulumi.Output<String> ipv6Address;
  /// Network interface ID.
  late final pulumi.Output<String> networkInterfaceId;
  /// AWS account ID of the owner.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Security group IDs.
  late final pulumi.Output<List<String>> securityGroups;
  /// Mount target status.
  late final pulumi.Output<String> status;
  /// Status message.
  late final pulumi.Output<String> statusMessage;
  /// Subnet ID. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> subnetId;
  late final pulumi.Output<FilesMountTargetTimeouts?> timeouts;
  /// VPC ID.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [FilesMountTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FilesMountTarget]. {@macro pulumi_s3_files_mount_target_files_mount_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FilesMountTarget(
    String name, {
    FilesMountTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesMountTarget:FilesMountTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    fileSystemId = registerOutput<String>('fileSystemId');
    ipAddressType = registerOutput<String?>('ipAddressType');
    ipv4Address = registerOutput<String>('ipv4Address');
    ipv6Address = registerOutput<String>('ipv6Address');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    subnetId = registerOutput<String>('subnetId');
    timeouts = registerOutput<FilesMountTargetTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FilesMountTargetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [FilesMountTarget] resource's state with the given [name] and [id].
  static FilesMountTarget get(
    String name,
    pulumi.Input<String> id, {
    FilesMountTargetState? state,
  }) {
    return FilesMountTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FilesMountTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/filesMountTarget:FilesMountTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    fileSystemId = registerOutput<String>('fileSystemId');
    ipAddressType = registerOutput<String?>('ipAddressType');
    ipv4Address = registerOutput<String>('ipv4Address');
    ipv6Address = registerOutput<String>('ipv6Address');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    securityGroups = registerOutput<List<String>>('securityGroups');
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    subnetId = registerOutput<String>('subnetId');
    timeouts = registerOutput<FilesMountTargetTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FilesMountTargetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcId = registerOutput<String>('vpcId');
  }
}
