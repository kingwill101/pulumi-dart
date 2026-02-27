// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../feature_membership_configmanagement_config_sync_deployment_override_container/feature_membership_configmanagement_config_sync_deployment_override_container.dart';

class FeatureMembershipConfigmanagementConfigSyncDeploymentOverride {
  /// The override configurations for the containers in the Deployment. Structure is documented below.
  final List<
          FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer>?
      containers;

  /// The name of the Deployment.
  final String? deploymentName;

  /// The namespace of the Deployment.
  final String? deploymentNamespace;

  FeatureMembershipConfigmanagementConfigSyncDeploymentOverride({
    this.containers,
    this.deploymentName,
    this.deploymentNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] = pulumi.Input.encodeList<
          FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer,
          Map<String, dynamic>>(containersValue, (value) => value.toMap());
    }
    final deploymentNameValue = deploymentName;
    if (deploymentNameValue != null) {
      map['deploymentName'] = deploymentNameValue;
    }
    final deploymentNamespaceValue = deploymentNamespace;
    if (deploymentNamespaceValue != null) {
      map['deploymentNamespace'] = deploymentNamespaceValue;
    }
    return map;
  }

  factory FeatureMembershipConfigmanagementConfigSyncDeploymentOverride.fromMap(
      Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagementConfigSyncDeploymentOverride(
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeList<
                  FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer>(
              map['containers'],
              (value) =>
                  FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer
                      .fromMap((value as Map).cast<String, dynamic>())),
      deploymentName: map['deploymentName'] == null
          ? null
          : map['deploymentName'] as String,
      deploymentNamespace: map['deploymentNamespace'] == null
          ? null
          : map['deploymentNamespace'] as String,
    );
  }
}
