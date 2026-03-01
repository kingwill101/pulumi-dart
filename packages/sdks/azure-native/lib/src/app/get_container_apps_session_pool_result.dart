// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_container_template_response.dart';
import 'dynamic_pool_configuration_response.dart';
import 'managed_identity_setting_response.dart';
import 'managed_service_identity_response.dart';
import 'scale_configuration_response.dart';
import 'session_network_configuration_response.dart';
import 'session_pool_secret_response.dart';
import 'system_data_response.dart';

/// Result data returned by getContainerAppsSessionPool.
class GetContainerAppsSessionPoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The container type of the sessions.
  final String? containerType;
  /// The custom container configuration if the containerType is CustomContainer.
  final CustomContainerTemplateResponse? customContainerTemplate;
  /// The pool configuration if the poolManagementType is dynamic.
  final DynamicPoolConfigurationResponse? dynamicPoolConfiguration;
  /// Resource ID of the session pool's environment.
  final String? environmentId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed identities needed by a session pool to interact with other Azure services to not maintain any secrets or credentials in code.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// Optional settings for a Managed Identity that is assigned to the Session pool.
  final List<ManagedIdentitySettingResponse>? managedIdentitySettings;
  /// The name of the resource
  final String name;
  /// The number of nodes the session pool is using.
  final int nodeCount;
  /// The endpoint to manage the pool.
  final String poolManagementEndpoint;
  /// The pool management type of the session pool.
  final String? poolManagementType;
  /// Provisioning state of the session pool.
  final String provisioningState;
  /// The scale configuration of the session pool.
  final ScaleConfigurationResponse? scaleConfiguration;
  /// The secrets of the session pool.
  final List<SessionPoolSecretResponse>? secrets;
  /// The network configuration of the sessions in the session pool.
  final SessionNetworkConfigurationResponse? sessionNetworkConfiguration;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetContainerAppsSessionPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerType] The container type of the sessions.
  /// [customContainerTemplate] The custom container configuration if the containerType is CustomContainer.
  /// [dynamicPoolConfiguration] The pool configuration if the poolManagementType is dynamic.
  /// [environmentId] Resource ID of the session pool's environment.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed identities needed by a session pool to interact with other Azure services to not maintain any secrets or credentials in code.
  /// [location] The geo-location where the resource lives
  /// [managedIdentitySettings] Optional settings for a Managed Identity that is assigned to the Session pool.
  /// [name] The name of the resource
  /// [nodeCount] The number of nodes the session pool is using.
  /// [poolManagementEndpoint] The endpoint to manage the pool.
  /// [poolManagementType] The pool management type of the session pool.
  /// [provisioningState] Provisioning state of the session pool.
  /// [scaleConfiguration] The scale configuration of the session pool.
  /// [secrets] The secrets of the session pool.
  /// [sessionNetworkConfiguration] The network configuration of the sessions in the session pool.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetContainerAppsSessionPoolResult({
    required this.azureApiVersion,
    this.containerType,
    this.customContainerTemplate,
    this.dynamicPoolConfiguration,
    this.environmentId,
    required this.id,
    this.identity,
    required this.location,
    this.managedIdentitySettings,
    required this.name,
    required this.nodeCount,
    required this.poolManagementEndpoint,
    this.poolManagementType,
    required this.provisioningState,
    this.scaleConfiguration,
    this.secrets,
    this.sessionNetworkConfiguration,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'containerType': ?containerType,
      'customContainerTemplate': ?customContainerTemplate == null ? null : customContainerTemplate!.toMap(),
      'dynamicPoolConfiguration': ?dynamicPoolConfiguration == null ? null : dynamicPoolConfiguration!.toMap(),
      'environmentId': ?environmentId,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'managedIdentitySettings': ?managedIdentitySettings == null ? null : pulumi.Input.encodeList<ManagedIdentitySettingResponse, Map<String, dynamic>>(managedIdentitySettings!, (value) => value.toMap()),
      'name': name,
      'nodeCount': nodeCount,
      'poolManagementEndpoint': poolManagementEndpoint,
      'poolManagementType': ?poolManagementType,
      'provisioningState': provisioningState,
      'scaleConfiguration': ?scaleConfiguration == null ? null : scaleConfiguration!.toMap(),
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<SessionPoolSecretResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'sessionNetworkConfiguration': ?sessionNetworkConfiguration == null ? null : sessionNetworkConfiguration!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetContainerAppsSessionPoolResult.fromMap(Map<String, dynamic> map) {
    return GetContainerAppsSessionPoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      containerType: map['containerType'] == null ? null : map['containerType'] as String,
      customContainerTemplate: map['customContainerTemplate'] == null ? null : CustomContainerTemplateResponse.fromMap((map['customContainerTemplate'] as Map).cast<String, dynamic>()),
      dynamicPoolConfiguration: map['dynamicPoolConfiguration'] == null ? null : DynamicPoolConfigurationResponse.fromMap((map['dynamicPoolConfiguration'] as Map).cast<String, dynamic>()),
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      managedIdentitySettings: map['managedIdentitySettings'] == null ? null : pulumi.Input.decodeList<ManagedIdentitySettingResponse>(map['managedIdentitySettings'], (value) => ManagedIdentitySettingResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      poolManagementEndpoint: map['poolManagementEndpoint'] as String,
      poolManagementType: map['poolManagementType'] == null ? null : map['poolManagementType'] as String,
      provisioningState: map['provisioningState'] as String,
      scaleConfiguration: map['scaleConfiguration'] == null ? null : ScaleConfigurationResponse.fromMap((map['scaleConfiguration'] as Map).cast<String, dynamic>()),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<SessionPoolSecretResponse>(map['secrets'], (value) => SessionPoolSecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      sessionNetworkConfiguration: map['sessionNetworkConfiguration'] == null ? null : SessionNetworkConfigurationResponse.fromMap((map['sessionNetworkConfiguration'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

