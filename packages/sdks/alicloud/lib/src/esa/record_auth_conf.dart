// ignore_for_file: unused_element, unnecessary_cast


class RecordAuthConf {
  /// The access key of the account to which the origin server belongs. This parameter is required when the SourceType is OSS, and AuthType is private_cross_account, or when the SourceType is S3 and AuthType is private.
  final String? accessKey;
  /// The authentication type of the origin server. Different origins support different authentication types. The type of origin refers to the SourceType parameter in this operation. If the type of origin is OSS or S3, you must specify the authentication type of the origin. Valid values:
  final String? authType;
  /// The region of the origin. If the origin type is S3, you must specify this value. You can get the region information from the official website of S3.
  final String? region;
  /// The secret access key of the account to which the origin server belongs. This parameter is required when the SourceType is OSS, and AuthType is private_same_account, or when the SourceType is S3 and AuthType is private.
  final String? secretKey;
  /// The version of the signature algorithm. This parameter is required when the origin type is S3 and AuthType is private. The following two types are supported:
  final String? version;

  /// Creates a new [RecordAuthConf].
  /// [accessKey] The access key of the account to which the origin server belongs. This parameter is required when the SourceType is OSS, and AuthType is private_cross_account, or when the SourceType is S3 and AuthType is private.
  /// [authType] The authentication type of the origin server. Different origins support different authentication types. The type of origin refers to the SourceType parameter in this operation. If the type of origin is OSS or S3, you must specify the authentication type of the origin. Valid values:
  /// [region] The region of the origin. If the origin type is S3, you must specify this value. You can get the region information from the official website of S3.
  /// [secretKey] The secret access key of the account to which the origin server belongs. This parameter is required when the SourceType is OSS, and AuthType is private_same_account, or when the SourceType is S3 and AuthType is private.
  /// [version] The version of the signature algorithm. This parameter is required when the origin type is S3 and AuthType is private. The following two types are supported:
  RecordAuthConf({
    this.accessKey,
    this.authType,
    this.region,
    this.secretKey,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'authType': ?authType,
      'region': ?region,
      'secretKey': ?secretKey,
      'version': ?version,
    };
  }

  factory RecordAuthConf.fromMap(Map<String, dynamic> map) {
    return RecordAuthConf(
      accessKey: map['accessKey'] == null ? null : map['accessKey'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secretKey: map['secretKey'] == null ? null : map['secretKey'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

