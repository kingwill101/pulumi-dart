// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader {
  /// This rule can only be matched if the request contains the Header specified by Key and the value ends with this value.
  final String? endsWith;
  /// This rule can only be matched if the request contains the Header specified by Key and the value is the specified value.
  final String? equals;
  final String? key;
  /// This rule can only be matched if the request contains the Header specified by Key and the value starts with this value.
  final String? startsWith;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader].
  /// [endsWith] This rule can only be matched if the request contains the Header specified by Key and the value ends with this value.
  /// [equals] This rule can only be matched if the request contains the Header specified by Key and the value is the specified value.
  /// [key] Optional.
  /// [startsWith] This rule can only be matched if the request contains the Header specified by Key and the value starts with this value.
  BucketWebsiteRoutingRulesRoutingRuleConditionIncludeHeader({
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
      endsWith: map['endsWith'] == null ? null : map['endsWith'] as String,
      equals: map['equals'] == null ? null : map['equals'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      startsWith: map['startsWith'] == null ? null : map['startsWith'] as String,
    );
  }
}

