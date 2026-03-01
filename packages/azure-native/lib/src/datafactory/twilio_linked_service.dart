// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for Twilio.
class TwilioLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The auth token of Twilio service.
  final AzureKeyVaultSecretReference password;
  /// Type of linked service.
  /// Expected value is 'Twilio'.
  final String type;
  /// The Account SID of Twilio service. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [TwilioLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [parameters] Parameters for linked service.
  /// [password] The auth token of Twilio service.
  /// [type] Type of linked service.
  /// [userName] The Account SID of Twilio service. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  TwilioLinkedService({
    this.annotations,
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
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': password.toMap(),
      'type': type,
      'userName': userName,
      'version': ?version,
    };
  }

  factory TwilioLinkedService.fromMap(Map<String, dynamic> map) {
    return TwilioLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userName: map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

