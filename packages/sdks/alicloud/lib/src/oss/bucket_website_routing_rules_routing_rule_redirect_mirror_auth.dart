// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorAuth {
  /// Mirror back-to-source source Station back-to-source AK
  final String? accessKeyId;
  /// Mirroring back to the source station back to the source SK will be automatically desensitized when obtaining the configuration.
  final String? accessKeySecret;
  /// Authentication type of mirror return Source
  final String? authType;
  /// Signature Region
  final String? region;

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
      accessKeyId: map['accessKeyId'] == null ? null : map['accessKeyId'] as String,
      accessKeySecret: map['accessKeySecret'] == null ? null : map['accessKeySecret'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

