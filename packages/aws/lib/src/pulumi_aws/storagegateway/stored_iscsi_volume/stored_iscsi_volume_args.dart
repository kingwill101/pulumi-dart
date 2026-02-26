// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for StoredIscsiVolume.
class StoredIscsiVolumeArgs {
  /// The unique identifier for the gateway local disk that is configured as a stored volume.
  final Input<String> diskId;

  /// The Amazon Resource Name (ARN) of the gateway.
  final Input<String> gatewayArn;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to use Amazon S3 server side encryption with your own AWS KMS key, or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to use a key managed by Amazon S3. Optional.
  final Input<bool>? kmsEncrypted;

  /// The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when <span pulumi-lang-nodejs="`kmsEncrypted`" pulumi-lang-dotnet="`KmsEncrypted`" pulumi-lang-go="`kmsEncrypted`" pulumi-lang-python="`kms_encrypted`" pulumi-lang-yaml="`kmsEncrypted`" pulumi-lang-java="`kmsEncrypted`">`kms_encrypted`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<String>? kmsKey;

  /// The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted.
  final Input<String> networkInterfaceId;

  /// Specify this field as <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume.
  final Input<bool> preserveExistingData;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The snapshot ID of the snapshot to restore as the new stored volumeE.g., `snap-1122aabb`.
  final Input<String>? snapshotId;

  /// Key-value mapping of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway.
  final Input<String> targetName;

  StoredIscsiVolumeArgs({
    required this.diskId,
    required this.gatewayArn,
    this.kmsEncrypted,
    this.kmsKey,
    required this.networkInterfaceId,
    required this.preserveExistingData,
    this.region,
    this.snapshotId,
    this.tags,
    required this.targetName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskId'] = diskId;
    map['gatewayArn'] = gatewayArn;
    final kmsEncryptedValue = kmsEncrypted;
    if (kmsEncryptedValue != null) {
      map['kmsEncrypted'] = kmsEncryptedValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    map['networkInterfaceId'] = networkInterfaceId;
    map['preserveExistingData'] = preserveExistingData;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotIdValue = snapshotId;
    if (snapshotIdValue != null) {
      map['snapshotId'] = snapshotIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetName'] = targetName;
    return map;
  }

  factory StoredIscsiVolumeArgs.fromMap(Map<String, dynamic> map) {
    return StoredIscsiVolumeArgs(
      diskId: Input.asInput<String>(map['diskId']),
      gatewayArn: Input.asInput<String>(map['gatewayArn']),
      kmsEncrypted: Input.asOptionalInput<bool>(map['kmsEncrypted']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      networkInterfaceId: Input.asInput<String>(map['networkInterfaceId']),
      preserveExistingData: Input.asInput<bool>(map['preserveExistingData']),
      region: Input.asOptionalInput<String>(map['region']),
      snapshotId: Input.asOptionalInput<String>(map['snapshotId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetName: Input.asInput<String>(map['targetName']),
    );
  }
}
