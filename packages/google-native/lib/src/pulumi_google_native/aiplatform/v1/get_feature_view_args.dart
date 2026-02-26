// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFeatureView.
class GetFeatureViewArgs {
  final Input<String> featureOnlineStoreId;
  final Input<String> featureViewId;
  final Input<String> location;
  final Input<String>? project;

  GetFeatureViewArgs({
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

  factory GetFeatureViewArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureViewArgs(
      featureOnlineStoreId: Input.asInput<String>(map['featureOnlineStoreId']),
      featureViewId: Input.asInput<String>(map['featureViewId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
