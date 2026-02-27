// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFeature.
class GetFeatureArgs2 {
  final Input<String> featureId;
  final Input<String> location;
  final Input<String>? project;

  GetFeatureArgs2({
    required this.featureId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureId'] = featureId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureArgs2.fromMap(Map<String, dynamic> map) {
    return GetFeatureArgs2(
      featureId: Input.asInput<String>(map['featureId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
