import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_fsx_ontap_file_system_args.dart';
import 'location_fsx_ontap_file_system_protocol.dart';
import 'location_fsx_ontap_file_system_state.dart';

/// Resource for managing an AWS DataSync Location FSx Ontap File System.
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
/// const test = new aws.datasync.LocationFsxOntapFileSystem("test", {
///     fsxFilesystemArn: testAwsFsxOntapFileSystem.arn,
///     securityGroupArns: [testAwsSecurityGroup.arn],
///     storageVirtualMachineArn: testAwsFsxOntapStorageVirtualMachine.arn,
///     protocol: {
///         nfs: {
///             mountOptions: {
///                 version: "NFS3",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.datasync.LocationFsxOntapFileSystem("test",
///     fsx_filesystem_arn=test_aws_fsx_ontap_file_system["arn"],
///     security_group_arns=[test_aws_security_group["arn"]],
///     storage_virtual_machine_arn=test_aws_fsx_ontap_storage_virtual_machine["arn"],
///     protocol={
///         "nfs": {
///             "mount_options": {
///                 "version": "NFS3",
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
///     var test = new Aws.DataSync.LocationFsxOntapFileSystem("test", new()
///     {
///         FsxFilesystemArn = testAwsFsxOntapFileSystem.Arn,
///         SecurityGroupArns = new[]
///         {
///             testAwsSecurityGroup.Arn,
///         },
///         StorageVirtualMachineArn = testAwsFsxOntapStorageVirtualMachine.Arn,
///         Protocol = new Aws.DataSync.Inputs.LocationFsxOntapFileSystemProtocolArgs
///         {
///             Nfs = new Aws.DataSync.Inputs.LocationFsxOntapFileSystemProtocolNfsArgs
///             {
///                 MountOptions = new Aws.DataSync.Inputs.LocationFsxOntapFileSystemProtocolNfsMountOptionsArgs
///                 {
///                     Version = "NFS3",
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
/// 		_, err := datasync.NewLocationFsxOntapFileSystem(ctx, "test", &datasync.LocationFsxOntapFileSystemArgs{
/// 			FsxFilesystemArn: testAwsFsxOntapFileSystem.Arn,
/// 			SecurityGroupArns: pulumi.StringArray{
/// 				testAwsSecurityGroup.Arn,
/// 			},
/// 			StorageVirtualMachineArn: pulumi.Any(testAwsFsxOntapStorageVirtualMachine.Arn),
/// 			Protocol: &datasync.LocationFsxOntapFileSystemProtocolArgs{
/// 				Nfs: &datasync.LocationFsxOntapFileSystemProtocolNfsArgs{
/// 					MountOptions: &datasync.LocationFsxOntapFileSystemProtocolNfsMountOptionsArgs{
/// 						Version: pulumi.String("NFS3"),
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
/// import com.pulumi.aws.datasync.LocationFsxOntapFileSystem;
/// import com.pulumi.aws.datasync.LocationFsxOntapFileSystemArgs;
/// import com.pulumi.aws.datasync.inputs.LocationFsxOntapFileSystemProtocolArgs;
/// import com.pulumi.aws.datasync.inputs.LocationFsxOntapFileSystemProtocolNfsArgs;
/// import com.pulumi.aws.datasync.inputs.LocationFsxOntapFileSystemProtocolNfsMountOptionsArgs;
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
///         var test = new LocationFsxOntapFileSystem("test", LocationFsxOntapFileSystemArgs.builder()
///             .fsxFilesystemArn(testAwsFsxOntapFileSystem.arn())
///             .securityGroupArns(testAwsSecurityGroup.arn())
///             .storageVirtualMachineArn(testAwsFsxOntapStorageVirtualMachine.arn())
///             .protocol(LocationFsxOntapFileSystemProtocolArgs.builder()
///                 .nfs(LocationFsxOntapFileSystemProtocolNfsArgs.builder()
///                     .mountOptions(LocationFsxOntapFileSystemProtocolNfsMountOptionsArgs.builder()
///                         .version("NFS3")
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
///   test:
///     type: aws:datasync:LocationFsxOntapFileSystem
///     properties:
///       fsxFilesystemArn: ${testAwsFsxOntapFileSystem.arn}
///       securityGroupArns:
///         - ${testAwsSecurityGroup.arn}
///       storageVirtualMachineArn: ${testAwsFsxOntapStorageVirtualMachine.arn}
///       protocol:
///         nfs:
///           mountOptions:
///             version: NFS3
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datasync.LocationFsxOntapFileSystem` using the `DataSync-ARN#FSx-ontap-svm-ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationFsxOntapFileSystem:LocationFsxOntapFileSystem example arn:aws:datasync:us-west-2:123456789012:location/loc-12345678901234567#arn:aws:fsx:us-west-2:123456789012:storage-virtual-machine/svm-12345678abcdef123
/// ```
class LocationFsxOntapFileSystem extends pulumi.CustomResource {
  /// ARN of the DataSync Location for the FSx Ontap File System.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String> creationTime;
  /// ARN of the FSx Ontap File System.
  late final pulumi.Output<String> fsxFilesystemArn;
  /// The data transfer protocol that DataSync uses to access your Amazon FSx file system. See Protocol below.
  late final pulumi.Output<LocationFsxOntapFileSystemProtocol> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The security groups that provide access to your file system's preferred subnet. The security groups must allow outbbound traffic on the following ports (depending on the protocol you use):
  /// * Network File System (NFS): TCP ports 111, 635, and 2049
  /// * Server Message Block (SMB): TCP port 445
  late final pulumi.Output<List<String>> securityGroupArns;
  /// The ARN of the SVM in your file system where you want to copy data to of from.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> storageVirtualMachineArn;
  /// Path to the file share in the SVM where you'll copy your data. You can specify a junction path (also known as a mount point), qtree path (for NFS file shares), or share name (for SMB file shares) (e.g. `/vol1`, `/vol1/tree1`, `share1`).
  late final pulumi.Output<String> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// URI of the FSx ONTAP file system location
  late final pulumi.Output<String> uri;

  /// Creates a new [LocationFsxOntapFileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocationFsxOntapFileSystem]. {@macro pulumi_datasync_location_fsx_ontap_file_system_location_fsx_ontap_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocationFsxOntapFileSystem(
    String name, {
    LocationFsxOntapFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationFsxOntapFileSystem:LocationFsxOntapFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    protocol = registerOutput<LocationFsxOntapFileSystemProtocol>('protocol', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocationFsxOntapFileSystemProtocol.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    storageVirtualMachineArn = registerOutput<String>('storageVirtualMachineArn');
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
  }

  /// Gets an existing [LocationFsxOntapFileSystem] resource's state with the given [name] and [id].
  static LocationFsxOntapFileSystem get(
    String name,
    pulumi.Input<String> id, {
    LocationFsxOntapFileSystemState? state,
  }) {
    return LocationFsxOntapFileSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocationFsxOntapFileSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationFsxOntapFileSystem:LocationFsxOntapFileSystem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    fsxFilesystemArn = registerOutput<String>('fsxFilesystemArn');
    protocol = registerOutput<LocationFsxOntapFileSystemProtocol>('protocol', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocationFsxOntapFileSystemProtocol.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    securityGroupArns = registerOutput<List<String>>('securityGroupArns');
    storageVirtualMachineArn = registerOutput<String>('storageVirtualMachineArn');
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
  }
}
