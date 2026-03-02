// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader {
  final pulumi.Input<String>? key;
  /// Set the value of the Header to 1024 bytes at most. \r\n. It takes effect only when the RedirectType is set to Mirror.
  final pulumi.Input<String>? value;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader].
  /// [key] Optional.
  /// [value] Set the value of the Header to 1024 bytes at most. \r\n. It takes effect only when the RedirectType is set to Mirror.
  BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorReturnHeadersReturnHeader(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

