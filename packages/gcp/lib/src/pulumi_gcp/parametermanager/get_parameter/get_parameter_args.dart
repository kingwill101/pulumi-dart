// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getParameter.
class GetParameterArgs {
  /// The name of the parameter.
  final pulumi.Input<String> parameterId;

  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;

  GetParameterArgs({
    required this.parameterId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameterId'] = parameterId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterArgs(
      parameterId: pulumi.Input.asInput<String>(map['parameterId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
