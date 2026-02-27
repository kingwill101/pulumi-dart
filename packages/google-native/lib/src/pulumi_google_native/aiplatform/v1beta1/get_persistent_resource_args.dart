// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPersistentResource.
class GetPersistentResourceArgs {
  final Input<String> location;
  final Input<String> persistentResourceId;
  final Input<String>? project;

  GetPersistentResourceArgs({
    required this.location,
    required this.persistentResourceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['persistentResourceId'] = persistentResourceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPersistentResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetPersistentResourceArgs(
      location: Input.asInput<String>(map['location']),
      persistentResourceId: Input.asInput<String>(map['persistentResourceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
