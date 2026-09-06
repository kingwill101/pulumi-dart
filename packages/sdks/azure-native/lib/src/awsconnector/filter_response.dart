// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Filter
class FilterResponse {
  /// Property contains
  final pulumi.Input<List<String>?>? contains;
  /// Property eq
  final pulumi.Input<List<String>?>? eq;
  /// Property exists
  final pulumi.Input<bool?>? exists;
  /// Property neq
  final pulumi.Input<List<String>?>? neq;
  /// Property property
  final pulumi.Input<String?>? property;

  /// Creates a new [FilterResponse].
  /// [contains] Property contains
  /// [eq] Property eq
  /// [exists] Property exists
  /// [neq] Property neq
  /// [property] Property property
  const FilterResponse({
    this.contains,
    this.eq,
    this.exists,
    this.neq,
    this.property,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contains': ?contains,
      'eq': ?eq,
      'exists': ?exists,
      'neq': ?neq,
      'property': ?property,
    };
  }

  factory FilterResponse.fromMap(Map<String, dynamic> map) {
    return FilterResponse(
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      eq: (() { final guardedValue = map['eq']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exists: (() { final guardedValue = map['exists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      neq: (() { final guardedValue = map['neq']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      property: (() { final guardedValue = map['property']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
