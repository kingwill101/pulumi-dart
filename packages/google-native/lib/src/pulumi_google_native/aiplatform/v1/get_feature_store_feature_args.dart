// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFeatureStoreFeature.
class GetFeatureStoreFeatureArgs {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featureId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFeatureStoreFeatureArgs({
    required this.entityTypeId,
    required this.featureId,
    required this.featurestoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityTypeId'] = entityTypeId;
    map['featureId'] = featureId;
    map['featurestoreId'] = featurestoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureStoreFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureStoreFeatureArgs(
      entityTypeId: pulumi.Input.asInput<String>(map['entityTypeId']),
      featureId: pulumi.Input.asInput<String>(map['featureId']),
      featurestoreId: pulumi.Input.asInput<String>(map['featurestoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
