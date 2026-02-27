// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCustomConnector.
class GetCustomConnectorArgs {
  final pulumi.Input<String> customConnectorId;
  final pulumi.Input<String>? project;

  GetCustomConnectorArgs({
    required this.customConnectorId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConnectorId'] = customConnectorId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCustomConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorArgs(
      customConnectorId: pulumi.Input.asInput<String>(map['customConnectorId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
