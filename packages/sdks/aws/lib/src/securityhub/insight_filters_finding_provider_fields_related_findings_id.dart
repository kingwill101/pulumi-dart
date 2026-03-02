// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersFindingProviderFieldsRelatedFindingsId {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersFindingProviderFieldsRelatedFindingsId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersFindingProviderFieldsRelatedFindingsId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersFindingProviderFieldsRelatedFindingsId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsRelatedFindingsId(
      comparison: (map['comparison'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

