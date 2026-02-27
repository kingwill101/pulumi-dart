// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFeatureOnlineStore.
class GetFeatureOnlineStoreAiplatformV1beta1Args {
  final pulumi.Input<String> featureOnlineStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFeatureOnlineStoreAiplatformV1beta1Args({
    required this.featureOnlineStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureOnlineStoreId'] = featureOnlineStoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFeatureOnlineStoreAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureOnlineStoreAiplatformV1beta1Args(
      featureOnlineStoreId:
          pulumi.Input.asInput<String>(map['featureOnlineStoreId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
