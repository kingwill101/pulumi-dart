// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFeatureStoreFeature.
class GetFeatureStoreFeatureArgs {
  final Input<String> entityTypeId;
  final Input<String> featureId;
  final Input<String> featurestoreId;
  final Input<String> location;
  final Input<String>? project;

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
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      featureId: Input.asInput<String>(map['featureId']),
      featurestoreId: Input.asInput<String>(map['featurestoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
