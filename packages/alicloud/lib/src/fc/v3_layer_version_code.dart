// ignore_for_file: unused_element, unnecessary_cast


class V3LayerVersionCode {
  /// The CRC-64 value of the code package. If checksum is provided, Function Compute checks whether the checksum of the code package is consistent with the provided checksum.
  final String? checksum;
  /// Name of the OSS Bucket where the user stores the Layer Code ZIP package
  final String? ossBucketName;
  /// Name of the OSS Object where the user stores the Layer Code ZIP package
  final String? ossObjectName;
  /// Base 64 encoding of Layer Code ZIP package
  final String? zipFile;

  /// Creates a new [V3LayerVersionCode].
  /// [checksum] The CRC-64 value of the code package. If checksum is provided, Function Compute checks whether the checksum of the code package is consistent with the provided checksum.
  /// [ossBucketName] Name of the OSS Bucket where the user stores the Layer Code ZIP package
  /// [ossObjectName] Name of the OSS Object where the user stores the Layer Code ZIP package
  /// [zipFile] Base 64 encoding of Layer Code ZIP package
  V3LayerVersionCode({
    this.checksum,
    this.ossBucketName,
    this.ossObjectName,
    this.zipFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': ?checksum,
      'ossBucketName': ?ossBucketName,
      'ossObjectName': ?ossObjectName,
      'zipFile': ?zipFile,
    };
  }

  factory V3LayerVersionCode.fromMap(Map<String, dynamic> map) {
    return V3LayerVersionCode(
      checksum: map['checksum'] == null ? null : map['checksum'] as String,
      ossBucketName: map['ossBucketName'] == null ? null : map['ossBucketName'] as String,
      ossObjectName: map['ossObjectName'] == null ? null : map['ossObjectName'] as String,
      zipFile: map['zipFile'] == null ? null : map['zipFile'] as String,
    );
  }
}

