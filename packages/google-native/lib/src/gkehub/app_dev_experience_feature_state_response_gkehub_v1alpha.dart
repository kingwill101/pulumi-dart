// ignore_for_file: unused_element, unnecessary_cast

import 'status_response_gkehub_v1alpha.dart';

/// State for App Dev Exp Feature.
class AppDevExperienceFeatureStateResponseGkehubV1alpha {
  /// Status of subcomponent that detects configured Service Mesh resources.
  final StatusResponseGkehubV1alpha networkingInstallSucceeded;

  /// Creates a new [AppDevExperienceFeatureStateResponseGkehubV1alpha].
  /// [networkingInstallSucceeded] Status of subcomponent that detects configured Service Mesh resources.
  AppDevExperienceFeatureStateResponseGkehubV1alpha({
    required this.networkingInstallSucceeded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkingInstallSucceeded': networkingInstallSucceeded.toMap(),
    };
  }

  factory AppDevExperienceFeatureStateResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppDevExperienceFeatureStateResponseGkehubV1alpha(
      networkingInstallSucceeded: StatusResponseGkehubV1alpha.fromMap(
        (map['networkingInstallSucceeded'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
