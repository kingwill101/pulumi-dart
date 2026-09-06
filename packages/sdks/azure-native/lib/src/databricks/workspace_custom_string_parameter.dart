// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Value.
class WorkspaceCustomStringParameter {
  /// The type of variable that this is
  final pulumi.Input<dynamic>? type;
  /// The value which should be used for this field.
  final pulumi.Input<String> value;

  /// Creates a new [WorkspaceCustomStringParameter].
  /// [type] The type of variable that this is
  /// [value] The value which should be used for this field.
  const WorkspaceCustomStringParameter({
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': value,
    };
  }

  factory WorkspaceCustomStringParameter.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomStringParameter(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
