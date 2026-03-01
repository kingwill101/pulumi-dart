// ignore_for_file: unused_element, unnecessary_cast


class V2FunctionCode {
  /// The OSS bucket name of the function code package.
  final String? ossBucketName;
  /// The OSS object name of the function code package.
  final String? ossObjectName;
  /// Upload the base64 encoding of the code zip package directly in the request body.
  final String? zipFile;

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
      ossBucketName: map['ossBucketName'] == null ? null : map['ossBucketName'] as String,
      ossObjectName: map['ossObjectName'] == null ? null : map['ossObjectName'] as String,
      zipFile: map['zipFile'] == null ? null : map['zipFile'] as String,
    );
  }
}

