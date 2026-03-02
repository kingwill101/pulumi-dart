// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersProcessParentPid {
  /// The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  final pulumi.Input<String>? eq;
  /// The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final pulumi.Input<String>? gte;
  /// The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final pulumi.Input<String>? lte;

  /// Creates a new [InsightFiltersProcessParentPid].
  /// [eq] The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  /// [gte] The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  /// [lte] The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  InsightFiltersProcessParentPid({
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

  factory InsightFiltersProcessParentPid.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProcessParentPid(
      eq: map['eq'] == null ? null : (map['eq'] as String).input(),
      gte: map['gte'] == null ? null : (map['gte'] as String).input(),
      lte: map['lte'] == null ? null : (map['lte'] as String).input(),
    );
  }
}

