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
  const IISAKSWorkloadDeployment({
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
      authenticationProperties: (() { final guardedValue = map['authenticationProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GmsaAuthenticationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automationArtifactProperties: (() { final guardedValue = map['automationArtifactProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationArtifact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Binding>(guardedValue, (value) => Binding.fromMap((value as Map).cast<String, dynamic>()))); })(),
      buildContainerImages: (() { final guardedValue = map['buildContainerImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerImageProperties>(guardedValue, (value) => ContainerImageProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterProperties: (() { final guardedValue = map['clusterProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AKSDeploymentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebApplicationConfiguration>(guardedValue, (value) => WebApplicationConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containerImageProperties: (() { final guardedValue = map['containerImageProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerImageProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentNamePrefix: (() { final guardedValue = map['deploymentNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentSpec: (() { final guardedValue = map['deploymentSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AKSDeploymentSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      directories: (() { final guardedValue = map['directories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebApplicationDirectory>(guardedValue, (value) => WebApplicationDirectory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringProperties: (() { final guardedValue = map['monitoringProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppInsightMonitoringProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetPlatformIdentity: (() { final guardedValue = map['targetPlatformIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
