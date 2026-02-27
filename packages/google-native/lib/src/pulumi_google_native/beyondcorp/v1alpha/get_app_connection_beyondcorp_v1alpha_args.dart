// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppConnection.
class GetAppConnectionBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAppConnectionBeyondcorpV1alphaArgs({
    required this.appConnectionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appConnectionId'] = appConnectionId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAppConnectionBeyondcorpV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAppConnectionBeyondcorpV1alphaArgs(
      appConnectionId: pulumi.Input.asInput<String>(map['appConnectionId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
