// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// HDInsight linked service.
class HDInsightLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// HDInsight cluster authentication type.
  final pulumi.Input<String>? clusterAuthType;
  /// HDInsight cluster URI. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> clusterUri;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// The credential reference containing MI authentication information for the HDInsight cluster.
  final pulumi.Input<CredentialReferenceResponse>? credential;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Specify the FileSystem if the main storage for the HDInsight is ADLS Gen2. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileSystem;
  /// A reference to the Azure SQL linked service that points to the HCatalog database.
  final pulumi.Input<LinkedServiceReferenceResponse>? hcatalogLinkedServiceName;
  /// Specify if the HDInsight is created with ESP (Enterprise Security Package). Type: Boolean.
  final pulumi.Input<dynamic>? isEspEnabled;
  /// The Azure Storage linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// HDInsight cluster password.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// Type of linked service.
  /// Expected value is 'HDInsight'.
  final pulumi.Input<String> type;
  /// HDInsight cluster user name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [HDInsightLinkedServiceResponse].
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
  HDInsightLinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReferenceResponse, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'fileSystem': ?fileSystem,
      'hcatalogLinkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(hcatalogLinkedServiceName, (value) => value.toMap()),
      'isEspEnabled': ?isEspEnabled,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory HDInsightLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return HDInsightLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      clusterAuthType: map['clusterAuthType'] == null ? null : (map['clusterAuthType']! as String).input(),
      clusterUri: (map['clusterUri']).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      credential: map['credential'] == null ? null : (CredentialReferenceResponse.fromMap((map['credential']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      fileSystem: map['fileSystem'] == null ? null : (map['fileSystem']!).input(),
      hcatalogLinkedServiceName: map['hcatalogLinkedServiceName'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['hcatalogLinkedServiceName']! as Map).cast<String, dynamic>())).input(),
      isEspEnabled: map['isEspEnabled'] == null ? null : (map['isEspEnabled']!).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

