// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteConfigurationRoutingRuleCondition {
  /// HTTP error code when the redirect is applied. If specified with `key_prefix_equals`, then both must be true for the redirect to be applied.
  final pulumi.Input<String>? httpErrorCodeReturnedEquals;

  /// Object key name prefix when the redirect is applied. If specified with `http_error_code_returned_equals`, then both must be true for the redirect to be applied.
  final pulumi.Input<String>? keyPrefixEquals;

  /// Creates a new [BucketWebsiteConfigurationRoutingRuleCondition].
  /// [httpErrorCodeReturnedEquals] HTTP error code when the redirect is applied. If specified with `key_prefix_equals`, then both must be true for the redirect to be applied.
  /// [keyPrefixEquals] Object key name prefix when the redirect is applied. If specified with `http_error_code_returned_equals`, then both must be true for the redirect to be applied.
  BucketWebsiteConfigurationRoutingRuleCondition({
    this.httpErrorCodeReturnedEquals,
    this.keyPrefixEquals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpErrorCodeReturnedEquals': ?httpErrorCodeReturnedEquals,
      'keyPrefixEquals': ?keyPrefixEquals,
    };
  }

  factory BucketWebsiteConfigurationRoutingRuleCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketWebsiteConfigurationRoutingRuleCondition(
      httpErrorCodeReturnedEquals: (() {
        final guardedValue = map['httpErrorCodeReturnedEquals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyPrefixEquals: (() {
        final guardedValue = map['keyPrefixEquals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
