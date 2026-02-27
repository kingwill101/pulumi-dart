// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEnvironment.
class GetEnvironmentDialogflowV2Args {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEnvironmentDialogflowV2Args({
    required this.environmentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEnvironmentDialogflowV2Args.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentDialogflowV2Args(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
