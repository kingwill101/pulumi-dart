// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceRecordSetRegionEnumValue
class ResourceRecordSetRegionEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceRecordSetRegionEnumValue].
  /// [value] Property value
  const ResourceRecordSetRegionEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceRecordSetRegionEnumValue.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetRegionEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

