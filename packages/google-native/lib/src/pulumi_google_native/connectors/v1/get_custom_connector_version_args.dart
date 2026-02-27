// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCustomConnectorVersion.
class GetCustomConnectorVersionArgs {
  final Input<String> customConnectorId;
  final Input<String> customConnectorVersionId;
  final Input<String>? project;

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
      customConnectorId: Input.asInput<String>(map['customConnectorId']),
      customConnectorVersionId:
          Input.asInput<String>(map['customConnectorVersionId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
