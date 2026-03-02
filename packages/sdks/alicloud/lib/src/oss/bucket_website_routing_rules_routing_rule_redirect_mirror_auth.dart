// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth {
  /// Mirror back-to-source source Station back-to-source AK
  final pulumi.Input<String>? accessKeyId;
  /// Mirroring back to the source station back to the source SK will be automatically desensitized when obtaining the configuration.
  final pulumi.Input<String>? accessKeySecret;
  /// Authentication type of mirror return Source
  final pulumi.Input<String>? authType;
  /// Signature Region
  final pulumi.Input<String>? region;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth].
  /// [accessKeyId] Mirror back-to-source source Station back-to-source AK
  /// [accessKeySecret] Mirroring back to the source station back to the source SK will be automatically desensitized when obtaining the configuration.
  /// [authType] Authentication type of mirror return Source
  /// [region] Signature Region
  BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth({
    this.accessKeyId,
    this.accessKeySecret,
    this.authType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'accessKeySecret': ?accessKeySecret,
      'authType': ?authType,
      'region': ?region,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId']! as String).input(),
      accessKeySecret: map['accessKeySecret'] == null ? null : (map['accessKeySecret']! as String).input(),
      authType: map['authType'] == null ? null : (map['authType']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

