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
  final GmsaAuthenticationPropertiesResponse? authenticationProperties;
  /// Class for automation artifact.
  final AutomationArtifactResponse? automationArtifactProperties;
  /// Gets or sets the bindings for the application.
  final List<BindingResponse>? bindings;
  /// Gets or sets the build container images.
  final List<ContainerImagePropertiesResponse>? buildContainerImages;
  /// Class for AKSDeployment Properties.
  final AKSDeploymentPropertiesResponse? clusterProperties;
  /// Gets or sets application configuration.
  final List<WebApplicationConfigurationResponse>? configurations;
  /// Class for container image properties.
  final ContainerImagePropertiesResponse? containerImageProperties;
  /// Gets or sets the deployment history.
  final List<DeployedResourcesPropertiesResponse> deploymentHistory;
  /// Gets or sets the deployment name prefix.
  final String? deploymentNamePrefix;
  /// AKS Deployment Specification.
  final AKSDeploymentSpecificationResponse? deploymentSpec;
  /// Gets or sets application directories.
  final List<WebApplicationDirectoryResponse>? directories;
  /// Resource Requirements.
  final ResourceRequirementsResponse? limits;
  /// Class for app insight monitoring properties.
  final AppInsightMonitoringPropertiesResponse? monitoringProperties;
  /// Resource Requirements.
  final ResourceRequirementsResponse? requests;
  /// Gets or sets the target platform managed identity.
  final String? targetPlatformIdentity;

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
  IISAKSWorkloadDeploymentResponse({
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
      'authenticationProperties': ?authenticationProperties == null ? null : authenticationProperties!.toMap(),
      'automationArtifactProperties': ?automationArtifactProperties == null ? null : automationArtifactProperties!.toMap(),
      'bindings': ?bindings == null ? null : pulumi.Input.encodeList<BindingResponse, Map<String, dynamic>>(bindings!, (value) => value.toMap()),
      'buildContainerImages': ?buildContainerImages == null ? null : pulumi.Input.encodeList<ContainerImagePropertiesResponse, Map<String, dynamic>>(buildContainerImages!, (value) => value.toMap()),
      'clusterProperties': ?clusterProperties == null ? null : clusterProperties!.toMap(),
      'configurations': ?configurations == null ? null : pulumi.Input.encodeList<WebApplicationConfigurationResponse, Map<String, dynamic>>(configurations!, (value) => value.toMap()),
      'containerImageProperties': ?containerImageProperties == null ? null : containerImageProperties!.toMap(),
      'deploymentHistory': pulumi.Input.encodeList<DeployedResourcesPropertiesResponse, Map<String, dynamic>>(deploymentHistory, (value) => value.toMap()),
      'deploymentNamePrefix': ?deploymentNamePrefix,
      'deploymentSpec': ?deploymentSpec == null ? null : deploymentSpec!.toMap(),
      'directories': ?directories == null ? null : pulumi.Input.encodeList<WebApplicationDirectoryResponse, Map<String, dynamic>>(directories!, (value) => value.toMap()),
      'limits': ?limits == null ? null : limits!.toMap(),
      'monitoringProperties': ?monitoringProperties == null ? null : monitoringProperties!.toMap(),
      'requests': ?requests == null ? null : requests!.toMap(),
      'targetPlatformIdentity': ?targetPlatformIdentity,
    };
  }

  factory IISAKSWorkloadDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return IISAKSWorkloadDeploymentResponse(
      authenticationProperties: map['authenticationProperties'] == null ? null : GmsaAuthenticationPropertiesResponse.fromMap((map['authenticationProperties'] as Map).cast<String, dynamic>()),
      automationArtifactProperties: map['automationArtifactProperties'] == null ? null : AutomationArtifactResponse.fromMap((map['automationArtifactProperties'] as Map).cast<String, dynamic>()),
      bindings: map['bindings'] == null ? null : pulumi.Input.decodeList<BindingResponse>(map['bindings'], (value) => BindingResponse.fromMap((value as Map).cast<String, dynamic>())),
      buildContainerImages: map['buildContainerImages'] == null ? null : pulumi.Input.decodeList<ContainerImagePropertiesResponse>(map['buildContainerImages'], (value) => ContainerImagePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      clusterProperties: map['clusterProperties'] == null ? null : AKSDeploymentPropertiesResponse.fromMap((map['clusterProperties'] as Map).cast<String, dynamic>()),
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<WebApplicationConfigurationResponse>(map['configurations'], (value) => WebApplicationConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      containerImageProperties: map['containerImageProperties'] == null ? null : ContainerImagePropertiesResponse.fromMap((map['containerImageProperties'] as Map).cast<String, dynamic>()),
      deploymentHistory: pulumi.Input.decodeList<DeployedResourcesPropertiesResponse>(map['deploymentHistory'], (value) => DeployedResourcesPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      deploymentNamePrefix: map['deploymentNamePrefix'] == null ? null : map['deploymentNamePrefix'] as String,
      deploymentSpec: map['deploymentSpec'] == null ? null : AKSDeploymentSpecificationResponse.fromMap((map['deploymentSpec'] as Map).cast<String, dynamic>()),
      directories: map['directories'] == null ? null : pulumi.Input.decodeList<WebApplicationDirectoryResponse>(map['directories'], (value) => WebApplicationDirectoryResponse.fromMap((value as Map).cast<String, dynamic>())),
      limits: map['limits'] == null ? null : ResourceRequirementsResponse.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      monitoringProperties: map['monitoringProperties'] == null ? null : AppInsightMonitoringPropertiesResponse.fromMap((map['monitoringProperties'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null ? null : ResourceRequirementsResponse.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      targetPlatformIdentity: map['targetPlatformIdentity'] == null ? null : map['targetPlatformIdentity'] as String,
    );
  }
}

