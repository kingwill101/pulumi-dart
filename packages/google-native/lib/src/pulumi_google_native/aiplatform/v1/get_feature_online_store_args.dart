// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getFeatureOnlineStore.
class GetFeatureOnlineStoreArgs {
  final Input<String> featureOnlineStoreId;
  final Input<String> location;
  final Input<String>? project;

  GetFeatureOnlineStoreArgs({
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

  factory GetFeatureOnlineStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetFeatureOnlineStoreArgs(
      featureOnlineStoreId: Input.asInput<String>(map['featureOnlineStoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
