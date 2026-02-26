import 'package:pulumi/pulumi.dart';
import 'stored_iscsi_volume_args.dart';

/// Manages an AWS Storage Gateway stored iSCSI volume.
///
/// > **NOTE:** The gateway must have a working storage added (e.g., via the <span pulumi-lang-nodejs="`aws.storagegateway.WorkingStorage`" pulumi-lang-dotnet="`aws.storagegateway.WorkingStorage`" pulumi-lang-go="`storagegateway.WorkingStorage`" pulumi-lang-python="`storagegateway.WorkingStorage`" pulumi-lang-yaml="`aws.storagegateway.WorkingStorage`" pulumi-lang-java="`aws.storagegateway.WorkingStorage`">`aws.storagegateway.WorkingStorage`</span> resource) before the volume is operational to clients, however the Storage Gateway API will allow volume creation without error in that case and return volume status as `WORKING STORAGE NOT CONFIGURED`.
///
/// ## Example Usage
///
/// ### Create Empty Stored iSCSI Volume
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.StoredIscsiVolume("example", {
/// gatewayArn: exampleAwsStoragegatewayCache.gatewayArn,
/// networkInterfaceId: exampleAwsInstance.privateIp,
/// targetName: "example",
/// preserveExistingData: false,
/// diskId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.StoredIscsiVolume("example",
/// gateway_arn=example_aws_storagegateway_cache["gatewayArn"],
/// network_interface_id=example_aws_instance["privateIp"],
/// target_name="example",
/// preserve_existing_data=False,
/// disk_id=test["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.StoredIscsiVolume("example", new()
/// {
/// GatewayArn = exampleAwsStoragegatewayCache.GatewayArn,
/// NetworkInterfaceId = exampleAwsInstance.PrivateIp,
/// TargetName = "example",
/// PreserveExistingData = false,
/// DiskId = test.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storagegateway.NewStoredIscsiVolume(ctx, "example", &storagegateway.StoredIscsiVolumeArgs{
/// GatewayArn:           pulumi.Any(exampleAwsStoragegatewayCache.GatewayArn),
/// NetworkInterfaceId:   pulumi.Any(exampleAwsInstance.PrivateIp),
/// TargetName:           pulumi.String("example"),
/// PreserveExistingData: pulumi.Bool(false),
/// DiskId:               pulumi.Any(test.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new StoredIscsiVolume("example", StoredIscsiVolumeArgs.builder()
/// .gatewayArn(exampleAwsStoragegatewayCache.gatewayArn())
/// .networkInterfaceId(exampleAwsInstance.privateIp())
/// .targetName("example")
/// .preserveExistingData(false)
/// .diskId(test.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:StoredIscsiVolume
/// properties:
/// gatewayArn: ${exampleAwsStoragegatewayCache.gatewayArn}
/// networkInterfaceId: ${exampleAwsInstance.privateIp}
/// targetName: example
/// preserveExistingData: false
/// diskId: ${test.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Create Stored iSCSI Volume From Snapshot
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.StoredIscsiVolume("example", {
/// gatewayArn: exampleAwsStoragegatewayCache.gatewayArn,
/// networkInterfaceId: exampleAwsInstance.privateIp,
/// snapshotId: exampleAwsEbsSnapshot.id,
/// targetName: "example",
/// preserveExistingData: false,
/// diskId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.StoredIscsiVolume("example",
/// gateway_arn=example_aws_storagegateway_cache["gatewayArn"],
/// network_interface_id=example_aws_instance["privateIp"],
/// snapshot_id=example_aws_ebs_snapshot["id"],
/// target_name="example",
/// preserve_existing_data=False,
/// disk_id=test["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.StoredIscsiVolume("example", new()
/// {
/// GatewayArn = exampleAwsStoragegatewayCache.GatewayArn,
/// NetworkInterfaceId = exampleAwsInstance.PrivateIp,
/// SnapshotId = exampleAwsEbsSnapshot.Id,
/// TargetName = "example",
/// PreserveExistingData = false,
/// DiskId = test.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storagegateway.NewStoredIscsiVolume(ctx, "example", &storagegateway.StoredIscsiVolumeArgs{
/// GatewayArn:           pulumi.Any(exampleAwsStoragegatewayCache.GatewayArn),
/// NetworkInterfaceId:   pulumi.Any(exampleAwsInstance.PrivateIp),
/// SnapshotId:           pulumi.Any(exampleAwsEbsSnapshot.Id),
/// TargetName:           pulumi.String("example"),
/// PreserveExistingData: pulumi.Bool(false),
/// DiskId:               pulumi.Any(test.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new StoredIscsiVolume("example", StoredIscsiVolumeArgs.builder()
/// .gatewayArn(exampleAwsStoragegatewayCache.gatewayArn())
/// .networkInterfaceId(exampleAwsInstance.privateIp())
/// .snapshotId(exampleAwsEbsSnapshot.id())
/// .targetName("example")
/// .preserveExistingData(false)
/// .diskId(test.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:StoredIscsiVolume
/// properties:
/// gatewayArn: ${exampleAwsStoragegatewayCache.gatewayArn}
/// networkInterfaceId: ${exampleAwsInstance.privateIp}
/// snapshotId: ${exampleAwsEbsSnapshot.id}
/// targetName: example
/// preserveExistingData: false
/// diskId: ${test.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.storagegateway.StoredIscsiVolume`" pulumi-lang-dotnet="`aws.storagegateway.StoredIscsiVolume`" pulumi-lang-go="`storagegateway.StoredIscsiVolume`" pulumi-lang-python="`storagegateway.StoredIscsiVolume`" pulumi-lang-yaml="`aws.storagegateway.StoredIscsiVolume`" pulumi-lang-java="`aws.storagegateway.StoredIscsiVolume`">`aws.storagegateway.StoredIscsiVolume`</span> using the volume Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/storedIscsiVolume:StoredIscsiVolume example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678
/// ```
class StoredIscsiVolume extends CustomResource {
  /// Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  late final Output<String> arn;

  /// Whether mutual CHAP is enabled for the iSCSI target.
  late final Output<bool> chapEnabled;

  /// The unique identifier for the gateway local disk that is configured as a stored volume.
  late final Output<String> diskId;

  /// The Amazon Resource Name (ARN) of the gateway.
  late final Output<String> gatewayArn;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to use Amazon S3 server side encryption with your own AWS KMS key, or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to use a key managed by Amazon S3. Optional.
  late final Output<bool?> kmsEncrypted;

  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when <span pulumi-lang-nodejs="`kmsEncrypted`" pulumi-lang-dotnet="`KmsEncrypted`" pulumi-lang-go="`kmsEncrypted`" pulumi-lang-python="`kms_encrypted`" pulumi-lang-yaml="`kmsEncrypted`" pulumi-lang-java="`kmsEncrypted`">`kms_encrypted`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<String?> kmsKey;

  /// Logical disk number.
  late final Output<int> lunNumber;

  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  late final Output<String> networkInterfaceId;

  /// The port used to communicate with iSCSI targets.
  late final Output<int> networkInterfacePort;

  /// Specify this field as <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  late final Output<bool> preserveExistingData;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  late final Output<String?> snapshotId;

  /// Key-value mapping of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Target Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName`.
  late final Output<String> targetArn;

  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  late final Output<String> targetName;

  /// A value that indicates whether a storage volume is attached to, detached from, or is in the process of detaching from a gateway.
  late final Output<String> volumeAttachmentStatus;

  /// Volume ID, e.g., `vol-12345678`.
  late final Output<String> volumeId;

  /// The size of the data stored on the volume in bytes.
  late final Output<int> volumeSizeInBytes;

  /// indicates the state of the storage volume.
  late final Output<String> volumeStatus;

  /// indicates the type of the volume.
  late final Output<String> volumeType;

  StoredIscsiVolume(
    String name, {
    StoredIscsiVolumeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/storedIscsiVolume:StoredIscsiVolume',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.chapEnabled = Output.createUnknown<bool>();
    this.diskId = Output.createUnknown<String>();
    this.gatewayArn = Output.createUnknown<String>();
    this.kmsEncrypted = Output.createUnknown<bool?>();
    this.kmsKey = Output.createUnknown<String?>();
    this.lunNumber = Output.createUnknown<int>();
    this.networkInterfaceId = Output.createUnknown<String>();
    this.networkInterfacePort = Output.createUnknown<int>();
    this.preserveExistingData = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
    this.snapshotId = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targetArn = Output.createUnknown<String>();
    this.targetName = Output.createUnknown<String>();
    this.volumeAttachmentStatus = Output.createUnknown<String>();
    this.volumeId = Output.createUnknown<String>();
    this.volumeSizeInBytes = Output.createUnknown<int>();
    this.volumeStatus = Output.createUnknown<String>();
    this.volumeType = Output.createUnknown<String>();
  }
}
