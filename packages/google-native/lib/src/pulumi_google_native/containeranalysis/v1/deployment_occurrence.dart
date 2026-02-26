// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_occurrence_platform.dart';

/// The period during which some deployable was active in a runtime.
class DeploymentOccurrence {
  /// Address of the runtime element hosting this deployment.
  final String? address;

  /// Configuration used to create this deployment.
  final String? config;

  /// Beginning of the lifetime of this deployment.
  final String deployTime;

  /// Platform hosting this deployment.
  final DeploymentOccurrencePlatform? platform;

  /// End of the lifetime of this deployment.
  final String? undeployTime;

  /// Identity of the user that triggered this deployment.
  final String? userEmail;

  DeploymentOccurrence({
    this.address,
    this.config,
    required this.deployTime,
    this.platform,
    this.undeployTime,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue;
    }
    map['deployTime'] = deployTime;
    final platformValue = platform;
    if (platformValue != null) {
      map['platform'] = platformValue.value;
    }
    final undeployTimeValue = undeployTime;
    if (undeployTimeValue != null) {
      map['undeployTime'] = undeployTimeValue;
    }
    final userEmailValue = userEmail;
    if (userEmailValue != null) {
      map['userEmail'] = userEmailValue;
    }
    return map;
  }

  factory DeploymentOccurrence.fromMap(Map<String, dynamic> map) {
    return DeploymentOccurrence(
      address: map['address'] == null ? null : map['address'] as String,
      config: map['config'] == null ? null : map['config'] as String,
      deployTime: map['deployTime'] as String,
      platform: map['platform'] == null
          ? null
          : DeploymentOccurrencePlatform.fromValue(map['platform'] as String),
      undeployTime:
          map['undeployTime'] == null ? null : map['undeployTime'] as String,
      userEmail: map['userEmail'] == null ? null : map['userEmail'] as String,
    );
  }
}
