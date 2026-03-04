// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The value which should be used for this field.
class WorkspaceNoPublicIPBooleanParameter {
  /// The value which should be used for this field.
  final pulumi.Input<bool> value;

  /// Creates a new [WorkspaceNoPublicIPBooleanParameter].
  /// [value] The value which should be used for this field.
  WorkspaceNoPublicIPBooleanParameter({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory WorkspaceNoPublicIPBooleanParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkspaceNoPublicIPBooleanParameter(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}
