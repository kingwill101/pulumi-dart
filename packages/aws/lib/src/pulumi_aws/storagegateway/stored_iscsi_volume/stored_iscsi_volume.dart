import 'package:pulumi/pulumi.dart' as pulumi;
import 'stored_iscsi_volume_args.dart';

/// Manages an AWS Storage Gateway stored iSCSI volume.
///
/// > **NOTE:** The gateway must have a working storage added (e.g., via the `aws.storagegateway.WorkingStorage` resource) before the volume is operational to clients, however the Storage Gateway API will allow volume creation without error in that case and return volume status as `WORKING STORAGE NOT CONFIGURED`.
///
/// ## Example Usage
///
/// ### Create Empty Stored iSCSI Volume
///
///
///
/// ### Create Stored iSCSI Volume From Snapshot
///
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
    this.arn = registerOutput<String>('arn');
    this.chapEnabled = registerOutput<bool>('chapEnabled');
    this.diskId = registerOutput<String>('diskId');
    this.gatewayArn = registerOutput<String>('gatewayArn');
    this.kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.lunNumber = registerOutput<int>('lunNumber');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.networkInterfacePort = registerOutput<int>('networkInterfacePort');
    this.preserveExistingData = registerOutput<bool>('preserveExistingData');
    this.region = registerOutput<String>('region');
    this.snapshotId = registerOutput<String?>('snapshotId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetArn = registerOutput<String>('targetArn');
    this.targetName = registerOutput<String>('targetName');
    this.volumeAttachmentStatus =
        registerOutput<String>('volumeAttachmentStatus');
    this.volumeId = registerOutput<String>('volumeId');
    this.volumeSizeInBytes = registerOutput<int>('volumeSizeInBytes');
    this.volumeStatus = registerOutput<String>('volumeStatus');
    this.volumeType = registerOutput<String>('volumeType');
  }
}
