// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleActionFindingFieldsUpdateRelatedFinding {
  /// The product-generated identifier for a related finding.
  final pulumi.Input<String> id;
  /// The ARN of the product that generated a related finding.
  final pulumi.Input<String> productArn;

  /// Creates a new [AutomationRuleActionFindingFieldsUpdateRelatedFinding].
  /// [id] The product-generated identifier for a related finding.
  /// [productArn] The ARN of the product that generated a related finding.
  AutomationRuleActionFindingFieldsUpdateRelatedFinding({
    required this.id,
    required this.productArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'productArn': productArn,
    };
  }

  factory AutomationRuleActionFindingFieldsUpdateRelatedFinding.fromMap(Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdateRelatedFinding(
      id: pulumi.Input.fromValue(map['id'] as String),
      productArn: pulumi.Input.fromValue(map['productArn'] as String),
    );
  }
}

