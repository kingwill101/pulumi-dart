// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2FunctionCode {
  /// The OSS bucket name of the function code package.
  final pulumi.Input<String>? ossBucketName;
  /// The OSS object name of the function code package.
  final pulumi.Input<String>? ossObjectName;
  /// Upload the base64 encoding of the code zip package directly in the request body.
  final pulumi.Input<String>? zipFile;

  /// Creates a new [V2FunctionCode].
  /// [ossBucketName] The OSS bucket name of the function code package.
  /// [ossObjectName] The OSS object name of the function code package.
  /// [zipFile] Upload the base64 encoding of the code zip package directly in the request body.
  V2FunctionCode({
    this.ossBucketName,
    this.ossObjectName,
    this.zipFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ossBucketName': ?ossBucketName,
      'ossObjectName': ?ossObjectName,
      'zipFile': ?zipFile,
    };
  }

  factory V2FunctionCode.fromMap(Map<String, dynamic> map) {
    return V2FunctionCode(
      ossBucketName: map['ossBucketName'] == null ? null : (map['ossBucketName'] as String).input(),
      ossObjectName: map['ossObjectName'] == null ? null : (map['ossObjectName'] as String).input(),
      zipFile: map['zipFile'] == null ? null : (map['zipFile'] as String).input(),
    );
  }
}

