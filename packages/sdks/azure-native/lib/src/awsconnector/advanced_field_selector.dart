// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AdvancedFieldSelector
class AdvancedFieldSelector {
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

  /// Creates a new [AdvancedFieldSelector].
  /// [endsWith] An operator that includes events that match the last few characters of the event record field specified as the value of Field.
  /// [equals] An operator that includes events that match the exact value of the event record field specified as the value of Field. This is the only valid operator that you can use with the readOnly, eventCategory, and resources.type fields.
  /// [field] A field in an event record on which to filter events to be logged. Supported fields include readOnly, eventCategory, eventSource (for management events), eventName, resources.type, and resources.ARN.
  /// [notEndsWith] An operator that excludes events that match the last few characters of the event record field specified as the value of Field.
  /// [notEquals] An operator that excludes events that match the exact value of the event record field specified as the value of Field.
  /// [notStartsWith] An operator that excludes events that match the first few characters of the event record field specified as the value of Field.
  /// [startsWith] An operator that includes events that match the first few characters of the event record field specified as the value of Field.
  AdvancedFieldSelector({
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

  factory AdvancedFieldSelector.fromMap(Map<String, dynamic> map) {
    return AdvancedFieldSelector(
      endsWith: map['endsWith'] == null ? null : ((map['endsWith'] as List).cast<String>()).input(),
      equals: map['equals'] == null ? null : ((map['equals'] as List).cast<String>()).input(),
      field: map['field'] == null ? null : (map['field'] as String).input(),
      notEndsWith: map['notEndsWith'] == null ? null : ((map['notEndsWith'] as List).cast<String>()).input(),
      notEquals: map['notEquals'] == null ? null : ((map['notEquals'] as List).cast<String>()).input(),
      notStartsWith: map['notStartsWith'] == null ? null : ((map['notStartsWith'] as List).cast<String>()).input(),
      startsWith: map['startsWith'] == null ? null : ((map['startsWith'] as List).cast<String>()).input(),
    );
  }
}

