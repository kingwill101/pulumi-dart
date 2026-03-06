// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader {
  /// This rule can only be matched if the request contains the Header specified by Key and the value ends with this value.
  final pulumi.Input<String>? endsWith;
  /// This rule can only be matched if the request contains the Header specified by Key and the value is the specified value.
  final pulumi.Input<String>? equals;
  final pulumi.Input<String>? key;
  /// This rule can only be matched if the request contains the Header specified by Key and the value starts with this value.
  final pulumi.Input<String>? startsWith;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader].
  /// [endsWith] This rule can only be matched if the request contains the Header specified by Key and the value ends with this value.
  /// [equals] This rule can only be matched if the request contains the Header specified by Key and the value is the specified value.
  /// [key] Optional.
  /// [startsWith] This rule can only be matched if the request contains the Header specified by Key and the value starts with this value.
  const BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader({
    this.endsWith,
    this.equals,
    this.key,
    this.startsWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endsWith': ?endsWith,
      'equals': ?equals,
      'key': ?key,
      'startsWith': ?startsWith,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader(
      endsWith: (() { final guardedValue = map['endsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      equals: (() { final guardedValue = map['equals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startsWith: (() { final guardedValue = map['startsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

