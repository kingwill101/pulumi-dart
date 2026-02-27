// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConversionWorkspace.
class GetConversionWorkspaceArgs {
  final Input<String> conversionWorkspaceId;
  final Input<String> location;
  final Input<String>? project;

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
          Input.asInput<String>(map['conversionWorkspaceId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
