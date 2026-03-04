// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleActionFindingFieldsUpdateSeverity {
  /// The severity value of the finding. The allowed values are the following `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH` and `CRITICAL`.
  final pulumi.Input<String>? label;

  /// The native severity as defined by the AWS service or integrated partner product that generated the finding.
  final pulumi.Input<double>? product;

  /// Creates a new [AutomationRuleActionFindingFieldsUpdateSeverity].
  /// [label] The severity value of the finding. The allowed values are the following `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH` and `CRITICAL`.
  /// [product] The native severity as defined by the AWS service or integrated partner product that generated the finding.
  AutomationRuleActionFindingFieldsUpdateSeverity({this.label, this.product});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'label': ?label, 'product': ?product};
  }

  factory AutomationRuleActionFindingFieldsUpdateSeverity.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutomationRuleActionFindingFieldsUpdateSeverity(
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      product: (() {
        final guardedValue = map['product'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
