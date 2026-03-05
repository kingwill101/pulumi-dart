// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The value which should be used for this field.
class WorkspaceNoPublicIPBooleanParameterResponse {
  /// The type of variable that this is
  final pulumi.Input<String> type;
  /// The value which should be used for this field.
  final pulumi.Input<bool> value;

  /// Creates a new [WorkspaceNoPublicIPBooleanParameterResponse].
  /// [type] The type of variable that this is
  /// [value] The value which should be used for this field.
  WorkspaceNoPublicIPBooleanParameterResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory WorkspaceNoPublicIPBooleanParameterResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceNoPublicIPBooleanParameterResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}

