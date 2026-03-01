// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// HDInsight linked service.
class HDInsightLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// HDInsight cluster authentication type.
  final String? clusterAuthType;
  /// HDInsight cluster URI. Type: string (or Expression with resultType string).
  final dynamic clusterUri;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The credential reference containing MI authentication information for the HDInsight cluster.
  final CredentialReference? credential;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Specify the FileSystem if the main storage for the HDInsight is ADLS Gen2. Type: string (or Expression with resultType string).
  final dynamic fileSystem;
  /// A reference to the Azure SQL linked service that points to the HCatalog database.
  final LinkedServiceReference? hcatalogLinkedServiceName;
  /// Specify if the HDInsight is created with ESP (Enterprise Security Package). Type: Boolean.
  final dynamic isEspEnabled;
  /// The Azure Storage linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// HDInsight cluster password.
  final AzureKeyVaultSecretReference? password;
  /// Type of linked service.
  /// Expected value is 'HDInsight'.
  final String type;
  /// HDInsight cluster user name. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [HDInsightLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clusterAuthType] HDInsight cluster authentication type.
  /// [clusterUri] HDInsight cluster URI. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing MI authentication information for the HDInsight cluster.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [fileSystem] Specify the FileSystem if the main storage for the HDInsight is ADLS Gen2. Type: string (or Expression with resultType string).
  /// [hcatalogLinkedServiceName] A reference to the Azure SQL linked service that points to the HCatalog database.
  /// [isEspEnabled] Specify if the HDInsight is created with ESP (Enterprise Security Package). Type: Boolean.
  /// [linkedServiceName] The Azure Storage linked service reference.
  /// [parameters] Parameters for linked service.
  /// [password] HDInsight cluster password.
  /// [type] Type of linked service.
  /// [userName] HDInsight cluster user name. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  HDInsightLinkedService({
    this.annotations,
    this.clusterAuthType,
    required this.clusterUri,
    this.connectVia,
    this.credential,
    this.description,
    this.encryptedCredential,
    this.fileSystem,
    this.hcatalogLinkedServiceName,
    this.isEspEnabled,
    this.linkedServiceName,
    this.parameters,
    this.password,
    required this.type,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'clusterAuthType': ?clusterAuthType,
      'clusterUri': clusterUri,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'fileSystem': ?fileSystem,
      'hcatalogLinkedServiceName': ?hcatalogLinkedServiceName == null ? null : hcatalogLinkedServiceName!.toMap(),
      'isEspEnabled': ?isEspEnabled,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory HDInsightLinkedService.fromMap(Map<String, dynamic> map) {
    return HDInsightLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      clusterAuthType: map['clusterAuthType'] == null ? null : map['clusterAuthType'] as String,
      clusterUri: map['clusterUri'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      fileSystem: map['fileSystem'] == null ? null : map['fileSystem'],
      hcatalogLinkedServiceName: map['hcatalogLinkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['hcatalogLinkedServiceName'] as Map).cast<String, dynamic>()),
      isEspEnabled: map['isEspEnabled'] == null ? null : map['isEspEnabled'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

