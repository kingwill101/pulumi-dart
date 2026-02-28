// ignore_for_file: unused_element, unnecessary_cast

class ClientCloudKmsConfig {
  /// A Cloud KMS key is a named object containing one or more key versions, along
  /// with metadata for the key. A key exists on exactly one key ring tied to a
  /// specific location.
  final String key;

  /// Each version of a key contains key material used for encryption or signing.
  /// A key's version is represented by an integer, starting at 1. To decrypt data
  /// or verify a signature, you must use the same key version that was used to
  /// encrypt or sign the data.
  final String? keyVersion;

  /// Location name of the key ring, e.g. "us-west1".
  final String kmsLocation;

  /// The Google Cloud project id of the project where the kms key stored. If empty,
  /// the kms key is stored at the same project as customer's project and ecrypted
  /// with CMEK, otherwise, the kms key is stored in the tenant project and
  /// encrypted with GMEK.
  final String? kmsProjectId;

  /// A key ring organizes keys in a specific Google Cloud location and allows you to
  /// manage access control on groups of keys. A key ring's name does not need to be
  /// unique across a Google Cloud project, but must be unique within a given location.
  final String kmsRing;

  /// Creates a new [ClientCloudKmsConfig].
  /// [key] A Cloud KMS key is a named object containing one or more key versions, along
  /// [keyVersion] Each version of a key contains key material used for encryption or signing.
  /// [kmsLocation] Location name of the key ring, e.g. "us-west1".
  /// [kmsProjectId] The Google Cloud project id of the project where the kms key stored. If empty,
  /// [kmsRing] A key ring organizes keys in a specific Google Cloud location and allows you to
  ClientCloudKmsConfig({
    required this.key,
    this.keyVersion,
    required this.kmsLocation,
    this.kmsProjectId,
    required this.kmsRing,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final keyVersionValue = keyVersion;
    if (keyVersionValue != null) {
      map['keyVersion'] = keyVersionValue;
    }
    map['kmsLocation'] = kmsLocation;
    final kmsProjectIdValue = kmsProjectId;
    if (kmsProjectIdValue != null) {
      map['kmsProjectId'] = kmsProjectIdValue;
    }
    map['kmsRing'] = kmsRing;
    return map;
  }

  factory ClientCloudKmsConfig.fromMap(Map<String, dynamic> map) {
    return ClientCloudKmsConfig(
      key: map['key'] as String,
      keyVersion:
          map['keyVersion'] == null ? null : map['keyVersion'] as String,
      kmsLocation: map['kmsLocation'] as String,
      kmsProjectId:
          map['kmsProjectId'] == null ? null : map['kmsProjectId'] as String,
      kmsRing: map['kmsRing'] as String,
    );
  }
}
