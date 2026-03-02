// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// SAP Table Linked Service.
class SapTableLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Client ID of the client on the SAP system where the table is located. (Usually a three-digit decimal number represented as a string) Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientId;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Language of the SAP system where the table is located. The default value is EN. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? language;
  /// The Logon Group for the SAP System. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? logonGroup;
  /// The hostname of the SAP Message Server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? messageServer;
  /// The service name or port number of the Message Server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? messageServerService;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Password to access the SAP server where the table is located.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;
  /// Host name of the SAP instance where the table is located. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? server;
  /// External security product's library to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sncLibraryPath;
  /// SNC activation flag (Boolean) to access the SAP server where the table is located. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? sncMode;
  /// Initiator's SNC name to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sncMyName;
  /// Communication partner's SNC name to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sncPartnerName;
  /// SNC Quality of Protection. Allowed value include: 1, 2, 3, 8, 9. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sncQop;
  /// SystemID of the SAP system where the table is located. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? systemId;
  /// System number of the SAP system where the table is located. (Usually a two-digit decimal number represented as a string.) Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? systemNumber;
  /// Type of linked service.
  /// Expected value is 'SapTable'.
  final pulumi.Input<String> type;
  /// Username to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [SapTableLinkedService].
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
  /// [systemId] SystemID of the SAP system where the table is located. Type: string (or Expression with resultType string).
  /// [systemNumber] System number of the SAP system where the table is located. (Usually a two-digit decimal number represented as a string.) Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [userName] Username to access the SAP server where the table is located. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  SapTableLinkedService({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'language': ?language,
      'logonGroup': ?logonGroup,
      'messageServer': ?messageServer,
      'messageServerService': ?messageServerService,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'server': ?server,
      'sncLibraryPath': ?sncLibraryPath,
      'sncMode': ?sncMode,
      'sncMyName': ?sncMyName,
      'sncPartnerName': ?sncPartnerName,
      'sncQop': ?sncQop,
      'systemId': ?systemId,
      'systemNumber': ?systemNumber,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory SapTableLinkedService.fromMap(Map<String, dynamic> map) {
    return SapTableLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      language: map['language'] == null ? null : (map['language']!).input(),
      logonGroup: map['logonGroup'] == null ? null : (map['logonGroup']!).input(),
      messageServer: map['messageServer'] == null ? null : (map['messageServer']!).input(),
      messageServerService: map['messageServerService'] == null ? null : (map['messageServerService']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      server: map['server'] == null ? null : (map['server']!).input(),
      sncLibraryPath: map['sncLibraryPath'] == null ? null : (map['sncLibraryPath']!).input(),
      sncMode: map['sncMode'] == null ? null : (map['sncMode']!).input(),
      sncMyName: map['sncMyName'] == null ? null : (map['sncMyName']!).input(),
      sncPartnerName: map['sncPartnerName'] == null ? null : (map['sncPartnerName']!).input(),
      sncQop: map['sncQop'] == null ? null : (map['sncQop']!).input(),
      systemId: map['systemId'] == null ? null : (map['systemId']!).input(),
      systemNumber: map['systemNumber'] == null ? null : (map['systemNumber']!).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

