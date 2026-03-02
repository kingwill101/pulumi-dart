// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleScope {
  /// The IDs of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for `compliance_resource_types`.
  final pulumi.Input<String>? complianceResourceId;
  /// A list of resource types of only those AWS resources that you want to trigger an evaluation for the ruleE.g., `AWS::EC2::Instance`. You can only specify one type if you also specify a resource ID for `compliance_resource_id`. See [relevant part of AWS Docs](http://docs.aws.amazon.com/config/latest/APIReference/API_ResourceIdentifier.html#config-Type-ResourceIdentifier-resourceType) for available types.
  final pulumi.Input<List<String>>? complianceResourceTypes;
  /// The tag key that is applied to only those AWS resources that you want you want to trigger an evaluation for the rule.
  final pulumi.Input<String>? tagKey;
  /// The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule.
  final pulumi.Input<String>? tagValue;

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
    return <String, dynamic>{
      'complianceResourceId': ?complianceResourceId,
      'complianceResourceTypes': ?complianceResourceTypes,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory RuleScope.fromMap(Map<String, dynamic> map) {
    return RuleScope(
      complianceResourceId: map['complianceResourceId'] == null ? null : ((map['complianceResourceId'] as String).input()).input(),
      complianceResourceTypes: map['complianceResourceTypes'] == null ? null : (((map['complianceResourceTypes'] as List).cast<String>()).input()).input(),
      tagKey: map['tagKey'] == null ? null : ((map['tagKey'] as String).input()).input(),
      tagValue: map['tagValue'] == null ? null : ((map['tagValue'] as String).input()).input(),
    );
  }
}

