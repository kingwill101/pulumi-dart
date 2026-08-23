// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Data Lake Analytics linked service.
class AzureDataLakeAnalyticsLinkedServiceResponse {
  /// The Azure Data Lake Analytics account name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> accountName;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Azure Data Lake Analytics URI Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? dataLakeAnalyticsUri;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Data Lake Analytics account resource group name (if different from Data Factory account). Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? resourceGroupName;
  /// The ID of the application used to authenticate against the Azure Data Lake Analytics account. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// The Key of the application used to authenticate against the Azure Data Lake Analytics account.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalKey;
  /// Data Lake Analytics account subscription ID (if different from Data Factory account). Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? subscriptionId;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> tenant;
  /// Type of linked service.
  /// Expected value is 'AzureDataLakeAnalytics'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AzureDataLakeAnalyticsLinkedServiceResponse].
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
  const AzureDataLakeAnalyticsLinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'dataLakeAnalyticsUri': ?dataLakeAnalyticsUri,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
      'tenant': tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureDataLakeAnalyticsLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeAnalyticsLinkedServiceResponse(
      accountName: pulumi.Input.fromValue(map['accountName']),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataLakeAnalyticsUri: (() { final guardedValue = map['dataLakeAnalyticsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tenant: pulumi.Input.fromValue(map['tenant']),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
