// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEngine.
class GetEngineArgs {
  final Input<String> collectionId;
  final Input<String> engineId;
  final Input<String> location;
  final Input<String>? project;

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
      collectionId: Input.asInput<String>(map['collectionId']),
      engineId: Input.asInput<String>(map['engineId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
