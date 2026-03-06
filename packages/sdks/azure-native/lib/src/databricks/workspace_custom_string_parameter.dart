// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Value.
class WorkspaceCustomStringParameter {
  /// The value which should be used for this field.
  final pulumi.Input<String> value;

  /// Creates a new [WorkspaceCustomStringParameter].
  /// [value] The value which should be used for this field.
  const WorkspaceCustomStringParameter({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory WorkspaceCustomStringParameter.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomStringParameter(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

