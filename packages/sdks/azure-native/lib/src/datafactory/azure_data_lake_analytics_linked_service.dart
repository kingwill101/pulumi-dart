// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Azure Data Lake Analytics linked service.
class AzureDataLakeAnalyticsLinkedService {
  /// The Azure Data Lake Analytics account name. Type: string (or Expression with resultType string).
  final dynamic accountName;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Azure Data Lake Analytics URI Type: string (or Expression with resultType string).
  final dynamic dataLakeAnalyticsUri;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Data Lake Analytics account resource group name (if different from Data Factory account). Type: string (or Expression with resultType string).
  final dynamic resourceGroupName;
  /// The ID of the application used to authenticate against the Azure Data Lake Analytics account. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The Key of the application used to authenticate against the Azure Data Lake Analytics account.
  final AzureKeyVaultSecretReference? servicePrincipalKey;
  /// Data Lake Analytics account subscription ID (if different from Data Factory account). Type: string (or Expression with resultType string).
  final dynamic subscriptionId;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// Type of linked service.
  /// Expected value is 'AzureDataLakeAnalytics'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzureDataLakeAnalyticsLinkedService].
  /// [accountName] The Azure Data Lake Analytics account name. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [dataLakeAnalyticsUri] Azure Data Lake Analytics URI Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [resourceGroupName] Data Lake Analytics account resource group name (if different from Data Factory account). Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The ID of the application used to authenticate against the Azure Data Lake Analytics account. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The Key of the application used to authenticate against the Azure Data Lake Analytics account.
  /// [subscriptionId] Data Lake Analytics account subscription ID (if different from Data Factory account). Type: string (or Expression with resultType string).
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AzureDataLakeAnalyticsLinkedService({
    required this.accountName,
    this.annotations,
    this.connectVia,
    this.dataLakeAnalyticsUri,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.resourceGroupName,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.subscriptionId,
    required this.tenant,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'dataLakeAnalyticsUri': ?dataLakeAnalyticsUri,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'subscriptionId': ?subscriptionId,
      'tenant': tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureDataLakeAnalyticsLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeAnalyticsLinkedService(
      accountName: map['accountName'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      dataLakeAnalyticsUri: map['dataLakeAnalyticsUri'] == null ? null : map['dataLakeAnalyticsUri'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'],
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'],
      tenant: map['tenant'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

