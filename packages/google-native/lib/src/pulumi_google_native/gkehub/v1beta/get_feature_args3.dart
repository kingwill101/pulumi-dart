// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFeature.
class GetFeatureArgs3 {
  final Input<String> featureId;
  final Input<String> location;
  final Input<String>? project;

  GetFeatureArgs3({
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

  factory GetFeatureArgs3.fromMap(Map<String, dynamic> map) {
    return GetFeatureArgs3(
      featureId: Input.asInput<String>(map['featureId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
