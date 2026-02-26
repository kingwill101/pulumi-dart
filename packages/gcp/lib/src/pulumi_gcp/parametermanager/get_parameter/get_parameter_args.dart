// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getParameter.
class GetParameterArgs {
  /// The name of the parameter.
  final Input<String> parameterId;

  /// The ID of the project in which the resource belongs.
  final Input<String>? project;

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
      parameterId: Input.asInput<String>(map['parameterId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
