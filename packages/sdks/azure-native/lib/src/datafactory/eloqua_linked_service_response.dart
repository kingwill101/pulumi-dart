// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Eloqua server linked service.
class EloquaLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// The endpoint of the Eloqua server. (i.e. eloqua.example.com)
  final pulumi.Input<dynamic> endpoint;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The password corresponding to the user name.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;

  /// Type of linked service.
  /// Expected value is 'Eloqua'.
  final pulumi.Input<String> type;

  /// Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  final pulumi.Input<dynamic>? useEncryptedEndpoints;

  /// Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? useHostVerification;

  /// Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  final pulumi.Input<dynamic>? usePeerVerification;

  /// The site name and user name of your Eloqua account in the form: sitename/username. (i.e. Eloqua/Alice)
  final pulumi.Input<dynamic> username;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [EloquaLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of the Eloqua server. (i.e. eloqua.example.com)
  /// [parameters] Parameters for linked service.
  /// [password] The password corresponding to the user name.
  /// [type] Type of linked service.
  /// [useEncryptedEndpoints] Specifies whether the data source endpoints are encrypted using HTTPS. The default value is true.
  /// [useHostVerification] Specifies whether to require the host name in the server's certificate to match the host name of the server when connecting over SSL. The default value is true.
  /// [usePeerVerification] Specifies whether to verify the identity of the server when connecting over SSL. The default value is true.
  /// [username] The site name and user name of your Eloqua account in the form: sitename/username. (i.e. Eloqua/Alice)
  /// [version] Version of the linked service.
  EloquaLinkedServiceResponse({
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.endpoint,
    this.parameters,
    this.password,
    required this.type,
    this.useEncryptedEndpoints,
    this.useHostVerification,
    this.usePeerVerification,
    required this.username,
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
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
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
      'password':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
      'type': type,
      'useEncryptedEndpoints': ?useEncryptedEndpoints,
      'useHostVerification': ?useHostVerification,
      'usePeerVerification': ?usePeerVerification,
      'username': username,
      'version': ?version,
    };
  }

  factory EloquaLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return EloquaLinkedServiceResponse(
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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
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
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useEncryptedEndpoints: (() {
        final guardedValue = map['useEncryptedEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      useHostVerification: (() {
        final guardedValue = map['useHostVerification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      usePeerVerification: (() {
        final guardedValue = map['usePeerVerification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      username: pulumi.Input.fromValue(map['username']),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
