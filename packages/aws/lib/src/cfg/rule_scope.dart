// ignore_for_file: unused_element, unnecessary_cast

class RuleScope {
  /// The IDs of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for `compliance_resource_types`.
  final String? complianceResourceId;

  /// A list of resource types of only those AWS resources that you want to trigger an evaluation for the ruleE.g., `AWS::EC2::Instance`. You can only specify one type if you also specify a resource ID for `compliance_resource_id`. See [relevant part of AWS Docs](http://docs.aws.amazon.com/config/latest/APIReference/API_ResourceIdentifier.html#config-Type-ResourceIdentifier-resourceType) for available types.
  final List<String>? complianceResourceTypes;

  /// The tag key that is applied to only those AWS resources that you want you want to trigger an evaluation for the rule.
  final String? tagKey;

  /// The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule.
  final String? tagValue;

  /// Creates a new [RuleScope].
  /// [complianceResourceId] The IDs of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for `compliance_resource_types`.
  /// [complianceResourceTypes] A list of resource types of only those AWS resources that you want to trigger an evaluation for the ruleE.g., `AWS::EC2::Instance`. You can only specify one type if you also specify a resource ID for `compliance_resource_id`. See [relevant part of AWS Docs](http://docs.aws.amazon.com/config/latest/APIReference/API_ResourceIdentifier.html#config-Type-ResourceIdentifier-resourceType) for available types.
  /// [tagKey] The tag key that is applied to only those AWS resources that you want you want to trigger an evaluation for the rule.
  /// [tagValue] The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule.
  RuleScope({
    this.complianceResourceId,
    this.complianceResourceTypes,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final complianceResourceIdValue = complianceResourceId;
    if (complianceResourceIdValue != null) {
      map['complianceResourceId'] = complianceResourceIdValue;
    }
    final complianceResourceTypesValue = complianceResourceTypes;
    if (complianceResourceTypesValue != null) {
      map['complianceResourceTypes'] = complianceResourceTypesValue;
    }
    final tagKeyValue = tagKey;
    if (tagKeyValue != null) {
      map['tagKey'] = tagKeyValue;
    }
    final tagValueValue = tagValue;
    if (tagValueValue != null) {
      map['tagValue'] = tagValueValue;
    }
    return map;
  }

  factory RuleScope.fromMap(Map<String, dynamic> map) {
    return RuleScope(
      complianceResourceId: map['complianceResourceId'] == null
          ? null
          : map['complianceResourceId'] as String,
      complianceResourceTypes: map['complianceResourceTypes'] == null
          ? null
          : (map['complianceResourceTypes'] as List).cast<String>(),
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
    );
  }
}
