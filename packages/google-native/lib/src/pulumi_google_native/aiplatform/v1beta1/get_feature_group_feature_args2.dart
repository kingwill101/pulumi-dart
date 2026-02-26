// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFeatureGroupFeature.
class GetFeatureGroupFeatureArgs2 {
  final Input<String> featureGroupId;
  final Input<String> featureId;
  final Input<String> location;
  final Input<String>? project;

  GetFeatureGroupFeatureArgs2({
    required this.featureGroupId,
    required this.featureId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureGroupId'] = featureGroupId;
    map['featureId'] = featureId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureGroupFeatureArgs2.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupFeatureArgs2(
      featureGroupId: Input.asInput<String>(map['featureGroupId']),
      featureId: Input.asInput<String>(map['featureId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
