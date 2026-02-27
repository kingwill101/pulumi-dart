// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFeatureView.
class GetFeatureViewAiplatformV1beta1Args {
  final pulumi.Input<String> featureOnlineStoreId;
  final pulumi.Input<String> featureViewId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFeatureViewAiplatformV1beta1Args({
    required this.featureOnlineStoreId,
    required this.featureViewId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureOnlineStoreId'] = featureOnlineStoreId;
    map['featureViewId'] = featureViewId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureViewAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureViewAiplatformV1beta1Args(
      featureOnlineStoreId:
          pulumi.Input.asInput<String>(map['featureOnlineStoreId']),
      featureViewId: pulumi.Input.asInput<String>(map['featureViewId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
