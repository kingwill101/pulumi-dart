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
  final GmsaAuthenticationProperties? authenticationProperties;
  /// Class for automation artifact.
  final AutomationArtifact? automationArtifactProperties;
  /// Gets or sets the bindings for the application.
  final List<Binding>? bindings;
  /// Gets or sets the build container images.
  final List<ContainerImageProperties>? buildContainerImages;
  /// Class for AKSDeployment Properties.
  final AKSDeploymentProperties? clusterProperties;
  /// Gets or sets application configuration.
  final List<WebApplicationConfiguration>? configurations;
  /// Class for container image properties.
  final ContainerImageProperties? containerImageProperties;
  /// Gets or sets the deployment name prefix.
  final String? deploymentNamePrefix;
  /// AKS Deployment Specification.
  final AKSDeploymentSpecification? deploymentSpec;
  /// Gets or sets application directories.
  final List<WebApplicationDirectory>? directories;
  /// Resource Requirements.
  final ResourceRequirements? limits;
  /// Class for app insight monitoring properties.
  final AppInsightMonitoringProperties? monitoringProperties;
  /// Resource Requirements.
  final ResourceRequirements? requests;
  /// Gets or sets the target platform managed identity.
  final String? targetPlatformIdentity;

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
      'authenticationProperties': ?authenticationProperties == null ? null : authenticationProperties!.toMap(),
      'automationArtifactProperties': ?automationArtifactProperties == null ? null : automationArtifactProperties!.toMap(),
      'bindings': ?bindings == null ? null : pulumi.Input.encodeList<Binding, Map<String, dynamic>>(bindings!, (value) => value.toMap()),
      'buildContainerImages': ?buildContainerImages == null ? null : pulumi.Input.encodeList<ContainerImageProperties, Map<String, dynamic>>(buildContainerImages!, (value) => value.toMap()),
      'clusterProperties': ?clusterProperties == null ? null : clusterProperties!.toMap(),
      'configurations': ?configurations == null ? null : pulumi.Input.encodeList<WebApplicationConfiguration, Map<String, dynamic>>(configurations!, (value) => value.toMap()),
      'containerImageProperties': ?containerImageProperties == null ? null : containerImageProperties!.toMap(),
      'deploymentNamePrefix': ?deploymentNamePrefix,
      'deploymentSpec': ?deploymentSpec == null ? null : deploymentSpec!.toMap(),
      'directories': ?directories == null ? null : pulumi.Input.encodeList<WebApplicationDirectory, Map<String, dynamic>>(directories!, (value) => value.toMap()),
      'limits': ?limits == null ? null : limits!.toMap(),
      'monitoringProperties': ?monitoringProperties == null ? null : monitoringProperties!.toMap(),
      'requests': ?requests == null ? null : requests!.toMap(),
      'targetPlatformIdentity': ?targetPlatformIdentity,
    };
  }

  factory IISAKSWorkloadDeployment.fromMap(Map<String, dynamic> map) {
    return IISAKSWorkloadDeployment(
      authenticationProperties: map['authenticationProperties'] == null ? null : GmsaAuthenticationProperties.fromMap((map['authenticationProperties'] as Map).cast<String, dynamic>()),
      automationArtifactProperties: map['automationArtifactProperties'] == null ? null : AutomationArtifact.fromMap((map['automationArtifactProperties'] as Map).cast<String, dynamic>()),
      bindings: map['bindings'] == null ? null : pulumi.Input.decodeList<Binding>(map['bindings'], (value) => Binding.fromMap((value as Map).cast<String, dynamic>())),
      buildContainerImages: map['buildContainerImages'] == null ? null : pulumi.Input.decodeList<ContainerImageProperties>(map['buildContainerImages'], (value) => ContainerImageProperties.fromMap((value as Map).cast<String, dynamic>())),
      clusterProperties: map['clusterProperties'] == null ? null : AKSDeploymentProperties.fromMap((map['clusterProperties'] as Map).cast<String, dynamic>()),
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<WebApplicationConfiguration>(map['configurations'], (value) => WebApplicationConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      containerImageProperties: map['containerImageProperties'] == null ? null : ContainerImageProperties.fromMap((map['containerImageProperties'] as Map).cast<String, dynamic>()),
      deploymentNamePrefix: map['deploymentNamePrefix'] == null ? null : map['deploymentNamePrefix'] as String,
      deploymentSpec: map['deploymentSpec'] == null ? null : AKSDeploymentSpecification.fromMap((map['deploymentSpec'] as Map).cast<String, dynamic>()),
      directories: map['directories'] == null ? null : pulumi.Input.decodeList<WebApplicationDirectory>(map['directories'], (value) => WebApplicationDirectory.fromMap((value as Map).cast<String, dynamic>())),
      limits: map['limits'] == null ? null : ResourceRequirements.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      monitoringProperties: map['monitoringProperties'] == null ? null : AppInsightMonitoringProperties.fromMap((map['monitoringProperties'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null ? null : ResourceRequirements.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      targetPlatformIdentity: map['targetPlatformIdentity'] == null ? null : map['targetPlatformIdentity'] as String,
    );
  }
}

