// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFeatureOnlineStore.
class GetFeatureOnlineStoreArgs2 {
  final Input<String> featureOnlineStoreId;
  final Input<String> location;
  final Input<String>? project;

  GetFeatureOnlineStoreArgs2({
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

  factory GetFeatureOnlineStoreArgs2.fromMap(Map<String, dynamic> map) {
    return GetFeatureOnlineStoreArgs2(
      featureOnlineStoreId: Input.asInput<String>(map['featureOnlineStoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
