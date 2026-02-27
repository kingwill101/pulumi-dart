// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEngine.
class GetEngineArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> engineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEngineArgs({
    required this.collectionId,
    required this.engineId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    map['engineId'] = engineId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEngineArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineArgs(
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      engineId: pulumi.Input.asInput<String>(map['engineId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
