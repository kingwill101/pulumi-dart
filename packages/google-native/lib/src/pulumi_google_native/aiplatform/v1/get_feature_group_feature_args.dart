// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFeatureGroupFeature.
class GetFeatureGroupFeatureArgs {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFeatureGroupFeatureArgs({
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

  factory GetFeatureGroupFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureGroupFeatureArgs(
      featureGroupId: pulumi.Input.asInput<String>(map['featureGroupId']),
      featureId: pulumi.Input.asInput<String>(map['featureId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
