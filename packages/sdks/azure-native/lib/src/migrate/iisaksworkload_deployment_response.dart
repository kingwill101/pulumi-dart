// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aksdeployment_properties_response.dart';
import 'aksdeployment_specification_response.dart';
import 'app_insight_monitoring_properties_response.dart';
import 'automation_artifact_response.dart';
import 'binding_response.dart';
import 'container_image_properties_response.dart';
import 'deployed_resources_properties_response.dart';
import 'gmsa_authentication_properties_response.dart';
import 'resource_requirements_response.dart';
import 'web_application_configuration_response.dart';
import 'web_application_directory_response.dart';

/// IIS AKS workload deployment.
class IISAKSWorkloadDeploymentResponse {
  /// Class for GMSA authentication details to configure Active Directory connectivity.
  final pulumi.Input<GmsaAuthenticationPropertiesResponse?>? authenticationProperties;
  /// Class for automation artifact.
  final pulumi.Input<AutomationArtifactResponse?>? automationArtifactProperties;
  /// Gets or sets the bindings for the application.
  final pulumi.Input<List<BindingResponse>?>? bindings;
  /// Gets or sets the build container images.
  final pulumi.Input<List<ContainerImagePropertiesResponse>?>? buildContainerImages;
  /// Class for AKSDeployment Properties.
  final pulumi.Input<AKSDeploymentPropertiesResponse?>? clusterProperties;
  /// Gets or sets application configuration.
  final pulumi.Input<List<WebApplicationConfigurationResponse>?>? configurations;
  /// Class for container image properties.
  final pulumi.Input<ContainerImagePropertiesResponse?>? containerImageProperties;
  /// Gets or sets the deployment history.
  final pulumi.Input<List<DeployedResourcesPropertiesResponse>> deploymentHistory;
  /// Gets or sets the deployment name prefix.
  final pulumi.Input<String?>? deploymentNamePrefix;
  /// AKS Deployment Specification.
  final pulumi.Input<AKSDeploymentSpecificationResponse?>? deploymentSpec;
  /// Gets or sets application directories.
  final pulumi.Input<List<WebApplicationDirectoryResponse>?>? directories;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirementsResponse?>? limits;
  /// Class for app insight monitoring properties.
  final pulumi.Input<AppInsightMonitoringPropertiesResponse?>? monitoringProperties;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirementsResponse?>? requests;
  /// Gets or sets the target platform managed identity.
  final pulumi.Input<String?>? targetPlatformIdentity;

  /// Creates a new [IISAKSWorkloadDeploymentResponse].
  /// [authenticationProperties] Class for GMSA authentication details to configure Active Directory connectivity.
  /// [automationArtifactProperties] Class for automation artifact.
  /// [bindings] Gets or sets the bindings for the application.
  /// [buildContainerImages] Gets or sets the build container images.
  /// [clusterProperties] Class for AKSDeployment Properties.
  /// [configurations] Gets or sets application configuration.
  /// [containerImageProperties] Class for container image properties.
  /// [deploymentHistory] Gets or sets the deployment history.
  /// [deploymentNamePrefix] Gets or sets the deployment name prefix.
  /// [deploymentSpec] AKS Deployment Specification.
  /// [directories] Gets or sets application directories.
  /// [limits] Resource Requirements.
  /// [monitoringProperties] Class for app insight monitoring properties.
  /// [requests] Resource Requirements.
  /// [targetPlatformIdentity] Gets or sets the target platform managed identity.
  const IISAKSWorkloadDeploymentResponse({
    this.authenticationProperties,
    this.automationArtifactProperties,
    this.bindings,
    this.buildContainerImages,
    this.clusterProperties,
    this.configurations,
    this.containerImageProperties,
    required this.deploymentHistory,
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
      'authenticationProperties': ?pulumi.Input.mapOptionalInputValue<GmsaAuthenticationPropertiesResponse, Map<String, dynamic>>(authenticationProperties, (value) => value.toMap()),
      'automationArtifactProperties': ?pulumi.Input.mapOptionalInputValue<AutomationArtifactResponse, Map<String, dynamic>>(automationArtifactProperties, (value) => value.toMap()),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<BindingResponse>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<BindingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'buildContainerImages': ?pulumi.Input.mapOptionalInputValue<List<ContainerImagePropertiesResponse>, List<Map<String, dynamic>>>(buildContainerImages, (value) => pulumi.Input.encodeList<ContainerImagePropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterProperties': ?pulumi.Input.mapOptionalInputValue<AKSDeploymentPropertiesResponse, Map<String, dynamic>>(clusterProperties, (value) => value.toMap()),
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationConfigurationResponse>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<WebApplicationConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerImageProperties': ?pulumi.Input.mapOptionalInputValue<ContainerImagePropertiesResponse, Map<String, dynamic>>(containerImageProperties, (value) => value.toMap()),
      'deploymentHistory': pulumi.Input.mapInputValue<List<DeployedResourcesPropertiesResponse>, List<Map<String, dynamic>>>(deploymentHistory, (value) => pulumi.Input.encodeList<DeployedResourcesPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentNamePrefix': ?deploymentNamePrefix,
      'deploymentSpec': ?pulumi.Input.mapOptionalInputValue<AKSDeploymentSpecificationResponse, Map<String, dynamic>>(deploymentSpec, (value) => value.toMap()),
      'directories': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationDirectoryResponse>, List<Map<String, dynamic>>>(directories, (value) => pulumi.Input.encodeList<WebApplicationDirectoryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?pulumi.Input.mapOptionalInputValue<ResourceRequirementsResponse, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'monitoringProperties': ?pulumi.Input.mapOptionalInputValue<AppInsightMonitoringPropertiesResponse, Map<String, dynamic>>(monitoringProperties, (value) => value.toMap()),
      'requests': ?pulumi.Input.mapOptionalInputValue<ResourceRequirementsResponse, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'targetPlatformIdentity': ?targetPlatformIdentity,
    };
  }

  factory IISAKSWorkloadDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return IISAKSWorkloadDeploymentResponse(
      authenticationProperties: (() { final guardedValue = map['authenticationProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GmsaAuthenticationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automationArtifactProperties: (() { final guardedValue = map['automationArtifactProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationArtifactResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BindingResponse>(guardedValue, (value) => BindingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      buildContainerImages: (() { final guardedValue = map['buildContainerImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerImagePropertiesResponse>(guardedValue, (value) => ContainerImagePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterProperties: (() { final guardedValue = map['clusterProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AKSDeploymentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebApplicationConfigurationResponse>(guardedValue, (value) => WebApplicationConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containerImageProperties: (() { final guardedValue = map['containerImageProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerImagePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentHistory: pulumi.Input.fromValue(pulumi.Input.decodeList<DeployedResourcesPropertiesResponse>(map['deploymentHistory']!, (value) => DeployedResourcesPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))),
      deploymentNamePrefix: (() { final guardedValue = map['deploymentNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentSpec: (() { final guardedValue = map['deploymentSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AKSDeploymentSpecificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      directories: (() { final guardedValue = map['directories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebApplicationDirectoryResponse>(guardedValue, (value) => WebApplicationDirectoryResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirementsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringProperties: (() { final guardedValue = map['monitoringProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppInsightMonitoringPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirementsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetPlatformIdentity: (() { final guardedValue = map['targetPlatformIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
