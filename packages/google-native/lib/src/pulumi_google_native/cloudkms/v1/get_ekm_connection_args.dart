// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEkmConnection.
class GetEkmConnectionArgs {
  final pulumi.Input<String> ekmConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEkmConnectionArgs({
    required this.ekmConnectionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ekmConnectionId'] = ekmConnectionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEkmConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEkmConnectionArgs(
      ekmConnectionId: pulumi.Input.asInput<String>(map['ekmConnectionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
