// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceRecordSetFailoverEnumValue
class ResourceRecordSetFailoverEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceRecordSetFailoverEnumValue].
  /// [value] Property value
  ResourceRecordSetFailoverEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceRecordSetFailoverEnumValue.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetFailoverEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

