// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionCode {
  /// The CRC-64 value of the function code package.
  final pulumi.Input<String>? checksum;
  /// The name of the OSS Bucket that stores the function code ZIP package.
  final pulumi.Input<String>? ossBucketName;
  /// The name of the OSS Object that stores the function code ZIP package.
  final pulumi.Input<String>? ossObjectName;
  /// The Base 64 encoding of the function code ZIP package.
  final pulumi.Input<String>? zipFile;

  /// Creates a new [V3FunctionCode].
  /// [checksum] The CRC-64 value of the function code package.
  /// [ossBucketName] The name of the OSS Bucket that stores the function code ZIP package.
  /// [ossObjectName] The name of the OSS Object that stores the function code ZIP package.
  /// [zipFile] The Base 64 encoding of the function code ZIP package.
  const V3FunctionCode({
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

  factory V3FunctionCode.fromMap(Map<String, dynamic> map) {
    return V3FunctionCode(
      checksum: (() { final guardedValue = map['checksum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossBucketName: (() { final guardedValue = map['ossBucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossObjectName: (() { final guardedValue = map['ossObjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zipFile: (() { final guardedValue = map['zipFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

