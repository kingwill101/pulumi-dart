// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3LayerVersionCode {
  /// The CRC-64 value of the code package. If checksum is provided, Function Compute checks whether the checksum of the code package is consistent with the provided checksum.
  final pulumi.Input<String>? checksum;
  /// Name of the OSS Bucket where the user stores the Layer Code ZIP package
  final pulumi.Input<String>? ossBucketName;
  /// Name of the OSS Object where the user stores the Layer Code ZIP package
  final pulumi.Input<String>? ossObjectName;
  /// Base 64 encoding of Layer Code ZIP package
  final pulumi.Input<String>? zipFile;

  /// Creates a new [V3LayerVersionCode].
  /// [checksum] The CRC-64 value of the code package. If checksum is provided, Function Compute checks whether the checksum of the code package is consistent with the provided checksum.
  /// [ossBucketName] Name of the OSS Bucket where the user stores the Layer Code ZIP package
  /// [ossObjectName] Name of the OSS Object where the user stores the Layer Code ZIP package
  /// [zipFile] Base 64 encoding of Layer Code ZIP package
  const V3LayerVersionCode({
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
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossBucketName: (() { final guardedValue = map['ossBucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossObjectName: (() { final guardedValue = map['ossObjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zipFile: (() { final guardedValue = map['zipFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

