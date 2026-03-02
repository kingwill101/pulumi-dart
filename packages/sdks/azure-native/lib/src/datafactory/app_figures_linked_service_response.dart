// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for AppFigures.
class AppFiguresLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The client key for the AppFigures source.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse> clientKey;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The password of the AppFigures source.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse> password;
  /// Type of linked service.
  /// Expected value is 'AppFigures'.
  final pulumi.Input<String> type;
  /// The username of the Appfigures source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AppFiguresLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientKey] The client key for the AppFigures source.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [parameters] Parameters for linked service.
  /// [password] The password of the AppFigures source.
  /// [type] Type of linked service.
  /// [userName] The username of the Appfigures source. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  AppFiguresLinkedServiceResponse({
    this.annotations,
    required this.clientKey,
    this.connectVia,
    this.description,
    this.parameters,
    required this.password,
    required this.type,
    required this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'clientKey': pulumi.Input.mapInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(clientKey, (value) => value.toMap()),
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': pulumi.Input.mapInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'type': type,
      'userName': userName,
      'version': ?version,
    };
  }

  factory AppFiguresLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AppFiguresLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      clientKey: (AzureKeyVaultSecretReferenceResponse.fromMap((map['clientKey'] as Map).cast<String, dynamic>())).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: (AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      userName: (map['userName']).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

