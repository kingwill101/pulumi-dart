// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OriginPoolOriginAuthConf {
  /// The AccessKey to be passed when AuthType is set to private_cross_account or private.
  final pulumi.Input<String>? accessKey;
  /// Authentication type.
  final pulumi.Input<String>? authType;
  /// The Region of the source station to be transmitted when the source station is AWS S3.
  final pulumi.Input<String>? region;
  /// The SecretKey to be passed when AuthType is set to private_cross_account or private.
  final pulumi.Input<String>? secretKey;
  /// The signature version to be transmitted when the source station is AWS S3.
  final pulumi.Input<String>? version;

  /// Creates a new [OriginPoolOriginAuthConf].
  /// [accessKey] The AccessKey to be passed when AuthType is set to private_cross_account or private.
  /// [authType] Authentication type.
  /// [region] The Region of the source station to be transmitted when the source station is AWS S3.
  /// [secretKey] The SecretKey to be passed when AuthType is set to private_cross_account or private.
  /// [version] The signature version to be transmitted when the source station is AWS S3.
  const OriginPoolOriginAuthConf({
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
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretKey: (() { final guardedValue = map['secretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

