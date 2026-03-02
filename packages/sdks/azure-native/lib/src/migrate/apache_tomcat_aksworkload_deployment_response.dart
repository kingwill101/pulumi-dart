// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aksdeployment_properties_response.dart';
import 'aksdeployment_specification_response.dart';
import 'app_insight_monitoring_properties_response.dart';
import 'automation_artifact_response.dart';
import 'binding_response.dart';
import 'container_image_properties_response.dart';
import 'deployed_resources_properties_response.dart';
import 'resource_requirements_response.dart';
import 'web_application_configuration_response.dart';
import 'web_application_directory_response.dart';

/// ApacheTomcat web application.
class ApacheTomcatAKSWorkloadDeploymentResponse {
  /// Class for automation artifact.
  final pulumi.Input<AutomationArtifactResponse>? automationArtifactProperties;
  /// Gets or sets the bindings for the application.
  final pulumi.Input<List<BindingResponse>>? bindings;
  /// Gets or sets the build container images.
  final pulumi.Input<List<ContainerImagePropertiesResponse>>? buildContainerImages;
  /// Class for AKSDeployment Properties.
  final pulumi.Input<AKSDeploymentPropertiesResponse>? clusterProperties;
  /// Gets or sets application configuration.
  final pulumi.Input<List<WebApplicationConfigurationResponse>>? configurations;
  /// Class for container image properties.
  final pulumi.Input<ContainerImagePropertiesResponse>? containerImageProperties;
  /// Gets or sets the deployment history.
  final pulumi.Input<List<DeployedResourcesPropertiesResponse>> deploymentHistory;
  /// Gets or sets the deployment name prefix.
  final pulumi.Input<String>? deploymentNamePrefix;
  /// AKS Deployment Specification.
  final pulumi.Input<AKSDeploymentSpecificationResponse>? deploymentSpec;
  /// Gets or sets application directories.
  final pulumi.Input<List<WebApplicationDirectoryResponse>>? directories;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirementsResponse>? limits;
  /// Class for app insight monitoring properties.
  final pulumi.Input<AppInsightMonitoringPropertiesResponse>? monitoringProperties;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirementsResponse>? requests;
  /// Gets or sets the target platform managed identity.
  final pulumi.Input<String>? targetPlatformIdentity;

  /// Creates a new [ApacheTomcatAKSWorkloadDeploymentResponse].
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
  ApacheTomcatAKSWorkloadDeploymentResponse({
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

  factory ApacheTomcatAKSWorkloadDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return ApacheTomcatAKSWorkloadDeploymentResponse(
      automationArtifactProperties: map['automationArtifactProperties'] == null ? null : (AutomationArtifactResponse.fromMap((map['automationArtifactProperties']! as Map).cast<String, dynamic>())).input(),
      bindings: map['bindings'] == null ? null : (pulumi.Input.decodeList<BindingResponse>(map['bindings']!, (value) => BindingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      buildContainerImages: map['buildContainerImages'] == null ? null : (pulumi.Input.decodeList<ContainerImagePropertiesResponse>(map['buildContainerImages']!, (value) => ContainerImagePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clusterProperties: map['clusterProperties'] == null ? null : (AKSDeploymentPropertiesResponse.fromMap((map['clusterProperties']! as Map).cast<String, dynamic>())).input(),
      configurations: map['configurations'] == null ? null : (pulumi.Input.decodeList<WebApplicationConfigurationResponse>(map['configurations']!, (value) => WebApplicationConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerImageProperties: map['containerImageProperties'] == null ? null : (ContainerImagePropertiesResponse.fromMap((map['containerImageProperties']! as Map).cast<String, dynamic>())).input(),
      deploymentHistory: (pulumi.Input.decodeList<DeployedResourcesPropertiesResponse>(map['deploymentHistory'], (value) => DeployedResourcesPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deploymentNamePrefix: map['deploymentNamePrefix'] == null ? null : (map['deploymentNamePrefix']! as String).input(),
      deploymentSpec: map['deploymentSpec'] == null ? null : (AKSDeploymentSpecificationResponse.fromMap((map['deploymentSpec']! as Map).cast<String, dynamic>())).input(),
      directories: map['directories'] == null ? null : (pulumi.Input.decodeList<WebApplicationDirectoryResponse>(map['directories']!, (value) => WebApplicationDirectoryResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      limits: map['limits'] == null ? null : (ResourceRequirementsResponse.fromMap((map['limits']! as Map).cast<String, dynamic>())).input(),
      monitoringProperties: map['monitoringProperties'] == null ? null : (AppInsightMonitoringPropertiesResponse.fromMap((map['monitoringProperties']! as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : (ResourceRequirementsResponse.fromMap((map['requests']! as Map).cast<String, dynamic>())).input(),
      targetPlatformIdentity: map['targetPlatformIdentity'] == null ? null : (map['targetPlatformIdentity']! as String).input(),
    );
  }
}

