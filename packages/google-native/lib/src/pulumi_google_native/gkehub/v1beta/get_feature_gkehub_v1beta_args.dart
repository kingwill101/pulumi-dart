// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFeature.
class GetFeatureGkehubV1betaArgs {
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFeatureGkehubV1betaArgs({
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

  factory GetFeatureGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureGkehubV1betaArgs(
      featureId: pulumi.Input.asInput<String>(map['featureId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
