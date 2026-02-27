// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPersistentResource.
class GetPersistentResourceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> persistentResourceId;
  final pulumi.Input<String>? project;

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
      location: pulumi.Input.asInput<String>(map['location']),
      persistentResourceId:
          pulumi.Input.asInput<String>(map['persistentResourceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
