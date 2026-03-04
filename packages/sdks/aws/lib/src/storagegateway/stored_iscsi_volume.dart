import 'package:pulumi/pulumi.dart' as pulumi;
import 'stored_iscsi_volume_args.dart';
import 'stored_iscsi_volume_state.dart';

/// Manages an AWS Storage Gateway stored iSCSI volume.
///
/// &gt; **NOTE:** The gateway must have a working storage added (e.g., via the `aws.storagegateway.WorkingStorage` resource) before the volume is operational to clients, however the Storage Gateway API will allow volume creation without error in that case and return volume status as `WORKING STORAGE NOT CONFIGURED`.
///
/// ## Example Usage
///
/// ### Create Empty Stored iSCSI Volume
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.StoredIscsiVolume("example", {
///     gatewayArn: exampleAwsStoragegatewayCache.gatewayArn,
///     networkInterfaceId: exampleAwsInstance.privateIp,
///     targetName: "example",
///     preserveExistingData: false,
///     diskId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.StoredIscsiVolume("example",
///     gateway_arn=example_aws_storagegateway_cache["gatewayArn"],
///     network_interface_id=example_aws_instance["privateIp"],
///     target_name="example",
///     preserve_existing_data=False,
///     disk_id=test["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.StoredIscsiVolume("example", new()
///     {
///         GatewayArn = exampleAwsStoragegatewayCache.GatewayArn,
///         NetworkInterfaceId = exampleAwsInstance.PrivateIp,
///         TargetName = "example",
///         PreserveExistingData = false,
///         DiskId = test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagegateway.NewStoredIscsiVolume(ctx, "example", &storagegateway.StoredIscsiVolumeArgs{
/// 			GatewayArn:           pulumi.Any(exampleAwsStoragegatewayCache.GatewayArn),
/// 			NetworkInterfaceId:   pulumi.Any(exampleAwsInstance.PrivateIp),
/// 			TargetName:           pulumi.String("example"),
/// 			PreserveExistingData: pulumi.Bool(false),
/// 			DiskId:               pulumi.Any(test.Id),
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
/// import com.pulumi.aws.storagegateway.StoredIscsiVolume;
/// import com.pulumi.aws.storagegateway.StoredIscsiVolumeArgs;
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
///         var example = new StoredIscsiVolume("example", StoredIscsiVolumeArgs.builder()
///             .gatewayArn(exampleAwsStoragegatewayCache.gatewayArn())
///             .networkInterfaceId(exampleAwsInstance.privateIp())
///             .targetName("example")
///             .preserveExistingData(false)
///             .diskId(test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:StoredIscsiVolume
///     properties:
///       gatewayArn: ${exampleAwsStoragegatewayCache.gatewayArn}
///       networkInterfaceId: ${exampleAwsInstance.privateIp}
///       targetName: example
///       preserveExistingData: false
///       diskId: ${test.id}
/// ```
///
///
/// ### Create Stored iSCSI Volume From Snapshot
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.StoredIscsiVolume("example", {
///     gatewayArn: exampleAwsStoragegatewayCache.gatewayArn,
///     networkInterfaceId: exampleAwsInstance.privateIp,
///     snapshotId: exampleAwsEbsSnapshot.id,
///     targetName: "example",
///     preserveExistingData: false,
///     diskId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.StoredIscsiVolume("example",
///     gateway_arn=example_aws_storagegateway_cache["gatewayArn"],
///     network_interface_id=example_aws_instance["privateIp"],
///     snapshot_id=example_aws_ebs_snapshot["id"],
///     target_name="example",
///     preserve_existing_data=False,
///     disk_id=test["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.StoredIscsiVolume("example", new()
///     {
///         GatewayArn = exampleAwsStoragegatewayCache.GatewayArn,
///         NetworkInterfaceId = exampleAwsInstance.PrivateIp,
///         SnapshotId = exampleAwsEbsSnapshot.Id,
///         TargetName = "example",
///         PreserveExistingData = false,
///         DiskId = test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagegateway.NewStoredIscsiVolume(ctx, "example", &storagegateway.StoredIscsiVolumeArgs{
/// 			GatewayArn:           pulumi.Any(exampleAwsStoragegatewayCache.GatewayArn),
/// 			NetworkInterfaceId:   pulumi.Any(exampleAwsInstance.PrivateIp),
/// 			SnapshotId:           pulumi.Any(exampleAwsEbsSnapshot.Id),
/// 			TargetName:           pulumi.String("example"),
/// 			PreserveExistingData: pulumi.Bool(false),
/// 			DiskId:               pulumi.Any(test.Id),
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
/// import com.pulumi.aws.storagegateway.StoredIscsiVolume;
/// import com.pulumi.aws.storagegateway.StoredIscsiVolumeArgs;
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
///         var example = new StoredIscsiVolume("example", StoredIscsiVolumeArgs.builder()
///             .gatewayArn(exampleAwsStoragegatewayCache.gatewayArn())
///             .networkInterfaceId(exampleAwsInstance.privateIp())
///             .snapshotId(exampleAwsEbsSnapshot.id())
///             .targetName("example")
///             .preserveExistingData(false)
///             .diskId(test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:StoredIscsiVolume
///     properties:
///       gatewayArn: ${exampleAwsStoragegatewayCache.gatewayArn}
///       networkInterfaceId: ${exampleAwsInstance.privateIp}
///       snapshotId: ${exampleAwsEbsSnapshot.id}
///       targetName: example
///       preserveExistingData: false
///       diskId: ${test.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.StoredIscsiVolume` using the volume Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/storedIscsiVolume:StoredIscsiVolume example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678
/// ```
class StoredIscsiVolume extends pulumi.CustomResource {
  /// Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  late final pulumi.Output<String> arn;

  /// Whether mutual CHAP is enabled for the iSCSI target.
  late final pulumi.Output<bool> chapEnabled;

  /// The unique identifier for the gateway local disk that is configured as a stored volume.
  late final pulumi.Output<String> diskId;

  /// The Amazon Resource Name (ARN) of the gateway.
  late final pulumi.Output<String> gatewayArn;

  /// `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
  late final pulumi.Output<bool?> kmsEncrypted;

  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is `true`.
  late final pulumi.Output<String?> kmsKey;

  /// Logical disk number.
  late final pulumi.Output<int> lunNumber;

  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  late final pulumi.Output<String> networkInterfaceId;

  /// The port used to communicate with iSCSI targets.
  late final pulumi.Output<int> networkInterfacePort;

  /// Specify this field as `true` if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  late final pulumi.Output<bool> preserveExistingData;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  late final pulumi.Output<String?> snapshotId;

  /// Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Target Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName`.
  late final pulumi.Output<String> targetArn;

  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  late final pulumi.Output<String> targetName;

  /// A value that indicates whether a storage volume is attached to, detached from, or is in the process of detaching from a gateway.
  late final pulumi.Output<String> volumeAttachmentStatus;

  /// Volume ID, e.g., `vol-12345678`.
  late final pulumi.Output<String> volumeId;

  /// The size of the data stored on the volume in bytes.
  late final pulumi.Output<int> volumeSizeInBytes;

  /// indicates the state of the storage volume.
  late final pulumi.Output<String> volumeStatus;

  /// indicates the type of the volume.
  late final pulumi.Output<String> volumeType;

  /// Creates a new [StoredIscsiVolume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StoredIscsiVolume]. {@macro pulumi_storagegateway_stored_iscsi_volume_stored_iscsi_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StoredIscsiVolume(
    String name, {
    StoredIscsiVolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:storagegateway/storedIscsiVolume:StoredIscsiVolume',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    chapEnabled = registerOutput<bool>('chapEnabled');
    diskId = registerOutput<String>('diskId');
    gatewayArn = registerOutput<String>('gatewayArn');
    kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    kmsKey = registerOutput<String?>('kmsKey');
    lunNumber = registerOutput<int>('lunNumber');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    networkInterfacePort = registerOutput<int>('networkInterfacePort');
    preserveExistingData = registerOutput<bool>('preserveExistingData');
    region = registerOutput<String>('region');
    snapshotId = registerOutput<String?>('snapshotId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
    targetName = registerOutput<String>('targetName');
    volumeAttachmentStatus = registerOutput<String>('volumeAttachmentStatus');
    volumeId = registerOutput<String>('volumeId');
    volumeSizeInBytes = registerOutput<int>('volumeSizeInBytes');
    volumeStatus = registerOutput<String>('volumeStatus');
    volumeType = registerOutput<String>('volumeType');
  }

  /// Gets an existing [StoredIscsiVolume] resource's state with the given [name] and [id].
  static StoredIscsiVolume get(
    String name,
    pulumi.Input<String> id, {
    StoredIscsiVolumeState? state,
  }) {
    return StoredIscsiVolume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StoredIscsiVolume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:storagegateway/storedIscsiVolume:StoredIscsiVolume',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    chapEnabled = registerOutput<bool>('chapEnabled');
    diskId = registerOutput<String>('diskId');
    gatewayArn = registerOutput<String>('gatewayArn');
    kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    kmsKey = registerOutput<String?>('kmsKey');
    lunNumber = registerOutput<int>('lunNumber');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    networkInterfacePort = registerOutput<int>('networkInterfacePort');
    preserveExistingData = registerOutput<bool>('preserveExistingData');
    region = registerOutput<String>('region');
    snapshotId = registerOutput<String?>('snapshotId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
    targetName = registerOutput<String>('targetName');
    volumeAttachmentStatus = registerOutput<String>('volumeAttachmentStatus');
    volumeId = registerOutput<String>('volumeId');
    volumeSizeInBytes = registerOutput<int>('volumeSizeInBytes');
    volumeStatus = registerOutput<String>('volumeStatus');
    volumeType = registerOutput<String>('volumeType');
  }
}
