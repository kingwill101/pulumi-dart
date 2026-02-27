// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionalParameter.
class GetRegionalParameterArgs {
  /// The location of the regional parameter. eg us-central1
  final pulumi.Input<String> location;

  /// The name of the regional parameter.
  final pulumi.Input<String> parameterId;

  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;

  GetRegionalParameterArgs({
    required this.location,
    required this.parameterId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['parameterId'] = parameterId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetRegionalParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalParameterArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      parameterId: pulumi.Input.asInput<String>(map['parameterId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
