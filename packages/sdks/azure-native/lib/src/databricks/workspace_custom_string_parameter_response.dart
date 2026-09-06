// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Value.
class WorkspaceCustomStringParameterResponse {
  /// The type of variable that this is
  final pulumi.Input<String?>? type;
  /// The value which should be used for this field.
  final pulumi.Input<String> value;

  /// Creates a new [WorkspaceCustomStringParameterResponse].
  /// [type] The type of variable that this is
  /// [value] The value which should be used for this field.
  const WorkspaceCustomStringParameterResponse({
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': value,
    };
  }

  factory WorkspaceCustomStringParameterResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomStringParameterResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
