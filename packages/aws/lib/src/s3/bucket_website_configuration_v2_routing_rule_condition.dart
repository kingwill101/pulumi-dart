// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationV2RoutingRuleCondition {
  /// HTTP error code when the redirect is applied. If specified with `key_prefix_equals`, then both must be true for the redirect to be applied.
  final String? httpErrorCodeReturnedEquals;

  /// Object key name prefix when the redirect is applied. If specified with `http_error_code_returned_equals`, then both must be true for the redirect to be applied.
  final String? keyPrefixEquals;

  /// Creates a new [BucketWebsiteConfigurationV2RoutingRuleCondition].
  /// [httpErrorCodeReturnedEquals] HTTP error code when the redirect is applied. If specified with `key_prefix_equals`, then both must be true for the redirect to be applied.
  /// [keyPrefixEquals] Object key name prefix when the redirect is applied. If specified with `http_error_code_returned_equals`, then both must be true for the redirect to be applied.
  BucketWebsiteConfigurationV2RoutingRuleCondition({
    this.httpErrorCodeReturnedEquals,
    this.keyPrefixEquals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpErrorCodeReturnedEquals': ?httpErrorCodeReturnedEquals,
      'keyPrefixEquals': ?keyPrefixEquals,
    };
  }

  factory BucketWebsiteConfigurationV2RoutingRuleCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketWebsiteConfigurationV2RoutingRuleCondition(
      httpErrorCodeReturnedEquals: map['httpErrorCodeReturnedEquals'] == null
          ? null
          : map['httpErrorCodeReturnedEquals'] as String,
      keyPrefixEquals: map['keyPrefixEquals'] == null
          ? null
          : map['keyPrefixEquals'] as String,
    );
  }
}
