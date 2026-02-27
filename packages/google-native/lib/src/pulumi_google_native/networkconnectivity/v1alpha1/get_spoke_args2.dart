// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSpoke.
class GetSpokeArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> spokeId;

  GetSpokeArgs2({
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

  factory GetSpokeArgs2.fromMap(Map<String, dynamic> map) {
    return GetSpokeArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      spokeId: Input.asInput<String>(map['spokeId']),
    );
  }
}
