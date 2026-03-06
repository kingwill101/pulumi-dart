// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'created_by_response.dart';
import 'default_catalog_properties_response.dart';
import 'enhanced_security_compliance_definition_response.dart';
import 'managed_identity_configuration_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';
import 'workspace_custom_parameters_response.dart';
import 'workspace_properties_response_access_connector.dart';
import 'workspace_properties_response_encryption.dart';
import 'workspace_provider_authorization_response.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// Access Connector Resource that is going to be associated with Databricks Workspace
  final WorkspacePropertiesResponseAccessConnector? accessConnector;
  /// The workspace provider authorizations.
  final List<WorkspaceProviderAuthorizationResponse>? authorizations;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Indicates the Object ID, PUID and Application ID of entity that created the workspace.
  final CreatedByResponse? createdBy;
  /// Specifies the date and time when the workspace is created.
  final String createdDateTime;
  /// Properties for Default Catalog configuration during workspace creation.
  final DefaultCatalogPropertiesResponse? defaultCatalog;
  /// Gets or Sets Default Storage Firewall configuration information
  final String? defaultStorageFirewall;
  /// The resource Id of the managed disk encryption set.
  final String diskEncryptionSetId;
  /// Encryption properties for databricks workspace
  final WorkspacePropertiesResponseEncryption? encryption;
  /// Contains settings related to the Enhanced Security and Compliance Add-On.
  final EnhancedSecurityComplianceDefinitionResponse? enhancedSecurityCompliance;
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Indicates whether unity catalog enabled for the workspace or not.
  final bool isUcEnabled;
  /// The geo-location where the resource lives
  final String location;
  /// The details of Managed Identity of Disk Encryption Set used for Managed Disk Encryption
  final ManagedIdentityConfigurationResponse? managedDiskIdentity;
  /// The managed resource group Id.
  final String managedResourceGroupId;
  /// The name of the resource
  final String name;
  /// The workspace's custom parameters.
  final WorkspaceCustomParametersResponse? parameters;
  /// Private endpoint connections created on the workspace
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The workspace provisioning state.
  final String provisioningState;
  /// The network access type for accessing workspace. Set value to disabled to access workspace only via private link.
  final String? publicNetworkAccess;
  /// Gets or sets a value indicating whether data plane (clusters) to control plane communication happen over private endpoint. Supported values are 'AllRules' and 'NoAzureDatabricksRules'. 'NoAzureServiceRules' value is for internal use only.
  final String? requiredNsgRules;
  /// The SKU of the resource.
  final SkuResponse? sku;
  /// The details of Managed Identity of Storage Account
  final ManagedIdentityConfigurationResponse? storageAccountIdentity;
  /// The system metadata relating to this resource
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;
  /// The blob URI where the UI definition file is located.
  final String? uiDefinitionUri;
  /// Indicates the Object ID, PUID and Application ID of entity that last updated the workspace.
  final CreatedByResponse? updatedBy;
  /// The unique identifier of the databricks workspace in databricks control plane.
  final String workspaceId;
  /// The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net'
  final String workspaceUrl;

  /// Creates a new [GetWorkspaceResult].
  /// [accessConnector] Access Connector Resource that is going to be associated with Databricks Workspace
  /// [authorizations] The workspace provider authorizations.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdBy] Indicates the Object ID, PUID and Application ID of entity that created the workspace.
  /// [createdDateTime] Specifies the date and time when the workspace is created.
  /// [defaultCatalog] Properties for Default Catalog configuration during workspace creation.
  /// [defaultStorageFirewall] Gets or Sets Default Storage Firewall configuration information
  /// [diskEncryptionSetId] The resource Id of the managed disk encryption set.
  /// [encryption] Encryption properties for databricks workspace
  /// [enhancedSecurityCompliance] Contains settings related to the Enhanced Security and Compliance Add-On.
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isUcEnabled] Indicates whether unity catalog enabled for the workspace or not.
  /// [location] The geo-location where the resource lives
  /// [managedDiskIdentity] The details of Managed Identity of Disk Encryption Set used for Managed Disk Encryption
  /// [managedResourceGroupId] The managed resource group Id.
  /// [name] The name of the resource
  /// [parameters] The workspace's custom parameters.
  /// [privateEndpointConnections] Private endpoint connections created on the workspace
  /// [provisioningState] The workspace provisioning state.
  /// [publicNetworkAccess] The network access type for accessing workspace. Set value to disabled to access workspace only via private link.
  /// [requiredNsgRules] Gets or sets a value indicating whether data plane (clusters) to control plane communication happen over private endpoint. Supported values are 'AllRules' and 'NoAzureDatabricksRules'. 'NoAzureServiceRules' value is for internal use only.
  /// [sku] The SKU of the resource.
  /// [storageAccountIdentity] The details of Managed Identity of Storage Account
  /// [systemData] The system metadata relating to this resource
  /// [tags] Resource tags.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  /// [uiDefinitionUri] The blob URI where the UI definition file is located.
  /// [updatedBy] Indicates the Object ID, PUID and Application ID of entity that last updated the workspace.
  /// [workspaceId] The unique identifier of the databricks workspace in databricks control plane.
  /// [workspaceUrl] The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net'
  const GetWorkspaceResult({
    this.accessConnector,
    this.authorizations,
    required this.azureApiVersion,
    this.createdBy,
    required this.createdDateTime,
    this.defaultCatalog,
    this.defaultStorageFirewall,
    required this.diskEncryptionSetId,
    this.encryption,
    this.enhancedSecurityCompliance,
    required this.id,
    required this.isUcEnabled,
    required this.location,
    this.managedDiskIdentity,
    required this.managedResourceGroupId,
    required this.name,
    this.parameters,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.requiredNsgRules,
    this.sku,
    this.storageAccountIdentity,
    required this.systemData,
    this.tags,
    required this.type,
    this.uiDefinitionUri,
    this.updatedBy,
    required this.workspaceId,
    required this.workspaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConnector': ?accessConnector?.toMap(),
      'authorizations': ?(() { final guardedValue = authorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<WorkspaceProviderAuthorizationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'createdBy': ?createdBy?.toMap(),
      'createdDateTime': createdDateTime,
      'defaultCatalog': ?defaultCatalog?.toMap(),
      'defaultStorageFirewall': ?defaultStorageFirewall,
      'diskEncryptionSetId': diskEncryptionSetId,
      'encryption': ?encryption?.toMap(),
      'enhancedSecurityCompliance': ?enhancedSecurityCompliance?.toMap(),
      'id': id,
      'isUcEnabled': isUcEnabled,
      'location': location,
      'managedDiskIdentity': ?managedDiskIdentity?.toMap(),
      'managedResourceGroupId': managedResourceGroupId,
      'name': name,
      'parameters': ?parameters?.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'requiredNsgRules': ?requiredNsgRules,
      'sku': ?sku?.toMap(),
      'storageAccountIdentity': ?storageAccountIdentity?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uiDefinitionUri': ?uiDefinitionUri,
      'updatedBy': ?updatedBy?.toMap(),
      'workspaceId': workspaceId,
      'workspaceUrl': workspaceUrl,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      accessConnector: (() { final guardedValue = map['accessConnector']; if (guardedValue == null) return null; return WorkspacePropertiesResponseAccessConnector.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      authorizations: (() { final guardedValue = map['authorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceProviderAuthorizationResponse>(guardedValue, (value) => WorkspaceProviderAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return CreatedByResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdDateTime: map['createdDateTime'] as String,
      defaultCatalog: (() { final guardedValue = map['defaultCatalog']; if (guardedValue == null) return null; return DefaultCatalogPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultStorageFirewall: (() { final guardedValue = map['defaultStorageFirewall']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskEncryptionSetId: map['diskEncryptionSetId'] as String,
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return WorkspacePropertiesResponseEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enhancedSecurityCompliance: (() { final guardedValue = map['enhancedSecurityCompliance']; if (guardedValue == null) return null; return EnhancedSecurityComplianceDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      isUcEnabled: map['isUcEnabled'] as bool,
      location: map['location'] as String,
      managedDiskIdentity: (() { final guardedValue = map['managedDiskIdentity']; if (guardedValue == null) return null; return ManagedIdentityConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managedResourceGroupId: map['managedResourceGroupId'] as String,
      name: map['name'] as String,
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return WorkspaceCustomParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredNsgRules: (() { final guardedValue = map['requiredNsgRules']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageAccountIdentity: (() { final guardedValue = map['storageAccountIdentity']; if (guardedValue == null) return null; return ManagedIdentityConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uiDefinitionUri: (() { final guardedValue = map['uiDefinitionUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return CreatedByResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workspaceId: map['workspaceId'] as String,
      workspaceUrl: map['workspaceUrl'] as String,
    );
  }
}

