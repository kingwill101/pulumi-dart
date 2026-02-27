// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_platform.dart';

/// The period during which some deployable was active in a runtime.
class DeploymentContaineranalysisV1alpha1 {
  /// Address of the runtime element hosting this deployment.
  final String? address;

  /// Configuration used to create this deployment.
  final String? config;

  /// Beginning of the lifetime of this deployment.
  final String? deployTime;

  /// Platform hosting this deployment.
  final DeploymentPlatform? platform;

  /// Resource URI for the artifact being deployed taken from the deployable field with the same name.
  final List<String>? resourceUri;

  /// End of the lifetime of this deployment.
  final String? undeployTime;

  /// Identity of the user that triggered this deployment.
  final String? userEmail;

  DeploymentContaineranalysisV1alpha1({
    this.address,
    this.config,
    this.deployTime,
    this.platform,
    this.resourceUri,
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
    final deployTimeValue = deployTime;
    if (deployTimeValue != null) {
      map['deployTime'] = deployTimeValue;
    }
    final platformValue = platform;
    if (platformValue != null) {
      map['platform'] = platformValue.value;
    }
    final resourceUriValue = resourceUri;
    if (resourceUriValue != null) {
      map['resourceUri'] = resourceUriValue;
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

  factory DeploymentContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DeploymentContaineranalysisV1alpha1(
      address: map['address'] == null ? null : map['address'] as String,
      config: map['config'] == null ? null : map['config'] as String,
      deployTime:
          map['deployTime'] == null ? null : map['deployTime'] as String,
      platform: map['platform'] == null
          ? null
          : DeploymentPlatform.fromValue(map['platform'] as String),
      resourceUri: map['resourceUri'] == null
          ? null
          : (map['resourceUri'] as List).cast<String>(),
      undeployTime:
          map['undeployTime'] == null ? null : map['undeployTime'] as String,
      userEmail: map['userEmail'] == null ? null : map['userEmail'] as String,
    );
  }
}
