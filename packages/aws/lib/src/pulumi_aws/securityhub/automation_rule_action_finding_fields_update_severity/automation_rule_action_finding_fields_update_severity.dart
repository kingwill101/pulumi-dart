// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleActionFindingFieldsUpdateSeverity {
  /// The severity value of the finding. The allowed values are the following `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH` and `CRITICAL`.
  final String? label;

  /// The native severity as defined by the AWS service or integrated partner product that generated the finding.
  final double? product;

  AutomationRuleActionFindingFieldsUpdateSeverity({
    this.label,
    this.product,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final productValue = product;
    if (productValue != null) {
      map['product'] = productValue;
    }
    return map;
  }

  factory AutomationRuleActionFindingFieldsUpdateSeverity.fromMap(
      Map<String, dynamic> map) {
    return AutomationRuleActionFindingFieldsUpdateSeverity(
      label: map['label'] == null ? null : map['label'] as String,
      product: map['product'] == null ? null : map['product'] as double,
    );
  }
}
