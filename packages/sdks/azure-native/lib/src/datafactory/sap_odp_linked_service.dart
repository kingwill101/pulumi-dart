// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// SAP ODP Linked Service.
class SapOdpLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Client ID of the client on the SAP system where the table is located. (Usually a three-digit decimal number represented as a string) Type: string (or Expression with resultType string).
  final dynamic clientId;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Language of the SAP system where the table is located. The default value is EN. Type: string (or Expression with resultType string).
  final dynamic language;
  /// The Logon Group for the SAP System. Type: string (or Expression with resultType string).
  final dynamic logonGroup;
  /// The hostname of the SAP Message Server. Type: string (or Expression with resultType string).
  final dynamic messageServer;
  /// The service name or port number of the Message Server. Type: string (or Expression with resultType string).
  final dynamic messageServerService;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Password to access the SAP server where the table is located.
  final AzureKeyVaultSecretReference? password;
  /// Host name of the SAP instance where the table is located. Type: string (or Expression with resultType string).
  final dynamic server;
  /// External security product's library to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  final dynamic sncLibraryPath;
  /// SNC activation flag (Boolean) to access the SAP server where the table is located. Type: boolean (or Expression with resultType boolean).
  final dynamic sncMode;
  /// Initiator's SNC name to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  final dynamic sncMyName;
  /// Communication partner's SNC name to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  final dynamic sncPartnerName;
  /// SNC Quality of Protection. Allowed value include: 1, 2, 3, 8, 9. Type: string (or Expression with resultType string).
  final dynamic sncQop;
  /// The subscriber name. Type: string (or Expression with resultType string).
  final dynamic subscriberName;
  /// SystemID of the SAP system where the table is located. Type: string (or Expression with resultType string).
  final dynamic systemId;
  /// System number of the SAP system where the table is located. (Usually a two-digit decimal number represented as a string.) Type: string (or Expression with resultType string).
  final dynamic systemNumber;
  /// Type of linked service.
  /// Expected value is 'SapOdp'.
  final String type;
  /// Username to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;
  /// SNC X509 certificate file path. Type: string (or Expression with resultType string).
  final dynamic x509CertificatePath;

  /// Creates a new [SapOdpLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clientId] Client ID of the client on the SAP system where the table is located. (Usually a three-digit decimal number represented as a string) Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [language] Language of the SAP system where the table is located. The default value is EN. Type: string (or Expression with resultType string).
  /// [logonGroup] The Logon Group for the SAP System. Type: string (or Expression with resultType string).
  /// [messageServer] The hostname of the SAP Message Server. Type: string (or Expression with resultType string).
  /// [messageServerService] The service name or port number of the Message Server. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] Password to access the SAP server where the table is located.
  /// [server] Host name of the SAP instance where the table is located. Type: string (or Expression with resultType string).
  /// [sncLibraryPath] External security product's library to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  /// [sncMode] SNC activation flag (Boolean) to access the SAP server where the table is located. Type: boolean (or Expression with resultType boolean).
  /// [sncMyName] Initiator's SNC name to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  /// [sncPartnerName] Communication partner's SNC name to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  /// [sncQop] SNC Quality of Protection. Allowed value include: 1, 2, 3, 8, 9. Type: string (or Expression with resultType string).
  /// [subscriberName] The subscriber name. Type: string (or Expression with resultType string).
  /// [systemId] SystemID of the SAP system where the table is located. Type: string (or Expression with resultType string).
  /// [systemNumber] System number of the SAP system where the table is located. (Usually a two-digit decimal number represented as a string.) Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [userName] Username to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  /// [x509CertificatePath] SNC X509 certificate file path. Type: string (or Expression with resultType string).
  SapOdpLinkedService({
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
    this.sncLibraryPath,
    this.sncMode,
    this.sncMyName,
    this.sncPartnerName,
    this.sncQop,
    this.subscriberName,
    this.systemId,
    this.systemNumber,
    required this.type,
    this.userName,
    this.version,
    this.x509CertificatePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'clientId': ?clientId,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'language': ?language,
      'logonGroup': ?logonGroup,
      'messageServer': ?messageServer,
      'messageServerService': ?messageServerService,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'server': ?server,
      'sncLibraryPath': ?sncLibraryPath,
      'sncMode': ?sncMode,
      'sncMyName': ?sncMyName,
      'sncPartnerName': ?sncPartnerName,
      'sncQop': ?sncQop,
      'subscriberName': ?subscriberName,
      'systemId': ?systemId,
      'systemNumber': ?systemNumber,
      'type': type,
      'userName': ?userName,
      'version': ?version,
      'x509CertificatePath': ?x509CertificatePath,
    };
  }

  factory SapOdpLinkedService.fromMap(Map<String, dynamic> map) {
    return SapOdpLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      clientId: map['clientId'] == null ? null : map['clientId'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      language: map['language'] == null ? null : map['language'],
      logonGroup: map['logonGroup'] == null ? null : map['logonGroup'],
      messageServer: map['messageServer'] == null ? null : map['messageServer'],
      messageServerService: map['messageServerService'] == null ? null : map['messageServerService'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      server: map['server'] == null ? null : map['server'],
      sncLibraryPath: map['sncLibraryPath'] == null ? null : map['sncLibraryPath'],
      sncMode: map['sncMode'] == null ? null : map['sncMode'],
      sncMyName: map['sncMyName'] == null ? null : map['sncMyName'],
      sncPartnerName: map['sncPartnerName'] == null ? null : map['sncPartnerName'],
      sncQop: map['sncQop'] == null ? null : map['sncQop'],
      subscriberName: map['subscriberName'] == null ? null : map['subscriberName'],
      systemId: map['systemId'] == null ? null : map['systemId'],
      systemNumber: map['systemNumber'] == null ? null : map['systemNumber'],
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
      x509CertificatePath: map['x509CertificatePath'] == null ? null : map['x509CertificatePath'],
    );
  }
}

