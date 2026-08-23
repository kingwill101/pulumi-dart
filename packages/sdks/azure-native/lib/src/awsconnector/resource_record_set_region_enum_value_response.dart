// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceRecordSetRegionEnumValue
class ResourceRecordSetRegionEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceRecordSetRegionEnumValueResponse].
  /// [value] Property value
  const ResourceRecordSetRegionEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceRecordSetRegionEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetRegionEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
