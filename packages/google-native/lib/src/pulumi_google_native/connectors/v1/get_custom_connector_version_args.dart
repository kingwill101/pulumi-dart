// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCustomConnectorVersion.
class GetCustomConnectorVersionArgs {
  final pulumi.Input<String> customConnectorId;
  final pulumi.Input<String> customConnectorVersionId;
  final pulumi.Input<String>? project;

  GetCustomConnectorVersionArgs({
    required this.customConnectorId,
    required this.customConnectorVersionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConnectorId'] = customConnectorId;
    map['customConnectorVersionId'] = customConnectorVersionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCustomConnectorVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorVersionArgs(
      customConnectorId: pulumi.Input.asInput<String>(map['customConnectorId']),
      customConnectorVersionId:
          pulumi.Input.asInput<String>(map['customConnectorVersionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
