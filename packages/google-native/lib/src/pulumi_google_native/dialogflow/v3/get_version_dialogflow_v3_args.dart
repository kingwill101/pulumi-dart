// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVersion.
class GetVersionDialogflowV3Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  GetVersionDialogflowV3Args({
    required this.agentId,
    required this.flowId,
    required this.location,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['flowId'] = flowId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return GetVersionDialogflowV3Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      flowId: pulumi.Input.asInput<String>(map['flowId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
