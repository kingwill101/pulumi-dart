// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_catalog_properties.dart';
import 'enhanced_security_compliance_definition.dart';
import 'sku.dart';
import 'workspace_custom_parameters.dart';
import 'workspace_properties_access_connector.dart';
import 'workspace_properties_encryption.dart';
import 'workspace_provider_authorization.dart';

/// {@template pulumi_databricks_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_databricks_workspace_args_doc}
class WorkspaceArgs {
  /// Access Connector Resource that is going to be associated with Databricks Workspace
  final pulumi.Input<WorkspacePropertiesAccessConnector>? accessConnector;
  /// The workspace provider authorizations.
  final pulumi.Input<List<WorkspaceProviderAuthorization>>? authorizations;
  /// Properties for Default Catalog configuration during workspace creation.
  final pulumi.Input<DefaultCatalogProperties>? defaultCatalog;
  /// Gets or Sets Default Storage Firewall configuration information
  final pulumi.Input<String>? defaultStorageFirewall;
  /// Encryption properties for databricks workspace
  final pulumi.Input<WorkspacePropertiesEncryption>? encryption;
  /// Contains settings related to the Enhanced Security and Compliance Add-On.
  final pulumi.Input<EnhancedSecurityComplianceDefinition>? enhancedSecurityCompliance;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The managed resource group Id.
  final pulumi.Input<String> managedResourceGroupId;
  /// The workspace's custom parameters.
  final pulumi.Input<WorkspaceCustomParameters>? parameters;
  /// The network access type for accessing workspace. Set value to disabled to access workspace only via private link.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Gets or sets a value indicating whether data plane (clusters) to control plane communication happen over private endpoint. Supported values are 'AllRules' and 'NoAzureDatabricksRules'. 'NoAzureServiceRules' value is for internal use only.
  final pulumi.Input<String>? requiredNsgRules;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the resource.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The blob URI where the UI definition file is located.
  final pulumi.Input<String>? uiDefinitionUri;
  /// The name of the workspace.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [WorkspaceArgs].
  /// [accessConnector] Access Connector Resource that is going to be associated with Databricks Workspace
  /// [authorizations] The workspace provider authorizations.
  /// [defaultCatalog] Properties for Default Catalog configuration during workspace creation.
  /// [defaultStorageFirewall] Gets or Sets Default Storage Firewall configuration information
  /// [encryption] Encryption properties for databricks workspace
  /// [enhancedSecurityCompliance] Contains settings related to the Enhanced Security and Compliance Add-On.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupId] The managed resource group Id.
  /// [parameters] The workspace's custom parameters.
  /// [publicNetworkAccess] The network access type for accessing workspace. Set value to disabled to access workspace only via private link.
  /// [requiredNsgRules] Gets or sets a value indicating whether data plane (clusters) to control plane communication happen over private endpoint. Supported values are 'AllRules' and 'NoAzureDatabricksRules'. 'NoAzureServiceRules' value is for internal use only.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the resource.
  /// [tags] Resource tags.
  /// [uiDefinitionUri] The blob URI where the UI definition file is located.
  /// [workspaceName] The name of the workspace.
  WorkspaceArgs({
    pulumi.Output<WorkspacePropertiesAccessConnector>? accessConnector,
    pulumi.Output<List<WorkspaceProviderAuthorization>>? authorizations,
    pulumi.Output<DefaultCatalogProperties>? defaultCatalog,
    pulumi.Output<String>? defaultStorageFirewall,
    pulumi.Output<WorkspacePropertiesEncryption>? encryption,
    pulumi.Output<EnhancedSecurityComplianceDefinition>? enhancedSecurityCompliance,
    pulumi.Output<String>? location,
    required pulumi.Output<String> managedResourceGroupId,
    pulumi.Output<WorkspaceCustomParameters>? parameters,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? requiredNsgRules,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? uiDefinitionUri,
    pulumi.Output<String>? workspaceName,
  }) :
      accessConnector = pulumi.Input.asOptionalInput<WorkspacePropertiesAccessConnector>(accessConnector),
      authorizations = pulumi.Input.asOptionalInput<List<WorkspaceProviderAuthorization>>(authorizations),
      defaultCatalog = pulumi.Input.asOptionalInput<DefaultCatalogProperties>(defaultCatalog),
      defaultStorageFirewall = pulumi.Input.asOptionalInput<String>(defaultStorageFirewall),
      encryption = pulumi.Input.asOptionalInput<WorkspacePropertiesEncryption>(encryption),
      enhancedSecurityCompliance = pulumi.Input.asOptionalInput<EnhancedSecurityComplianceDefinition>(enhancedSecurityCompliance),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupId = pulumi.Input.asInput<String>(managedResourceGroupId),
      parameters = pulumi.Input.asOptionalInput<WorkspaceCustomParameters>(parameters),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      requiredNsgRules = pulumi.Input.asOptionalInput<String>(requiredNsgRules),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uiDefinitionUri = pulumi.Input.asOptionalInput<String>(uiDefinitionUri),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConnector': ?pulumi.Input.mapOptionalInputValue<WorkspacePropertiesAccessConnector, Map<String, dynamic>>(accessConnector, (value) => value.toMap()),
      'authorizations': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceProviderAuthorization>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<WorkspaceProviderAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultCatalog': ?pulumi.Input.mapOptionalInputValue<DefaultCatalogProperties, Map<String, dynamic>>(defaultCatalog, (value) => value.toMap()),
      'defaultStorageFirewall': ?defaultStorageFirewall,
      'encryption': ?pulumi.Input.mapOptionalInputValue<WorkspacePropertiesEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'enhancedSecurityCompliance': ?pulumi.Input.mapOptionalInputValue<EnhancedSecurityComplianceDefinition, Map<String, dynamic>>(enhancedSecurityCompliance, (value) => value.toMap()),
      'location': ?location,
      'managedResourceGroupId': managedResourceGroupId,
      'parameters': ?pulumi.Input.mapOptionalInputValue<WorkspaceCustomParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'requiredNsgRules': ?requiredNsgRules,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'uiDefinitionUri': ?uiDefinitionUri,
      'workspaceName': ?workspaceName,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      accessConnector: map['accessConnector'] == null ? null : pulumi.Output.create<WorkspacePropertiesAccessConnector>(WorkspacePropertiesAccessConnector.fromMap((map['accessConnector'] as Map).cast<String, dynamic>())),
      authorizations: map['authorizations'] == null ? null : pulumi.Output.create<List<WorkspaceProviderAuthorization>>(pulumi.Input.decodeList<WorkspaceProviderAuthorization>(map['authorizations'], (value) => WorkspaceProviderAuthorization.fromMap((value as Map).cast<String, dynamic>()))),
      defaultCatalog: map['defaultCatalog'] == null ? null : pulumi.Output.create<DefaultCatalogProperties>(DefaultCatalogProperties.fromMap((map['defaultCatalog'] as Map).cast<String, dynamic>())),
      defaultStorageFirewall: map['defaultStorageFirewall'] == null ? null : pulumi.Output.create<String>(map['defaultStorageFirewall'] as String),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<WorkspacePropertiesEncryption>(WorkspacePropertiesEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      enhancedSecurityCompliance: map['enhancedSecurityCompliance'] == null ? null : pulumi.Output.create<EnhancedSecurityComplianceDefinition>(EnhancedSecurityComplianceDefinition.fromMap((map['enhancedSecurityCompliance'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupId: pulumi.Output.create<String>(map['managedResourceGroupId'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<WorkspaceCustomParameters>(WorkspaceCustomParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      requiredNsgRules: map['requiredNsgRules'] == null ? null : pulumi.Output.create<String>(map['requiredNsgRules'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      uiDefinitionUri: map['uiDefinitionUri'] == null ? null : pulumi.Output.create<String>(map['uiDefinitionUri'] as String),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

