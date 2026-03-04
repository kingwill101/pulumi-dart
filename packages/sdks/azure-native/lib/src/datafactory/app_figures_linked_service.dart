// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for AppFigures.
class AppFiguresLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The client key for the AppFigures source.
  final pulumi.Input<AzureKeyVaultSecretReference> clientKey;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;

  /// The password of the AppFigures source.
  final pulumi.Input<AzureKeyVaultSecretReference> password;

  /// Type of linked service.
  /// Expected value is 'AppFigures'.
  final pulumi.Input<String> type;

  /// The username of the Appfigures source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> userName;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AppFiguresLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientKey] The client key for the AppFigures source.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [parameters] Parameters for linked service.
  /// [password] The password of the AppFigures source.
  /// [type] Type of linked service.
  /// [userName] The username of the Appfigures source. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  AppFiguresLinkedService({
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
      'clientKey':
          pulumi.Input.mapInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(clientKey, (value) => value.toMap()),
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReference,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'description': ?description,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecification>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'password':
          pulumi.Input.mapInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
      'type': type,
      'userName': userName,
      'version': ?version,
    };
  }

  factory AppFiguresLinkedService.fromMap(Map<String, dynamic> map) {
    return AppFiguresLinkedService(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      clientKey: pulumi.Input.fromValue(
        AzureKeyVaultSecretReference.fromMap(
          (map['clientKey']! as Map).cast<String, dynamic>(),
        ),
      ),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecification>(
            guardedValue,
            (value) => ParameterSpecification.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      password: pulumi.Input.fromValue(
        AzureKeyVaultSecretReference.fromMap(
          (map['password']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: pulumi.Input.fromValue(map['userName']),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
