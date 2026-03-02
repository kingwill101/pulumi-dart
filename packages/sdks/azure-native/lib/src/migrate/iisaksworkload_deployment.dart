// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aksdeployment_properties.dart';
import 'aksdeployment_specification.dart';
import 'app_insight_monitoring_properties.dart';
import 'automation_artifact.dart';
import 'binding.dart';
import 'container_image_properties.dart';
import 'gmsa_authentication_properties.dart';
import 'resource_requirements.dart';
import 'web_application_configuration.dart';
import 'web_application_directory.dart';

/// IIS AKS workload deployment.
class IISAKSWorkloadDeployment {
  /// Class for GMSA authentication details to configure Active Directory connectivity.
  final pulumi.Input<GmsaAuthenticationProperties>? authenticationProperties;
  /// Class for automation artifact.
  final pulumi.Input<AutomationArtifact>? automationArtifactProperties;
  /// Gets or sets the bindings for the application.
  final pulumi.Input<List<Binding>>? bindings;
  /// Gets or sets the build container images.
  final pulumi.Input<List<ContainerImageProperties>>? buildContainerImages;
  /// Class for AKSDeployment Properties.
  final pulumi.Input<AKSDeploymentProperties>? clusterProperties;
  /// Gets or sets application configuration.
  final pulumi.Input<List<WebApplicationConfiguration>>? configurations;
  /// Class for container image properties.
  final pulumi.Input<ContainerImageProperties>? containerImageProperties;
  /// Gets or sets the deployment name prefix.
  final pulumi.Input<String>? deploymentNamePrefix;
  /// AKS Deployment Specification.
  final pulumi.Input<AKSDeploymentSpecification>? deploymentSpec;
  /// Gets or sets application directories.
  final pulumi.Input<List<WebApplicationDirectory>>? directories;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirements>? limits;
  /// Class for app insight monitoring properties.
  final pulumi.Input<AppInsightMonitoringProperties>? monitoringProperties;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirements>? requests;
  /// Gets or sets the target platform managed identity.
  final pulumi.Input<String>? targetPlatformIdentity;

  /// Creates a new [IISAKSWorkloadDeployment].
  /// [authenticationProperties] Class for GMSA authentication details to configure Active Directory connectivity.
  /// [automationArtifactProperties] Class for automation artifact.
  /// [bindings] Gets or sets the bindings for the application.
  /// [buildContainerImages] Gets or sets the build container images.
  /// [clusterProperties] Class for AKSDeployment Properties.
  /// [configurations] Gets or sets application configuration.
  /// [containerImageProperties] Class for container image properties.
  /// [deploymentNamePrefix] Gets or sets the deployment name prefix.
  /// [deploymentSpec] AKS Deployment Specification.
  /// [directories] Gets or sets application directories.
  /// [limits] Resource Requirements.
  /// [monitoringProperties] Class for app insight monitoring properties.
  /// [requests] Resource Requirements.
  /// [targetPlatformIdentity] Gets or sets the target platform managed identity.
  IISAKSWorkloadDeployment({
    this.authenticationProperties,
    this.automationArtifactProperties,
    this.bindings,
    this.buildContainerImages,
    this.clusterProperties,
    this.configurations,
    this.containerImageProperties,
    this.deploymentNamePrefix,
    this.deploymentSpec,
    this.directories,
    this.limits,
    this.monitoringProperties,
    this.requests,
    this.targetPlatformIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationProperties': ?pulumi.Input.mapOptionalInputValue<GmsaAuthenticationProperties, Map<String, dynamic>>(authenticationProperties, (value) => value.toMap()),
      'automationArtifactProperties': ?pulumi.Input.mapOptionalInputValue<AutomationArtifact, Map<String, dynamic>>(automationArtifactProperties, (value) => value.toMap()),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<Binding>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<Binding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'buildContainerImages': ?pulumi.Input.mapOptionalInputValue<List<ContainerImageProperties>, List<Map<String, dynamic>>>(buildContainerImages, (value) => pulumi.Input.encodeList<ContainerImageProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterProperties': ?pulumi.Input.mapOptionalInputValue<AKSDeploymentProperties, Map<String, dynamic>>(clusterProperties, (value) => value.toMap()),
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<WebApplicationConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerImageProperties': ?pulumi.Input.mapOptionalInputValue<ContainerImageProperties, Map<String, dynamic>>(containerImageProperties, (value) => value.toMap()),
      'deploymentNamePrefix': ?deploymentNamePrefix,
      'deploymentSpec': ?pulumi.Input.mapOptionalInputValue<AKSDeploymentSpecification, Map<String, dynamic>>(deploymentSpec, (value) => value.toMap()),
      'directories': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationDirectory>, List<Map<String, dynamic>>>(directories, (value) => pulumi.Input.encodeList<WebApplicationDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?pulumi.Input.mapOptionalInputValue<ResourceRequirements, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'monitoringProperties': ?pulumi.Input.mapOptionalInputValue<AppInsightMonitoringProperties, Map<String, dynamic>>(monitoringProperties, (value) => value.toMap()),
      'requests': ?pulumi.Input.mapOptionalInputValue<ResourceRequirements, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'targetPlatformIdentity': ?targetPlatformIdentity,
    };
  }

  factory IISAKSWorkloadDeployment.fromMap(Map<String, dynamic> map) {
    return IISAKSWorkloadDeployment(
      authenticationProperties: map['authenticationProperties'] == null ? null : (GmsaAuthenticationProperties.fromMap((map['authenticationProperties'] as Map).cast<String, dynamic>())).input(),
      automationArtifactProperties: map['automationArtifactProperties'] == null ? null : (AutomationArtifact.fromMap((map['automationArtifactProperties'] as Map).cast<String, dynamic>())).input(),
      bindings: map['bindings'] == null ? null : (pulumi.Input.decodeList<Binding>(map['bindings'], (value) => Binding.fromMap((value as Map).cast<String, dynamic>()))).input(),
      buildContainerImages: map['buildContainerImages'] == null ? null : (pulumi.Input.decodeList<ContainerImageProperties>(map['buildContainerImages'], (value) => ContainerImageProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clusterProperties: map['clusterProperties'] == null ? null : (AKSDeploymentProperties.fromMap((map['clusterProperties'] as Map).cast<String, dynamic>())).input(),
      configurations: map['configurations'] == null ? null : (pulumi.Input.decodeList<WebApplicationConfiguration>(map['configurations'], (value) => WebApplicationConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerImageProperties: map['containerImageProperties'] == null ? null : (ContainerImageProperties.fromMap((map['containerImageProperties'] as Map).cast<String, dynamic>())).input(),
      deploymentNamePrefix: map['deploymentNamePrefix'] == null ? null : (map['deploymentNamePrefix'] as String).input(),
      deploymentSpec: map['deploymentSpec'] == null ? null : (AKSDeploymentSpecification.fromMap((map['deploymentSpec'] as Map).cast<String, dynamic>())).input(),
      directories: map['directories'] == null ? null : (pulumi.Input.decodeList<WebApplicationDirectory>(map['directories'], (value) => WebApplicationDirectory.fromMap((value as Map).cast<String, dynamic>()))).input(),
      limits: map['limits'] == null ? null : (ResourceRequirements.fromMap((map['limits'] as Map).cast<String, dynamic>())).input(),
      monitoringProperties: map['monitoringProperties'] == null ? null : (AppInsightMonitoringProperties.fromMap((map['monitoringProperties'] as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : (ResourceRequirements.fromMap((map['requests'] as Map).cast<String, dynamic>())).input(),
      targetPlatformIdentity: map['targetPlatformIdentity'] == null ? null : (map['targetPlatformIdentity'] as String).input(),
    );
  }
}

