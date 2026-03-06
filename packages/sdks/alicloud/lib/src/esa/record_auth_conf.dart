// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordAuthConf {
  /// The access key of the account to which the origin server belongs. This parameter is required when the SourceType is OSS, and AuthType is private_cross_account, or when the SourceType is S3 and AuthType is private.
  final pulumi.Input<String>? accessKey;
  /// The authentication type of the origin server. Different origins support different authentication types. The type of origin refers to the SourceType parameter in this operation. If the type of origin is OSS or S3, you must specify the authentication type of the origin. Valid values:
  final pulumi.Input<String>? authType;
  /// The region of the origin. If the origin type is S3, you must specify this value. You can get the region information from the official website of S3.
  final pulumi.Input<String>? region;
  /// The secret access key of the account to which the origin server belongs. This parameter is required when the SourceType is OSS, and AuthType is private_same_account, or when the SourceType is S3 and AuthType is private.
  final pulumi.Input<String>? secretKey;
  /// The version of the signature algorithm. This parameter is required when the origin type is S3 and AuthType is private. The following two types are supported:
  final pulumi.Input<String>? version;

  /// Creates a new [RecordAuthConf].
  /// [accessKey] The access key of the account to which the origin server belongs. This parameter is required when the SourceType is OSS, and AuthType is private_cross_account, or when the SourceType is S3 and AuthType is private.
  /// [authType] The authentication type of the origin server. Different origins support different authentication types. The type of origin refers to the SourceType parameter in this operation. If the type of origin is OSS or S3, you must specify the authentication type of the origin. Valid values:
  /// [region] The region of the origin. If the origin type is S3, you must specify this value. You can get the region information from the official website of S3.
  /// [secretKey] The secret access key of the account to which the origin server belongs. This parameter is required when the SourceType is OSS, and AuthType is private_same_account, or when the SourceType is S3 and AuthType is private.
  /// [version] The version of the signature algorithm. This parameter is required when the origin type is S3 and AuthType is private. The following two types are supported:
  const RecordAuthConf({
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
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretKey: (() { final guardedValue = map['secretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

