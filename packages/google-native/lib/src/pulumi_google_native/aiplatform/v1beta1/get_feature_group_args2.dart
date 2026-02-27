// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFeatureGroup.
class GetFeatureGroupArgs2 {
  final Input<String> featureGroupId;
  final Input<String> location;
  final Input<String>? project;

  GetFeatureGroupArgs2({
    required this.featureGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureGroupId'] = featureGroupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureGroupArgs2.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupArgs2(
      featureGroupId: Input.asInput<String>(map['featureGroupId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
