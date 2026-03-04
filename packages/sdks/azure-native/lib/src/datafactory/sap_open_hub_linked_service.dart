// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// SAP Business Warehouse Open Hub Destination Linked Service.
class SapOpenHubLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// Client ID of the client on the BW system where the open hub destination is located. (Usually a three-digit decimal number represented as a string) Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientId;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// Language of the BW system where the open hub destination is located. The default value is EN. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? language;

  /// The Logon Group for the SAP System. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? logonGroup;

  /// The hostname of the SAP Message Server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? messageServer;

  /// The service name or port number of the Message Server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? messageServerService;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;

  /// Password to access the SAP BW server where the open hub destination is located.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;

  /// Host name of the SAP BW instance where the open hub destination is located. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? server;

  /// SystemID of the SAP system where the table is located. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? systemId;

  /// System number of the BW system where the open hub destination is located. (Usually a two-digit decimal number represented as a string.) Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? systemNumber;

  /// Type of linked service.
  /// Expected value is 'SapOpenHub'.
  final pulumi.Input<String> type;

  /// Username to access the SAP BW server where the open hub destination is located. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [SapOpenHubLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientId] Client ID of the client on the BW system where the open hub destination is located. (Usually a three-digit decimal number represented as a string) Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [language] Language of the BW system where the open hub destination is located. The default value is EN. Type: string (or Expression with resultType string).
  /// [logonGroup] The Logon Group for the SAP System. Type: string (or Expression with resultType string).
  /// [messageServer] The hostname of the SAP Message Server. Type: string (or Expression with resultType string).
  /// [messageServerService] The service name or port number of the Message Server. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] Password to access the SAP BW server where the open hub destination is located.
  /// [server] Host name of the SAP BW instance where the open hub destination is located. Type: string (or Expression with resultType string).
  /// [systemId] SystemID of the SAP system where the table is located. Type: string (or Expression with resultType string).
  /// [systemNumber] System number of the BW system where the open hub destination is located. (Usually a two-digit decimal number represented as a string.) Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [userName] Username to access the SAP BW server where the open hub destination is located. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  SapOpenHubLinkedService({
    this.annotations,
    this.clientId,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.language,
    this.logonGroup,
    this.messageServer,
    this.messageServerService,
    this.parameters,
    this.password,
    this.server,
    this.systemId,
    this.systemNumber,
    required this.type,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'clientId': ?clientId,
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReference,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'language': ?language,
      'logonGroup': ?logonGroup,
      'messageServer': ?messageServer,
      'messageServerService': ?messageServerService,
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
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
      'server': ?server,
      'systemId': ?systemId,
      'systemNumber': ?systemNumber,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory SapOpenHubLinkedService.fromMap(Map<String, dynamic> map) {
    return SapOpenHubLinkedService(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
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
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      language: (() {
        final guardedValue = map['language'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      logonGroup: (() {
        final guardedValue = map['logonGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      messageServer: (() {
        final guardedValue = map['messageServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      messageServerService: (() {
        final guardedValue = map['messageServerService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
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
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      server: (() {
        final guardedValue = map['server'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      systemId: (() {
        final guardedValue = map['systemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      systemNumber: (() {
        final guardedValue = map['systemNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
