// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSpoke.
class GetSpokeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> spokeId;

  GetSpokeArgs({
    required this.location,
    this.project,
    required this.spokeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['spokeId'] = spokeId;
    return map;
  }

  factory GetSpokeArgs.fromMap(Map<String, dynamic> map) {
    return GetSpokeArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      spokeId: pulumi.Input.asInput<String>(map['spokeId']),
    );
  }
}
