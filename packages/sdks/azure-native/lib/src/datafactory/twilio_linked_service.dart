// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for Twilio.
class TwilioLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The auth token of Twilio service.
  final pulumi.Input<AzureKeyVaultSecretReference> password;
  /// Type of linked service.
  /// Expected value is 'Twilio'.
  final pulumi.Input<String> type;
  /// The Account SID of Twilio service. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': pulumi.Input.mapInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'type': type,
      'userName': userName,
      'version': ?version,
    };
  }

  factory TwilioLinkedService.fromMap(Map<String, dynamic> map) {
    return TwilioLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: (AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      userName: (map['userName']).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

