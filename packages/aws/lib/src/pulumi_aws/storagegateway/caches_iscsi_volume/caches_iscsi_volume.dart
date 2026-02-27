import 'package:pulumi/pulumi.dart';
import 'caches_iscsi_volume_args.dart';

/// Manages an AWS Storage Gateway cached iSCSI volume.
///
/// > **NOTE:** The gateway must have cache added (e.g., via the `aws.storagegateway.Cache` resource) before creating volumes otherwise the Storage Gateway API will return an error.
///
/// > **NOTE:** The gateway must have an upload buffer added (e.g., via the `aws.storagegateway.UploadBuffer` resource) before the volume is operational to clients, however the Storage Gateway API will allow volume creation without error in that case and return volume status as `UPLOAD BUFFER NOT CONFIGURED`.
///
/// ## Example Usage
///
/// > **NOTE:** These examples are referencing the `aws.storagegateway.Cache` resource `gateway_arn` attribute to ensure this provider properly adds cache before creating the volume. If you are not using this method, you may need to declare an expicit dependency (e.g. via `depends_on = [aws_storagegateway_cache.example]`) to ensure proper ordering.
///
/// ### Create Empty Cached iSCSI Volume
///
///
///
/// ### Create Cached iSCSI Volume From Snapshot
///
///
///
/// ### Create Cached iSCSI Volume From Source Volume
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.CachesIscsiVolume` using the volume Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/cachesIscsiVolume:CachesIscsiVolume example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678
/// ```
class CachesIscsiVolume extends CustomResource {
  /// Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  late final Output<String> arn;

  /// Whether mutual CHAP is enabled for the iSCSI target.
  late final Output<bool> chapEnabled;

  /// The Amazon Resource Name (ARN) of the gateway.
  late final Output<String> gatewayArn;

  /// Set to `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3.
  late final Output<bool?> kmsEncrypted;

  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when `kms_encrypted` is set.
  late final Output<String?> kmsKey;

  /// Logical disk number.
  late final Output<int> lunNumber;

  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  late final Output<String> networkInterfaceId;

  /// The port used to communicate with iSCSI targets.
  late final Output<int> networkInterfacePort;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The snapshot ID of the snapshot to restore as the new cached volumeE.g., `snap-1122aabb`.
  late final Output<String?> snapshotId;

  /// The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The `volume_size_in_bytes` value for this new volume must be equal to or larger than the size of the existing volume, in bytes.
  late final Output<String?> sourceVolumeArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Target Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName`.
  late final Output<String> targetArn;

  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  late final Output<String> targetName;

  /// Volume Amazon Resource Name (ARN), e.g., `arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678`.
  late final Output<String> volumeArn;

  /// Volume ID, e.g., `vol-12345678`.
  late final Output<String> volumeId;

  /// The size of the volume in bytes.
  late final Output<int> volumeSizeInBytes;

  CachesIscsiVolume(
    String name, {
    CachesIscsiVolumeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/cachesIscsiVolume:CachesIscsiVolume',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.chapEnabled = registerOutput<bool>('chapEnabled');
    this.gatewayArn = registerOutput<String>('gatewayArn');
    this.kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.lunNumber = registerOutput<int>('lunNumber');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.networkInterfacePort = registerOutput<int>('networkInterfacePort');
    this.region = registerOutput<String>('region');
    this.snapshotId = registerOutput<String?>('snapshotId');
    this.sourceVolumeArn = registerOutput<String?>('sourceVolumeArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetArn = registerOutput<String>('targetArn');
    this.targetName = registerOutput<String>('targetName');
    this.volumeArn = registerOutput<String>('volumeArn');
    this.volumeId = registerOutput<String>('volumeId');
    this.volumeSizeInBytes = registerOutput<int>('volumeSizeInBytes');
  }
}
