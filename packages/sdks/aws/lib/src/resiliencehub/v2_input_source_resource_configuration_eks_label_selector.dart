// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_input_source_resource_configuration_eks_label_selector_match_expression.dart';

class V2InputSourceResourceConfigurationEksLabelSelector {
  /// Label requirements that an object must satisfy. Every requirement must match. See `matchExpressions` Block below.
  final pulumi.Input<List<V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression>?>? matchExpressions;
  /// Label key-value pairs that an object must have, up to 20. Every pair must match.
  final pulumi.Input<Map<String, String>?>? matchLabels;

  /// Creates a new [V2InputSourceResourceConfigurationEksLabelSelector].
  /// [matchExpressions] Label requirements that an object must satisfy. Every requirement must match. See `matchExpressions` Block below.
  /// [matchLabels] Label key-value pairs that an object must have, up to 20. Every pair must match.
  const V2InputSourceResourceConfigurationEksLabelSelector({
    this.matchExpressions,
    this.matchLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchExpressions': ?pulumi.Input.mapOptionalInputValue<List<V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression>, List<Map<String, dynamic>>>(matchExpressions, (value) => pulumi.Input.encodeList<V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchLabels': ?matchLabels,
    };
  }

  factory V2InputSourceResourceConfigurationEksLabelSelector.fromMap(Map<String, dynamic> map) {
    return V2InputSourceResourceConfigurationEksLabelSelector(
      matchExpressions: (() { final guardedValue = map['matchExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression>(guardedValue, (value) => V2InputSourceResourceConfigurationEksLabelSelectorMatchExpression.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchLabels: (() { final guardedValue = map['matchLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
