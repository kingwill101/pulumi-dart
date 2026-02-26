// ignore_for_file: unused_element, unnecessary_cast

import 'status_response20.dart';

/// State for App Dev Exp Feature.
class AppDevExperienceFeatureStateResponse2 {
  /// Status of subcomponent that detects configured Service Mesh resources.
  final StatusResponse20 networkingInstallSucceeded;

  AppDevExperienceFeatureStateResponse2({
    required this.networkingInstallSucceeded,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkingInstallSucceeded'] = networkingInstallSucceeded.toMap();
    return map;
  }

  factory AppDevExperienceFeatureStateResponse2.fromMap(
      Map<String, dynamic> map) {
    return AppDevExperienceFeatureStateResponse2(
      networkingInstallSucceeded: StatusResponse20.fromMap(
          (map['networkingInstallSucceeded'] as Map).cast<String, dynamic>()),
    );
  }
}
