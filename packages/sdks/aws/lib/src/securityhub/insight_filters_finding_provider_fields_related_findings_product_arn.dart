// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersFindingProviderFieldsRelatedFindingsProductArn {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersFindingProviderFieldsRelatedFindingsProductArn].
  /// [comparison] Required.
  /// [value] Required.
  const InsightFiltersFindingProviderFieldsRelatedFindingsProductArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersFindingProviderFieldsRelatedFindingsProductArn.fromMap(Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsRelatedFindingsProductArn(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
