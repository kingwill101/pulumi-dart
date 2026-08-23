// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Each pivot must contain a 'type' and 'name'.
class PivotPropertiesResponse {
  /// Data field to show in view.
  final pulumi.Input<String>? name;
  /// Data type to show in view.
  final pulumi.Input<String>? type;

  /// Creates a new [PivotPropertiesResponse].
  /// [name] Data field to show in view.
  /// [type] Data type to show in view.
  const PivotPropertiesResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory PivotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PivotPropertiesResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
