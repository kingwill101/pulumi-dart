// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging {
  final pulumi.Input<String>? key;

  /// Set the value of the Header to 1024 bytes at most. \r\n. It takes effect only when the RedirectType is set to Mirror.
  final pulumi.Input<String>? value;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging].
  /// [key] Optional.
  /// [value] Set the value of the Header to 1024 bytes at most. \r\n. It takes effect only when the RedirectType is set to Mirror.
  BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorTaggingsTagging(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
