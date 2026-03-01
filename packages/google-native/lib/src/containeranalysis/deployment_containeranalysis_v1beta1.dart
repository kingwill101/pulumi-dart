// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_platform_containeranalysis_v1beta1.dart';

/// The period during which some deployable was active in a runtime.
class DeploymentContaineranalysisV1beta1 {
  /// Address of the runtime element hosting this deployment.
  final String? address;

  /// Configuration used to create this deployment.
  final String? config;

  /// Beginning of the lifetime of this deployment.
  final String deployTime;

  /// Platform hosting this deployment.
  final DeploymentPlatformContaineranalysisV1beta1? platform;

  /// End of the lifetime of this deployment.
  final String? undeployTime;

  /// Identity of the user that triggered this deployment.
  final String? userEmail;

  /// Creates a new [DeploymentContaineranalysisV1beta1].
  /// [address] Address of the runtime element hosting this deployment.
  /// [config] Configuration used to create this deployment.
  /// [deployTime] Beginning of the lifetime of this deployment.
  /// [platform] Platform hosting this deployment.
  /// [undeployTime] End of the lifetime of this deployment.
  /// [userEmail] Identity of the user that triggered this deployment.
  DeploymentContaineranalysisV1beta1({
    this.address,
    this.config,
    required this.deployTime,
    this.platform,
    this.undeployTime,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'config': ?config,
      'deployTime': deployTime,
      'platform': ?platform == null ? null : platform!.value,
      'undeployTime': ?undeployTime,
      'userEmail': ?userEmail,
    };
  }

  factory DeploymentContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return DeploymentContaineranalysisV1beta1(
      address: map['address'] == null ? null : map['address'] as String,
      config: map['config'] == null ? null : map['config'] as String,
      deployTime: map['deployTime'] as String,
      platform: map['platform'] == null
          ? null
          : DeploymentPlatformContaineranalysisV1beta1.fromValue(
              map['platform'] as String,
            ),
      undeployTime: map['undeployTime'] == null
          ? null
          : map['undeployTime'] as String,
      userEmail: map['userEmail'] == null ? null : map['userEmail'] as String,
    );
  }
}
