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
import 'workspace_properties_access_connector_response.dart';
import 'workspace_properties_encryption_response.dart';
import 'workspace_provider_authorization_response.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// Access Connector Resource that is going to be associated with Databricks Workspace. Not allowed in Serverless ComputeMode workspace.
  final WorkspacePropertiesAccessConnectorResponse? accessConnector;
  /// The workspace provider authorizations.
  final List<WorkspaceProviderAuthorizationResponse>? authorizations;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The workspace compute mode. Required on create, cannot be changed. Possible values include: 'Serverless', 'Hybrid'
  final String? computeMode;
  /// Indicates the Object ID, PUID and Application ID of entity that created the workspace.
  final CreatedByResponse? createdBy;
  /// Specifies the date and time when the workspace is created.
  final String? createdDateTime;
  /// Properties for Default Catalog configuration during workspace creation. Not allowed in Serverless ComputeMode workspace.
  final DefaultCatalogPropertiesResponse? defaultCatalog;
  /// Gets or Sets Default Storage Firewall configuration information. Not allowed in Serverless ComputeMode workspace.
  final String? defaultStorageFirewall;
  /// The resource Id of the managed disk encryption set. Not allowed in Serverless ComputeMode workspace.
  final String? diskEncryptionSetId;
  /// Encryption properties for databricks workspace. Supported in both Serverless and Hybrid ComputeMode workspace.
  final WorkspacePropertiesEncryptionResponse? encryption;
  /// Contains settings related to the Enhanced Security and Compliance Add-On. Supported in both Serverless and Hybrid ComputeMode workspace.
  final EnhancedSecurityComplianceDefinitionResponse? enhancedSecurityCompliance;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Indicates whether unity catalog enabled for the workspace or not. Set as true in Serverless ComputeMode workspace.
  final bool? isUcEnabled;
  /// The geo-location where the resource lives
  final String? location;
  /// The details of Managed Identity of Disk Encryption Set used for Managed Disk Encryption. Only returned in Hybrid ComputeMode workspace.
  final ManagedIdentityConfigurationResponse? managedDiskIdentity;
  /// The managed resource group Id. Required in Hybrid ComputeMode workspace. Not allowed in Serverless ComputeMode workspace.
  final String? managedResourceGroupId;
  /// The name of the resource
  final String? name;
  /// The workspace's custom parameters.
  final WorkspaceCustomParametersResponse? parameters;
  /// Private endpoint connections created on the workspace. Supported in both Serverless and Hybrid ComputeMode workspace.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The workspace provisioning state.
  final String? provisioningState;
  /// The network access type for accessing workspace. Set value to disabled to access workspace only via private link. Used to configure front-end only private link for Serverless ComputeMode workspace.
  final String? publicNetworkAccess;
  /// Gets or sets a value indicating whether data plane (clusters) to control plane communication happen over private endpoint. Supported values are 'AllRules' and 'NoAzureDatabricksRules'. 'NoAzureServiceRules' value is for internal use only. Not allowed in Serverless ComputeMode workspace.
  final String? requiredNsgRules;
  /// The SKU of the resource.
  final SkuResponse? sku;
  /// The details of Managed Identity of Storage Account. Only returned in Hybrid ComputeMode workspace.
  final ManagedIdentityConfigurationResponse? storageAccountIdentity;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The blob URI where the UI definition file is located.
  final String? uiDefinitionUri;
  /// Indicates the Object ID, PUID and Application ID of entity that last updated the workspace.
  final CreatedByResponse? updatedBy;
  /// The unique identifier of the databricks workspace in databricks control plane.
  final String? workspaceId;
  /// The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net'
  final String? workspaceUrl;

  /// Creates a new [GetWorkspaceResult].
  /// [accessConnector] Access Connector Resource that is going to be associated with Databricks Workspace. Not allowed in Serverless ComputeMode workspace.
  /// [authorizations] The workspace provider authorizations.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [computeMode] The workspace compute mode. Required on create, cannot be changed. Possible values include: 'Serverless', 'Hybrid'
  /// [createdBy] Indicates the Object ID, PUID and Application ID of entity that created the workspace.
  /// [createdDateTime] Specifies the date and time when the workspace is created.
  /// [defaultCatalog] Properties for Default Catalog configuration during workspace creation. Not allowed in Serverless ComputeMode workspace.
  /// [defaultStorageFirewall] Gets or Sets Default Storage Firewall configuration information. Not allowed in Serverless ComputeMode workspace.
  /// [diskEncryptionSetId] The resource Id of the managed disk encryption set. Not allowed in Serverless ComputeMode workspace.
  /// [encryption] Encryption properties for databricks workspace. Supported in both Serverless and Hybrid ComputeMode workspace.
  /// [enhancedSecurityCompliance] Contains settings related to the Enhanced Security and Compliance Add-On. Supported in both Serverless and Hybrid ComputeMode workspace.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isUcEnabled] Indicates whether unity catalog enabled for the workspace or not. Set as true in Serverless ComputeMode workspace.
  /// [location] The geo-location where the resource lives
  /// [managedDiskIdentity] The details of Managed Identity of Disk Encryption Set used for Managed Disk Encryption. Only returned in Hybrid ComputeMode workspace.
  /// [managedResourceGroupId] The managed resource group Id. Required in Hybrid ComputeMode workspace. Not allowed in Serverless ComputeMode workspace.
  /// [name] The name of the resource
  /// [parameters] The workspace's custom parameters.
  /// [privateEndpointConnections] Private endpoint connections created on the workspace. Supported in both Serverless and Hybrid ComputeMode workspace.
  /// [provisioningState] The workspace provisioning state.
  /// [publicNetworkAccess] The network access type for accessing workspace. Set value to disabled to access workspace only via private link. Used to configure front-end only private link for Serverless ComputeMode workspace.
  /// [requiredNsgRules] Gets or sets a value indicating whether data plane (clusters) to control plane communication happen over private endpoint. Supported values are 'AllRules' and 'NoAzureDatabricksRules'. 'NoAzureServiceRules' value is for internal use only. Not allowed in Serverless ComputeMode workspace.
  /// [sku] The SKU of the resource.
  /// [storageAccountIdentity] The details of Managed Identity of Storage Account. Only returned in Hybrid ComputeMode workspace.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uiDefinitionUri] The blob URI where the UI definition file is located.
  /// [updatedBy] Indicates the Object ID, PUID and Application ID of entity that last updated the workspace.
  /// [workspaceId] The unique identifier of the databricks workspace in databricks control plane.
  /// [workspaceUrl] The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net'
  const GetWorkspaceResult({
    this.accessConnector,
    this.authorizations,
    this.azureApiVersion,
    this.computeMode,
    this.createdBy,
    this.createdDateTime,
    this.defaultCatalog,
    this.defaultStorageFirewall,
    this.diskEncryptionSetId,
    this.encryption,
    this.enhancedSecurityCompliance,
    this.id,
    this.isUcEnabled,
    this.location,
    this.managedDiskIdentity,
    this.managedResourceGroupId,
    this.name,
    this.parameters,
    this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    this.requiredNsgRules,
    this.sku,
    this.storageAccountIdentity,
    this.systemData,
    this.tags,
    this.type,
    this.uiDefinitionUri,
    this.updatedBy,
    this.workspaceId,
    this.workspaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConnector': ?accessConnector?.toMap(),
      'authorizations': ?(() { final guardedValue = authorizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<WorkspaceProviderAuthorizationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'computeMode': ?computeMode,
      'createdBy': ?createdBy?.toMap(),
      'createdDateTime': ?createdDateTime,
      'defaultCatalog': ?defaultCatalog?.toMap(),
      'defaultStorageFirewall': ?defaultStorageFirewall,
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'encryption': ?encryption?.toMap(),
      'enhancedSecurityCompliance': ?enhancedSecurityCompliance?.toMap(),
      'id': ?id,
      'isUcEnabled': ?isUcEnabled,
      'location': ?location,
      'managedDiskIdentity': ?managedDiskIdentity?.toMap(),
      'managedResourceGroupId': ?managedResourceGroupId,
      'name': ?name,
      'parameters': ?parameters?.toMap(),
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'requiredNsgRules': ?requiredNsgRules,
      'sku': ?sku?.toMap(),
      'storageAccountIdentity': ?storageAccountIdentity?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uiDefinitionUri': ?uiDefinitionUri,
      'updatedBy': ?updatedBy?.toMap(),
      'workspaceId': ?workspaceId,
      'workspaceUrl': ?workspaceUrl,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      accessConnector: (() { final guardedValue = map['accessConnector']; if (guardedValue == null) return null; return WorkspacePropertiesAccessConnectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      authorizations: (() { final guardedValue = map['authorizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkspaceProviderAuthorizationResponse>(guardedValue, (value) => WorkspaceProviderAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeMode: (() { final guardedValue = map['computeMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return CreatedByResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdDateTime: (() { final guardedValue = map['createdDateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultCatalog: (() { final guardedValue = map['defaultCatalog']; if (guardedValue == null) return null; return DefaultCatalogPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultStorageFirewall: (() { final guardedValue = map['defaultStorageFirewall']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return WorkspacePropertiesEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enhancedSecurityCompliance: (() { final guardedValue = map['enhancedSecurityCompliance']; if (guardedValue == null) return null; return EnhancedSecurityComplianceDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isUcEnabled: (() { final guardedValue = map['isUcEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedDiskIdentity: (() { final guardedValue = map['managedDiskIdentity']; if (guardedValue == null) return null; return ManagedIdentityConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managedResourceGroupId: (() { final guardedValue = map['managedResourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return WorkspaceCustomParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredNsgRules: (() { final guardedValue = map['requiredNsgRules']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageAccountIdentity: (() { final guardedValue = map['storageAccountIdentity']; if (guardedValue == null) return null; return ManagedIdentityConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uiDefinitionUri: (() { final guardedValue = map['uiDefinitionUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return CreatedByResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceUrl: (() { final guardedValue = map['workspaceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
