// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFeatureGroup.
class GetFeatureGroupAiplatformV1beta1Args {
  final pulumi.Input<String> featureGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFeatureGroupAiplatformV1beta1Args({
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

  factory GetFeatureGroupAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureGroupAiplatformV1beta1Args(
      featureGroupId: pulumi.Input.asInput<String>(map['featureGroupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
