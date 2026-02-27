// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConversionWorkspace.
class GetConversionWorkspaceArgs {
  final pulumi.Input<String> conversionWorkspaceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConversionWorkspaceArgs({
    required this.conversionWorkspaceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversionWorkspaceId'] = conversionWorkspaceId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConversionWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetConversionWorkspaceArgs(
      conversionWorkspaceId:
          pulumi.Input.asInput<String>(map['conversionWorkspaceId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
