// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging {
  final String? key;
  /// Set the value of the Header to 1024 bytes at most. \r\n. It takes effect only when the RedirectType is set to Mirror.
  final String? value;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging].
  /// [key] Optional.
  /// [value] Set the value of the Header to 1024 bytes at most. \r\n. It takes effect only when the RedirectType is set to Mirror.
  BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

