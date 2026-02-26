// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleActionFindingFieldsUpdateRelatedFinding {
  /// The product-generated identifier for a related finding.
  final String id;

  /// The ARN of the product that generated a related finding.
  final String productArn;

  AutomationRuleActionFindingFieldsUpdateRelatedFinding({
    required this.id,
    required this.productArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['productArn'] = productArn;
    return map;
  }

  factory AutomationRuleActionFindingFieldsUpdateRelatedFinding.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdateRelatedFinding(
      id: map['id'] as String,
      productArn: map['productArn'] as String,
    );
  }
}
