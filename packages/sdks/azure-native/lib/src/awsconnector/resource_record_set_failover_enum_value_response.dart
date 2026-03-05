// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceRecordSetFailoverEnumValue
class ResourceRecordSetFailoverEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceRecordSetFailoverEnumValueResponse].
  /// [value] Property value
  ResourceRecordSetFailoverEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceRecordSetFailoverEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetFailoverEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

