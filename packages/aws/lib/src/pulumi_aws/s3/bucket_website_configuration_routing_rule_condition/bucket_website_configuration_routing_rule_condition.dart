// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationRoutingRuleCondition {
  /// HTTP error code when the redirect is applied. If specified with `key_prefix_equals`, then both must be true for the redirect to be applied.
  final String? httpErrorCodeReturnedEquals;

  /// Object key name prefix when the redirect is applied. If specified with `http_error_code_returned_equals`, then both must be true for the redirect to be applied.
  final String? keyPrefixEquals;

  BucketWebsiteConfigurationRoutingRuleCondition({
    this.httpErrorCodeReturnedEquals,
    this.keyPrefixEquals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpErrorCodeReturnedEqualsValue = httpErrorCodeReturnedEquals;
    if (httpErrorCodeReturnedEqualsValue != null) {
      map['httpErrorCodeReturnedEquals'] = httpErrorCodeReturnedEqualsValue;
    }
    final keyPrefixEqualsValue = keyPrefixEquals;
    if (keyPrefixEqualsValue != null) {
      map['keyPrefixEquals'] = keyPrefixEqualsValue;
    }
    return map;
  }

  factory BucketWebsiteConfigurationRoutingRuleCondition.fromMap(
      Map<String, dynamic> map) {
    return BucketWebsiteConfigurationRoutingRuleCondition(
      httpErrorCodeReturnedEquals: map['httpErrorCodeReturnedEquals'] == null
          ? null
          : map['httpErrorCodeReturnedEquals'] as String,
      keyPrefixEquals: map['keyPrefixEquals'] == null
          ? null
          : map['keyPrefixEquals'] as String,
    );
  }
}
