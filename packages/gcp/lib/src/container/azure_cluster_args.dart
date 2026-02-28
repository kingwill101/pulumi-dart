// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_cluster_authorization.dart';
import 'azure_cluster_azure_services_authentication.dart';
import 'azure_cluster_control_plane.dart';
import 'azure_cluster_fleet.dart';
import 'azure_cluster_logging_config.dart';
import 'azure_cluster_networking.dart';

/// {@template pulumi_container_azure_cluster_azure_cluster_args_doc}
/// The set of arguments for AzureCluster.
/// {@endtemplate}
/// {@macro pulumi_container_azure_cluster_azure_cluster_args_doc}
class AzureClusterArgs {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Configuration related to the cluster RBAC settings.
  final pulumi.Input<AzureClusterAuthorization> authorization;

  /// The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  final pulumi.Input<String> azureRegion;

  /// Azure authentication configuration for management of Azure resources
  final pulumi.Input<AzureClusterAzureServicesAuthentication>?
      azureServicesAuthentication;

  /// Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/<project-number>/locations/<region>/azureClients/<client-id>`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  final pulumi.Input<String>? client;

  /// Configuration related to the cluster control plane.
  final pulumi.Input<AzureClusterControlPlane> controlPlane;

  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  final pulumi.Input<String>? description;

  /// Fleet configuration.
  final pulumi.Input<AzureClusterFleet> fleet;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Logging configuration.
  final pulumi.Input<AzureClusterLoggingConfig>? loggingConfig;

  /// The name of this resource.
  final pulumi.Input<String>? name;

  /// Cluster-wide networking configuration.
  final pulumi.Input<AzureClusterNetworking> networking;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  final pulumi.Input<String> resourceGroupId;

  /// Creates a new [AzureClusterArgs].
  /// [annotations] Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [authorization] Configuration related to the cluster RBAC settings.
  /// [azureRegion] The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  /// [azureServicesAuthentication] Azure authentication configuration for management of Azure resources
  /// [client] Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/<project-number>/locations/<region>/azureClients/<client-id>`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  /// [controlPlane] Configuration related to the cluster control plane.
  /// [description] Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  /// [fleet] Fleet configuration.
  /// [location] The location for the resource
  /// [loggingConfig] Logging configuration.
  /// [name] The name of this resource.
  /// [networking] Cluster-wide networking configuration.
  /// [project] The project for the resource
  /// [resourceGroupId] The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  AzureClusterArgs({
    Map<String, String>? annotations,
    required AzureClusterAuthorization authorization,
    required String azureRegion,
    AzureClusterAzureServicesAuthentication? azureServicesAuthentication,
    String? client,
    required AzureClusterControlPlane controlPlane,
    String? description,
    required AzureClusterFleet fleet,
    required String location,
    AzureClusterLoggingConfig? loggingConfig,
    String? name,
    required AzureClusterNetworking networking,
    String? project,
    required String resourceGroupId,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        authorization =
            pulumi.Input.asInput<AzureClusterAuthorization>(authorization),
        azureRegion = pulumi.Input.asInput<String>(azureRegion),
        azureServicesAuthentication = pulumi.Input.asOptionalInput<
                AzureClusterAzureServicesAuthentication>(
            azureServicesAuthentication),
        client = pulumi.Input.asOptionalInput<String>(client),
        controlPlane =
            pulumi.Input.asInput<AzureClusterControlPlane>(controlPlane),
        description = pulumi.Input.asOptionalInput<String>(description),
        fleet = pulumi.Input.asInput<AzureClusterFleet>(fleet),
        location = pulumi.Input.asInput<String>(location),
        loggingConfig = pulumi.Input.asOptionalInput<AzureClusterLoggingConfig>(
            loggingConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        networking = pulumi.Input.asInput<AzureClusterNetworking>(networking),
        project = pulumi.Input.asOptionalInput<String>(project),
        resourceGroupId = pulumi.Input.asInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['authorization'] = pulumi.Input.mapInputValue<AzureClusterAuthorization,
        Map<String, dynamic>>(authorization, (value) => value.toMap());
    map['azureRegion'] = azureRegion;
    final azureServicesAuthenticationValue = azureServicesAuthentication;
    if (azureServicesAuthenticationValue != null) {
      map['azureServicesAuthentication'] = pulumi.Input.mapOptionalInputValue<
              AzureClusterAzureServicesAuthentication, Map<String, dynamic>>(
          azureServicesAuthenticationValue, (value) => value.toMap());
    }
    final clientValue = client;
    if (clientValue != null) {
      map['client'] = clientValue;
    }
    map['controlPlane'] = pulumi.Input.mapInputValue<AzureClusterControlPlane,
        Map<String, dynamic>>(controlPlane, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['fleet'] =
        pulumi.Input.mapInputValue<AzureClusterFleet, Map<String, dynamic>>(
            fleet, (value) => value.toMap());
    map['location'] = location;
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          AzureClusterLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networking'] = pulumi.Input.mapInputValue<AzureClusterNetworking,
        Map<String, dynamic>>(networking, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceGroupId'] = resourceGroupId;
    return map;
  }

  factory AzureClusterArgs.fromMap(Map<String, dynamic> map) {
    return AzureClusterArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      authorization: AzureClusterAuthorization.fromMap(
          (map['authorization'] as Map).cast<String, dynamic>()),
      azureRegion: map['azureRegion'] as String,
      azureServicesAuthentication: map['azureServicesAuthentication'] == null
          ? null
          : AzureClusterAzureServicesAuthentication.fromMap(
              (map['azureServicesAuthentication'] as Map)
                  .cast<String, dynamic>()),
      client: map['client'] == null ? null : map['client'] as String,
      controlPlane: AzureClusterControlPlane.fromMap(
          (map['controlPlane'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      fleet: AzureClusterFleet.fromMap(
          (map['fleet'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      loggingConfig: map['loggingConfig'] == null
          ? null
          : AzureClusterLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      networking: AzureClusterNetworking.fromMap(
          (map['networking'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
    );
  }
}
