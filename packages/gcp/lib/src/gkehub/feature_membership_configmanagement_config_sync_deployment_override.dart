// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_configmanagement_config_sync_deployment_override_container.dart';

class FeatureMembershipConfigmanagementConfigSyncDeploymentOverride {
  /// The override configurations for the containers in the Deployment. Structure is documented below.
  final List<
    FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer
  >?
  containers;

  /// The name of the Deployment.
  final String? deploymentName;

  /// The namespace of the Deployment.
  final String? deploymentNamespace;

  /// Creates a new [FeatureMembershipConfigmanagementConfigSyncDeploymentOverride].
  /// [containers] The override configurations for the containers in the Deployment. Structure is documented below.
  /// [deploymentName] The name of the Deployment.
  /// [deploymentNamespace] The namespace of the Deployment.
  FeatureMembershipConfigmanagementConfigSyncDeploymentOverride({
    this.containers,
    this.deploymentName,
    this.deploymentNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers == null
          ? null
          : pulumi.Input.encodeList<
              FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer,
              Map<String, dynamic>
            >(containers!, (value) => value.toMap()),
      'deploymentName': ?deploymentName,
      'deploymentNamespace': ?deploymentNamespace,
    };
  }

  factory FeatureMembershipConfigmanagementConfigSyncDeploymentOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureMembershipConfigmanagementConfigSyncDeploymentOverride(
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeList<
              FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer
            >(
              map['containers'],
              (value) =>
                  FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      deploymentName: map['deploymentName'] == null
          ? null
          : map['deploymentName'] as String,
      deploymentNamespace: map['deploymentNamespace'] == null
          ? null
          : map['deploymentNamespace'] as String,
    );
  }
}
