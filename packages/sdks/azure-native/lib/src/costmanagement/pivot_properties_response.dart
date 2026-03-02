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
  PivotPropertiesResponse({
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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

