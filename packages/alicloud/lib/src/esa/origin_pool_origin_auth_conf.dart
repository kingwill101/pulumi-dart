// ignore_for_file: unused_element, unnecessary_cast


class OriginPoolOriginAuthConf {
  /// The AccessKey to be passed when AuthType is set to private_cross_account or private.
  final String? accessKey;
  /// Authentication type.
  final String? authType;
  /// The Region of the source station to be transmitted when the source station is AWS S3.
  final String? region;
  /// The SecretKey to be passed when AuthType is set to private_cross_account or private.
  final String? secretKey;
  /// The signature version to be transmitted when the source station is AWS S3.
  final String? version;

  /// Creates a new [OriginPoolOriginAuthConf].
  /// [accessKey] The AccessKey to be passed when AuthType is set to private_cross_account or private.
  /// [authType] Authentication type.
  /// [region] The Region of the source station to be transmitted when the source station is AWS S3.
  /// [secretKey] The SecretKey to be passed when AuthType is set to private_cross_account or private.
  /// [version] The signature version to be transmitted when the source station is AWS S3.
  OriginPoolOriginAuthConf({
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

  factory OriginPoolOriginAuthConf.fromMap(Map<String, dynamic> map) {
    return OriginPoolOriginAuthConf(
      accessKey: map['accessKey'] == null ? null : map['accessKey'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secretKey: map['secretKey'] == null ? null : map['secretKey'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

