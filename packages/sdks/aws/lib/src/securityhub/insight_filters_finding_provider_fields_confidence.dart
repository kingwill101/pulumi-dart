// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersFindingProviderFieldsConfidence {
  /// The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  final pulumi.Input<String>? eq;
  /// The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final pulumi.Input<String>? gte;
  /// The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final pulumi.Input<String>? lte;

  /// Creates a new [InsightFiltersFindingProviderFieldsConfidence].
  /// [eq] The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  /// [gte] The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  /// [lte] The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  InsightFiltersFindingProviderFieldsConfidence({
    this.eq,
    this.gte,
    this.lte,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eq': ?eq,
      'gte': ?gte,
      'lte': ?lte,
    };
  }

  factory InsightFiltersFindingProviderFieldsConfidence.fromMap(Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsConfidence(
      eq: map['eq'] == null ? null : (map['eq'] as String).input(),
      gte: map['gte'] == null ? null : (map['gte'] as String).input(),
      lte: map['lte'] == null ? null : (map['lte'] as String).input(),
    );
  }
}

