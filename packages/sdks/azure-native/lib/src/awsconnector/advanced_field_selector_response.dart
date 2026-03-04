// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AdvancedFieldSelector
class AdvancedFieldSelectorResponse {
  /// An operator that includes events that match the last few characters of the event record field specified as the value of Field.
  final pulumi.Input<List<String>>? endsWith;

  /// An operator that includes events that match the exact value of the event record field specified as the value of Field. This is the only valid operator that you can use with the readOnly, eventCategory, and resources.type fields.
  final pulumi.Input<List<String>>? equals;

  /// A field in an event record on which to filter events to be logged. Supported fields include readOnly, eventCategory, eventSource (for management events), eventName, resources.type, and resources.ARN.
  final pulumi.Input<String>? field;

  /// An operator that excludes events that match the last few characters of the event record field specified as the value of Field.
  final pulumi.Input<List<String>>? notEndsWith;

  /// An operator that excludes events that match the exact value of the event record field specified as the value of Field.
  final pulumi.Input<List<String>>? notEquals;

  /// An operator that excludes events that match the first few characters of the event record field specified as the value of Field.
  final pulumi.Input<List<String>>? notStartsWith;

  /// An operator that includes events that match the first few characters of the event record field specified as the value of Field.
  final pulumi.Input<List<String>>? startsWith;

  /// Creates a new [AdvancedFieldSelectorResponse].
  /// [endsWith] An operator that includes events that match the last few characters of the event record field specified as the value of Field.
  /// [equals] An operator that includes events that match the exact value of the event record field specified as the value of Field. This is the only valid operator that you can use with the readOnly, eventCategory, and resources.type fields.
  /// [field] A field in an event record on which to filter events to be logged. Supported fields include readOnly, eventCategory, eventSource (for management events), eventName, resources.type, and resources.ARN.
  /// [notEndsWith] An operator that excludes events that match the last few characters of the event record field specified as the value of Field.
  /// [notEquals] An operator that excludes events that match the exact value of the event record field specified as the value of Field.
  /// [notStartsWith] An operator that excludes events that match the first few characters of the event record field specified as the value of Field.
  /// [startsWith] An operator that includes events that match the first few characters of the event record field specified as the value of Field.
  AdvancedFieldSelectorResponse({
    this.endsWith,
    this.equals,
    this.field,
    this.notEndsWith,
    this.notEquals,
    this.notStartsWith,
    this.startsWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endsWith': ?endsWith,
      'equals': ?equals,
      'field': ?field,
      'notEndsWith': ?notEndsWith,
      'notEquals': ?notEquals,
      'notStartsWith': ?notStartsWith,
      'startsWith': ?startsWith,
    };
  }

  factory AdvancedFieldSelectorResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedFieldSelectorResponse(
      endsWith: (() {
        final guardedValue = map['endsWith'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      equals: (() {
        final guardedValue = map['equals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      field: (() {
        final guardedValue = map['field'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notEndsWith: (() {
        final guardedValue = map['notEndsWith'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      notEquals: (() {
        final guardedValue = map['notEquals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      notStartsWith: (() {
        final guardedValue = map['notStartsWith'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      startsWith: (() {
        final guardedValue = map['startsWith'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
