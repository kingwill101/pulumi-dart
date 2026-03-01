// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response.dart';

/// Definition of Filter
class FilterResponse {
  /// How to handle logs that satisfy the filter's conditions and requirement.
  final String? behavior;
  /// Match conditions for the filter.
  final List<ConditionResponse>? conditions;
  /// Property contains
  final List<String>? contains;
  /// Property eq
  final List<String>? eq;
  /// Property exists
  final bool? exists;
  /// Property neq
  final List<String>? neq;
  /// Property property
  final String? property;
  /// Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  final String? requirement;

  /// Creates a new [FilterResponse].
  /// [behavior] How to handle logs that satisfy the filter's conditions and requirement.
  /// [conditions] Match conditions for the filter.
  /// [contains] Property contains
  /// [eq] Property eq
  /// [exists] Property exists
  /// [neq] Property neq
  /// [property] Property property
  /// [requirement] Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  FilterResponse({
    this.behavior,
    this.conditions,
    this.contains,
    this.eq,
    this.exists,
    this.neq,
    this.property,
    this.requirement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?behavior,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ConditionResponse, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'contains': ?contains,
      'eq': ?eq,
      'exists': ?exists,
      'neq': ?neq,
      'property': ?property,
      'requirement': ?requirement,
    };
  }

  factory FilterResponse.fromMap(Map<String, dynamic> map) {
    return FilterResponse(
      behavior: map['behavior'] == null ? null : map['behavior'] as String,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ConditionResponse>(map['conditions'], (value) => ConditionResponse.fromMap((value as Map).cast<String, dynamic>())),
      contains: map['contains'] == null ? null : (map['contains'] as List).cast<String>(),
      eq: map['eq'] == null ? null : (map['eq'] as List).cast<String>(),
      exists: map['exists'] == null ? null : map['exists'] as bool,
      neq: map['neq'] == null ? null : (map['neq'] as List).cast<String>(),
      property: map['property'] == null ? null : map['property'] as String,
      requirement: map['requirement'] == null ? null : map['requirement'] as String,
    );
  }
}

