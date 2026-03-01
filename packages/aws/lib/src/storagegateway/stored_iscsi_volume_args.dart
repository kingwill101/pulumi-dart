// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagegateway_stored_iscsi_volume_stored_iscsi_volume_args_doc}
/// The set of arguments for StoredIscsiVolume.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_stored_iscsi_volume_stored_iscsi_volume_args_doc}
class StoredIscsiVolumeArgs {
  /// The unique identifier for the gateway local disk that is configured as a stored volume.
  final pulumi.Input<String> diskId;
  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;
  /// `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
  final pulumi.Input<bool>? kmsEncrypted;
  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is `true`.
  final pulumi.Input<String>? kmsKey;
  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  final pulumi.Input<String> networkInterfaceId;
  /// Specify this field as `true` if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  final pulumi.Input<bool> preserveExistingData;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  final pulumi.Input<String>? snapshotId;
  /// Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  final pulumi.Input<String> targetName;

  /// Creates a new [StoredIscsiVolumeArgs].
  /// [diskId] The unique identifier for the gateway local disk that is configured as a stored volume.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [kmsEncrypted] `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
  /// [kmsKey] The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is `true`.
  /// [networkInterfaceId] The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  /// [preserveExistingData] Specify this field as `true` if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  /// [tags] Key-value mapping of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetName] The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  StoredIscsiVolumeArgs({
    required String diskId,
    required String gatewayArn,
    bool? kmsEncrypted,
    String? kmsKey,
    required String networkInterfaceId,
    required bool preserveExistingData,
    String? region,
    String? snapshotId,
    Map<String, String>? tags,
    required String targetName,
  }) :
      diskId = pulumi.Input.asInput<String>(diskId),
      gatewayArn = pulumi.Input.asInput<String>(gatewayArn),
      kmsEncrypted = pulumi.Input.asOptionalInput<bool>(kmsEncrypted),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId),
      preserveExistingData = pulumi.Input.asInput<bool>(preserveExistingData),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetName = pulumi.Input.asInput<String>(targetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': diskId,
      'gatewayArn': gatewayArn,
      'kmsEncrypted': ?kmsEncrypted,
      'kmsKey': ?kmsKey,
      'networkInterfaceId': networkInterfaceId,
      'preserveExistingData': preserveExistingData,
      'region': ?region,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
      'targetName': targetName,
    };
  }

  factory StoredIscsiVolumeArgs.fromMap(Map<String, dynamic> map) {
    return StoredIscsiVolumeArgs(
      diskId: map['diskId'] as String,
      gatewayArn: map['gatewayArn'] as String,
      kmsEncrypted: map['kmsEncrypted'] == null ? null : map['kmsEncrypted'] as bool,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      preserveExistingData: map['preserveExistingData'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetName: map['targetName'] as String,
    );
  }
}

