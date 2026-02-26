// ignore_for_file: unused_element, unnecessary_cast

import 'status_response19.dart';

/// State for App Dev Exp Feature.
class AppDevExperienceFeatureStateResponse {
  /// Status of subcomponent that detects configured Service Mesh resources.
  final StatusResponse19 networkingInstallSucceeded;

  AppDevExperienceFeatureStateResponse({
    required this.networkingInstallSucceeded,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkingInstallSucceeded'] = networkingInstallSucceeded.toMap();
    return map;
  }

  factory AppDevExperienceFeatureStateResponse.fromMap(
      Map<String, dynamic> map) {
    return AppDevExperienceFeatureStateResponse(
      networkingInstallSucceeded: StatusResponse19.fromMap(
          (map['networkingInstallSucceeded'] as Map).cast<String, dynamic>()),
    );
  }
}
