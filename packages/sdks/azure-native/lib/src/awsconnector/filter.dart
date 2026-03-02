// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition.dart';

/// Definition of Filter
class Filter {
  /// How to handle logs that satisfy the filter's conditions and requirement.
  final pulumi.Input<String>? behavior;
  /// Match conditions for the filter.
  final pulumi.Input<List<Condition>>? conditions;
  /// Property contains
  final pulumi.Input<List<String>>? contains;
  /// Property eq
  final pulumi.Input<List<String>>? eq;
  /// Property exists
  final pulumi.Input<bool>? exists;
  /// Property neq
  final pulumi.Input<List<String>>? neq;
  /// Property property
  final pulumi.Input<String>? property;
  /// Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  final pulumi.Input<String>? requirement;

  /// Creates a new [Filter].
  /// [behavior] How to handle logs that satisfy the filter's conditions and requirement.
  /// [conditions] Match conditions for the filter.
  /// [contains] Property contains
  /// [eq] Property eq
  /// [exists] Property exists
  /// [neq] Property neq
  /// [property] Property property
  /// [requirement] Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
  Filter({
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
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contains': ?contains,
      'eq': ?eq,
      'exists': ?exists,
      'neq': ?neq,
      'property': ?property,
      'requirement': ?requirement,
    };
  }

  factory Filter.fromMap(Map<String, dynamic> map) {
    return Filter(
      behavior: map['behavior'] == null ? null : (map['behavior'] as String).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<Condition>(map['conditions'], (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contains: map['contains'] == null ? null : ((map['contains'] as List).cast<String>()).input(),
      eq: map['eq'] == null ? null : ((map['eq'] as List).cast<String>()).input(),
      exists: map['exists'] == null ? null : (map['exists'] as bool).input(),
      neq: map['neq'] == null ? null : ((map['neq'] as List).cast<String>()).input(),
      property: map['property'] == null ? null : (map['property'] as String).input(),
      requirement: map['requirement'] == null ? null : (map['requirement'] as String).input(),
    );
  }
}

