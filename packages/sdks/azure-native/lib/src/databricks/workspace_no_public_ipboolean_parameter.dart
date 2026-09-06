// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The value which should be used for this field.
class WorkspaceNoPublicIPBooleanParameter {
  /// The type of variable that this is
  final pulumi.Input<dynamic>? type;
  /// The value which should be used for this field.
  final pulumi.Input<bool> value;

  /// Creates a new [WorkspaceNoPublicIPBooleanParameter].
  /// [type] The type of variable that this is
  /// [value] The value which should be used for this field.
  const WorkspaceNoPublicIPBooleanParameter({
    this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': value,
    };
  }

  factory WorkspaceNoPublicIPBooleanParameter.fromMap(Map<String, dynamic> map) {
    return WorkspaceNoPublicIPBooleanParameter(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
