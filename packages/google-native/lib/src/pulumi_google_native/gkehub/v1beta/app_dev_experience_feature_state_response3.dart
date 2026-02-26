// ignore_for_file: unused_element, unnecessary_cast

import 'status_response21.dart';

/// State for App Dev Exp Feature.
class AppDevExperienceFeatureStateResponse3 {
  /// Status of subcomponent that detects configured Service Mesh resources.
  final StatusResponse21 networkingInstallSucceeded;

  AppDevExperienceFeatureStateResponse3({
    required this.networkingInstallSucceeded,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkingInstallSucceeded'] = networkingInstallSucceeded.toMap();
    return map;
  }

  factory AppDevExperienceFeatureStateResponse3.fromMap(
      Map<String, dynamic> map) {
    return AppDevExperienceFeatureStateResponse3(
      networkingInstallSucceeded: StatusResponse21.fromMap(
          (map['networkingInstallSucceeded'] as Map).cast<String, dynamic>()),
    );
  }
}
