// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_blob_storage_key_vault_sas_token.dart';
import 'linked_service_azure_blob_storage_sas_token_linked_key_vault_key.dart';
import 'linked_service_azure_blob_storage_service_principal_linked_key_vault_key.dart';

/// {@template pulumi_datafactory_linked_service_azure_blob_storage_linked_service_azure_blob_storage_args_doc}
/// The set of arguments for LinkedServiceAzureBlobStorage.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_azure_blob_storage_linked_service_azure_blob_storage_args_doc}
class LinkedServiceAzureBlobStorageArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure Blob Storage Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string. Conflicts with `connection_string_insecure`, `sas_uri` and `service_endpoint`.
  final pulumi.Input<String>? connectionString;
  /// The connection string sent insecurely. Conflicts with `connection_string`, `sas_uri` and `service_endpoint`.
  ///
  /// > **Note:** `connection_string` uses the Azure [SecureString](https://learn.microsoft.com/en-us/dotnet/api/microsoft.azure.management.datafactory.models.securestring) to encrypt the contents within the REST payload sent to Azure whilst the `connection_string_insecure` is sent as a regular string. Both properties are still sent using SSL/HTTPS. At this time the portal will not decrypt Secure Strings so the `connection_string` property in the portal will show as `******` whilst `connection_string_insecure` will be viewable in the portal.
  final pulumi.Input<String>? connectionStringInsecure;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  final pulumi.Input<LinkedServiceAzureBlobStorageKeyVaultSasToken>? keyVaultSasToken;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// A `sas_token_linked_key_vault_key` block as defined below. Use this argument to store SAS Token in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. A `sas_uri` is required.
  final pulumi.Input<LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey>? sasTokenLinkedKeyVaultKey;
  /// The SAS URI. Conflicts with `connection_string_insecure`, `connection_string` and `service_endpoint`.
  final pulumi.Input<String>? sasUri;
  final pulumi.Input<String>? serviceEndpoint;
  final pulumi.Input<String>? servicePrincipalId;
  final pulumi.Input<String>? servicePrincipalKey;
  final pulumi.Input<LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey>? servicePrincipalLinkedKeyVaultKey;
  final pulumi.Input<String>? storageKind;
  final pulumi.Input<String>? tenantId;
  final pulumi.Input<bool>? useManagedIdentity;

  /// Creates a new [LinkedServiceAzureBlobStorageArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [connectionString] The connection string. Conflicts with `connection_string_insecure`, `sas_uri` and `service_endpoint`.
  /// [connectionStringInsecure] The connection string sent insecurely. Conflicts with `connection_string`, `sas_uri` and `service_endpoint`.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [keyVaultSasToken] Optional.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [sasTokenLinkedKeyVaultKey] A `sas_token_linked_key_vault_key` block as defined below. Use this argument to store SAS Token in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service. A `sas_uri` is required.
  /// [sasUri] The SAS URI. Conflicts with `connection_string_insecure`, `connection_string` and `service_endpoint`.
  /// [serviceEndpoint] Optional.
  /// [servicePrincipalId] Optional.
  /// [servicePrincipalKey] Optional.
  /// [servicePrincipalLinkedKeyVaultKey] Optional.
  /// [storageKind] Optional.
  /// [tenantId] Optional.
  /// [useManagedIdentity] Optional.
  LinkedServiceAzureBlobStorageArgs({
    Map<String, String>? additionalProperties,
    List<String>? annotations,
    String? connectionString,
    String? connectionStringInsecure,
    required String dataFactoryId,
    String? description,
    String? integrationRuntimeName,
    LinkedServiceAzureBlobStorageKeyVaultSasToken? keyVaultSasToken,
    String? name,
    Map<String, String>? parameters,
    LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey? sasTokenLinkedKeyVaultKey,
    String? sasUri,
    String? serviceEndpoint,
    String? servicePrincipalId,
    String? servicePrincipalKey,
    LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey? servicePrincipalLinkedKeyVaultKey,
    String? storageKind,
    String? tenantId,
    bool? useManagedIdentity,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      connectionStringInsecure = pulumi.Input.asOptionalInput<String>(connectionStringInsecure),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      keyVaultSasToken = pulumi.Input.asOptionalInput<LinkedServiceAzureBlobStorageKeyVaultSasToken>(keyVaultSasToken),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      sasTokenLinkedKeyVaultKey = pulumi.Input.asOptionalInput<LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey>(sasTokenLinkedKeyVaultKey),
      sasUri = pulumi.Input.asOptionalInput<String>(sasUri),
      serviceEndpoint = pulumi.Input.asOptionalInput<String>(serviceEndpoint),
      servicePrincipalId = pulumi.Input.asOptionalInput<String>(servicePrincipalId),
      servicePrincipalKey = pulumi.Input.asOptionalInput<String>(servicePrincipalKey),
      servicePrincipalLinkedKeyVaultKey = pulumi.Input.asOptionalInput<LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey>(servicePrincipalLinkedKeyVaultKey),
      storageKind = pulumi.Input.asOptionalInput<String>(storageKind),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      useManagedIdentity = pulumi.Input.asOptionalInput<bool>(useManagedIdentity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': ?connectionString,
      'connectionStringInsecure': ?connectionStringInsecure,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'keyVaultSasToken': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureBlobStorageKeyVaultSasToken, Map<String, dynamic>>(keyVaultSasToken, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'sasTokenLinkedKeyVaultKey': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey, Map<String, dynamic>>(sasTokenLinkedKeyVaultKey, (value) => value.toMap()),
      'sasUri': ?sasUri,
      'serviceEndpoint': ?serviceEndpoint,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'servicePrincipalLinkedKeyVaultKey': ?pulumi.Input.mapOptionalInputValue<LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey, Map<String, dynamic>>(servicePrincipalLinkedKeyVaultKey, (value) => value.toMap()),
      'storageKind': ?storageKind,
      'tenantId': ?tenantId,
      'useManagedIdentity': ?useManagedIdentity,
    };
  }

  factory LinkedServiceAzureBlobStorageArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceAzureBlobStorageArgs(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as Map).cast<String, String>(),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      connectionStringInsecure: map['connectionStringInsecure'] == null ? null : map['connectionStringInsecure'] as String,
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : map['integrationRuntimeName'] as String,
      keyVaultSasToken: map['keyVaultSasToken'] == null ? null : LinkedServiceAzureBlobStorageKeyVaultSasToken.fromMap((map['keyVaultSasToken'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      sasTokenLinkedKeyVaultKey: map['sasTokenLinkedKeyVaultKey'] == null ? null : LinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey.fromMap((map['sasTokenLinkedKeyVaultKey'] as Map).cast<String, dynamic>()),
      sasUri: map['sasUri'] == null ? null : map['sasUri'] as String,
      serviceEndpoint: map['serviceEndpoint'] == null ? null : map['serviceEndpoint'] as String,
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'] as String,
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : map['servicePrincipalKey'] as String,
      servicePrincipalLinkedKeyVaultKey: map['servicePrincipalLinkedKeyVaultKey'] == null ? null : LinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey.fromMap((map['servicePrincipalLinkedKeyVaultKey'] as Map).cast<String, dynamic>()),
      storageKind: map['storageKind'] == null ? null : map['storageKind'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      useManagedIdentity: map['useManagedIdentity'] == null ? null : map['useManagedIdentity'] as bool,
    );
  }
}

