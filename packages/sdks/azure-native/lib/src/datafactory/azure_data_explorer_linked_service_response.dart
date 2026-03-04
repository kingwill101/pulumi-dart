// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Data Explorer (Kusto) linked service.
class AzureDataExplorerLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse>? credential;

  /// Database name for connection. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> database;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The endpoint of Azure Data Explorer (the engine's endpoint). URL will be in the format https://&lt;clusterName&gt;.&lt;regionName&gt;.kusto.windows.net. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic> endpoint;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The ID of the service principal used to authenticate against Azure Data Explorer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;

  /// The key of the service principal used to authenticate against Kusto.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalKey;

  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;

  /// Type of linked service.
  /// Expected value is 'AzureDataExplorer'.
  final pulumi.Input<String> type;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AzureDataExplorerLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [database] Database name for connection. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [endpoint] The endpoint of Azure Data Explorer (the engine's endpoint). URL will be in the format https://&lt;clusterName&gt;.&lt;regionName&gt;.kusto.windows.net. Type: string (or Expression with resultType string)
  /// [parameters] Parameters for linked service.
  /// [servicePrincipalId] The ID of the service principal used to authenticate against Azure Data Explorer. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key of the service principal used to authenticate against Kusto.
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AzureDataExplorerLinkedServiceResponse({
    this.annotations,
    this.connectVia,
    this.credential,
    required this.database,
    this.description,
    required this.endpoint,
    this.parameters,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReferenceResponse,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'credential':
          ?pulumi.Input.mapOptionalInputValue<
            CredentialReferenceResponse,
            Map<String, dynamic>
          >(credential, (value) => value.toMap()),
      'database': database,
      'description': ?description,
      'endpoint': endpoint,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecificationResponse>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(servicePrincipalKey, (value) => value.toMap()),
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureDataExplorerLinkedServiceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureDataExplorerLinkedServiceResponse(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      credential: (() {
        final guardedValue = map['credential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CredentialReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      database: pulumi.Input.fromValue(map['database']),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: pulumi.Input.fromValue(map['endpoint']),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
            guardedValue,
            (value) => ParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      servicePrincipalId: (() {
        final guardedValue = map['servicePrincipalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      servicePrincipalKey: (() {
        final guardedValue = map['servicePrincipalKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tenant: (() {
        final guardedValue = map['tenant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
