// ignore_for_file: unused_element, unnecessary_cast

import 'status_response_gkehub_v1beta.dart';

/// State for App Dev Exp Feature.
class AppDevExperienceFeatureStateResponseGkehubV1beta {
  /// Status of subcomponent that detects configured Service Mesh resources.
  final StatusResponseGkehubV1beta networkingInstallSucceeded;

  AppDevExperienceFeatureStateResponseGkehubV1beta({
    required this.networkingInstallSucceeded,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkingInstallSucceeded'] = networkingInstallSucceeded.toMap();
    return map;
  }

  factory AppDevExperienceFeatureStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return AppDevExperienceFeatureStateResponseGkehubV1beta(
      networkingInstallSucceeded: StatusResponseGkehubV1beta.fromMap(
          (map['networkingInstallSucceeded'] as Map).cast<String, dynamic>()),
    );
  }
}
