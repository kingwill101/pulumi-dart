// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Azure Databricks linked service.
class AzureDatabricksLinkedService {
  /// Access token for databricks REST API. Refer to https://docs.azuredatabricks.net/api/latest/authentication.html. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? accessToken;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Required to specify MSI, if using Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  final dynamic authentication;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The credential reference containing authentication information.
  final CredentialReference? credential;
  /// The data security mode for the Databricks Cluster. Type: string (or Expression with resultType string).
  final dynamic dataSecurityMode;
  /// Linked service description.
  final String? description;
  /// <REGION>.azuredatabricks.net, domain name of your Databricks deployment. Type: string (or Expression with resultType string).
  final dynamic domain;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The id of an existing interactive cluster that will be used for all runs of this activity. Type: string (or Expression with resultType string).
  final dynamic existingClusterId;
  /// The id of an existing instance pool that will be used for all runs of this activity. Type: string (or Expression with resultType string).
  final dynamic instancePoolId;
  /// Additional tags for cluster resources. This property is ignored in instance pool configurations.
  final Map<String, dynamic>? newClusterCustomTags;
  /// The driver node type for the new job cluster. This property is ignored in instance pool configurations. Type: string (or Expression with resultType string).
  final dynamic newClusterDriverNodeType;
  /// Enable the elastic disk on the new cluster. This property is now ignored, and takes the default elastic disk behavior in Databricks (elastic disks are always enabled). Type: boolean (or Expression with resultType boolean).
  final dynamic newClusterEnableElasticDisk;
  /// User-defined initialization scripts for the new cluster. Type: array of strings (or Expression with resultType array of strings).
  final dynamic newClusterInitScripts;
  /// Specify a location to deliver Spark driver, worker, and event logs. Type: string (or Expression with resultType string).
  final dynamic newClusterLogDestination;
  /// The node type of the new job cluster. This property is required if newClusterVersion is specified and instancePoolId is not specified. If instancePoolId is specified, this property is ignored. Type: string (or Expression with resultType string).
  final dynamic newClusterNodeType;
  /// If not using an existing interactive cluster, this specifies the number of worker nodes to use for the new job cluster or instance pool. For new job clusters, this a string-formatted Int32, like '1' means numOfWorker is 1 or '1:10' means auto-scale from 1 (min) to 10 (max). For instance pools, this is a string-formatted Int32, and can only specify a fixed number of worker nodes, such as '2'. Required if newClusterVersion is specified. Type: string (or Expression with resultType string).
  final dynamic newClusterNumOfWorker;
  /// A set of optional, user-specified Spark configuration key-value pairs.
  final Map<String, dynamic>? newClusterSparkConf;
  /// A set of optional, user-specified Spark environment variables key-value pairs.
  final Map<String, dynamic>? newClusterSparkEnvVars;
  /// If not using an existing interactive cluster, this specifies the Spark version of a new job cluster or instance pool nodes created for each run of this activity. Required if instancePoolId is specified. Type: string (or Expression with resultType string).
  final dynamic newClusterVersion;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The policy id for limiting the ability to configure clusters based on a user defined set of rules. Type: string (or Expression with resultType string).
  final dynamic policyId;
  /// Type of linked service.
  /// Expected value is 'AzureDatabricks'.
  final String type;
  /// Version of the linked service.
  final String? version;
  /// Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  final dynamic workspaceResourceId;

  /// Creates a new [AzureDatabricksLinkedService].
  /// [accessToken] Access token for databricks REST API. Refer to https://docs.azuredatabricks.net/api/latest/authentication.html. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authentication] Required to specify MSI, if using Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [dataSecurityMode] The data security mode for the Databricks Cluster. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [domain] <REGION>.azuredatabricks.net, domain name of your Databricks deployment. Type: string (or Expression with resultType string).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [existingClusterId] The id of an existing interactive cluster that will be used for all runs of this activity. Type: string (or Expression with resultType string).
  /// [instancePoolId] The id of an existing instance pool that will be used for all runs of this activity. Type: string (or Expression with resultType string).
  /// [newClusterCustomTags] Additional tags for cluster resources. This property is ignored in instance pool configurations.
  /// [newClusterDriverNodeType] The driver node type for the new job cluster. This property is ignored in instance pool configurations. Type: string (or Expression with resultType string).
  /// [newClusterEnableElasticDisk] Enable the elastic disk on the new cluster. This property is now ignored, and takes the default elastic disk behavior in Databricks (elastic disks are always enabled). Type: boolean (or Expression with resultType boolean).
  /// [newClusterInitScripts] User-defined initialization scripts for the new cluster. Type: array of strings (or Expression with resultType array of strings).
  /// [newClusterLogDestination] Specify a location to deliver Spark driver, worker, and event logs. Type: string (or Expression with resultType string).
  /// [newClusterNodeType] The node type of the new job cluster. This property is required if newClusterVersion is specified and instancePoolId is not specified. If instancePoolId is specified, this property is ignored. Type: string (or Expression with resultType string).
  /// [newClusterNumOfWorker] If not using an existing interactive cluster, this specifies the number of worker nodes to use for the new job cluster or instance pool. For new job clusters, this a string-formatted Int32, like '1' means numOfWorker is 1 or '1:10' means auto-scale from 1 (min) to 10 (max). For instance pools, this is a string-formatted Int32, and can only specify a fixed number of worker nodes, such as '2'. Required if newClusterVersion is specified. Type: string (or Expression with resultType string).
  /// [newClusterSparkConf] A set of optional, user-specified Spark configuration key-value pairs.
  /// [newClusterSparkEnvVars] A set of optional, user-specified Spark environment variables key-value pairs.
  /// [newClusterVersion] If not using an existing interactive cluster, this specifies the Spark version of a new job cluster or instance pool nodes created for each run of this activity. Required if instancePoolId is specified. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [policyId] The policy id for limiting the ability to configure clusters based on a user defined set of rules. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  /// [workspaceResourceId] Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  AzureDatabricksLinkedService({
    this.accessToken,
    this.annotations,
    this.authentication,
    this.connectVia,
    this.credential,
    this.dataSecurityMode,
    this.description,
    required this.domain,
    this.encryptedCredential,
    this.existingClusterId,
    this.instancePoolId,
    this.newClusterCustomTags,
    this.newClusterDriverNodeType,
    this.newClusterEnableElasticDisk,
    this.newClusterInitScripts,
    this.newClusterLogDestination,
    this.newClusterNodeType,
    this.newClusterNumOfWorker,
    this.newClusterSparkConf,
    this.newClusterSparkEnvVars,
    this.newClusterVersion,
    this.parameters,
    this.policyId,
    required this.type,
    this.version,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken == null ? null : accessToken!.toMap(),
      'annotations': ?annotations,
      'authentication': ?authentication,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'dataSecurityMode': ?dataSecurityMode,
      'description': ?description,
      'domain': domain,
      'encryptedCredential': ?encryptedCredential,
      'existingClusterId': ?existingClusterId,
      'instancePoolId': ?instancePoolId,
      'newClusterCustomTags': ?newClusterCustomTags,
      'newClusterDriverNodeType': ?newClusterDriverNodeType,
      'newClusterEnableElasticDisk': ?newClusterEnableElasticDisk,
      'newClusterInitScripts': ?newClusterInitScripts,
      'newClusterLogDestination': ?newClusterLogDestination,
      'newClusterNodeType': ?newClusterNodeType,
      'newClusterNumOfWorker': ?newClusterNumOfWorker,
      'newClusterSparkConf': ?newClusterSparkConf,
      'newClusterSparkEnvVars': ?newClusterSparkEnvVars,
      'newClusterVersion': ?newClusterVersion,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'policyId': ?policyId,
      'type': type,
      'version': ?version,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory AzureDatabricksLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureDatabricksLinkedService(
      accessToken: map['accessToken'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['accessToken'] as Map).cast<String, dynamic>()),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authentication: map['authentication'] == null ? null : map['authentication'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      dataSecurityMode: map['dataSecurityMode'] == null ? null : map['dataSecurityMode'],
      description: map['description'] == null ? null : map['description'] as String,
      domain: map['domain'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      existingClusterId: map['existingClusterId'] == null ? null : map['existingClusterId'],
      instancePoolId: map['instancePoolId'] == null ? null : map['instancePoolId'],
      newClusterCustomTags: map['newClusterCustomTags'] == null ? null : (map['newClusterCustomTags'] as Map).cast<String, dynamic>(),
      newClusterDriverNodeType: map['newClusterDriverNodeType'] == null ? null : map['newClusterDriverNodeType'],
      newClusterEnableElasticDisk: map['newClusterEnableElasticDisk'] == null ? null : map['newClusterEnableElasticDisk'],
      newClusterInitScripts: map['newClusterInitScripts'] == null ? null : map['newClusterInitScripts'],
      newClusterLogDestination: map['newClusterLogDestination'] == null ? null : map['newClusterLogDestination'],
      newClusterNodeType: map['newClusterNodeType'] == null ? null : map['newClusterNodeType'],
      newClusterNumOfWorker: map['newClusterNumOfWorker'] == null ? null : map['newClusterNumOfWorker'],
      newClusterSparkConf: map['newClusterSparkConf'] == null ? null : (map['newClusterSparkConf'] as Map).cast<String, dynamic>(),
      newClusterSparkEnvVars: map['newClusterSparkEnvVars'] == null ? null : (map['newClusterSparkEnvVars'] as Map).cast<String, dynamic>(),
      newClusterVersion: map['newClusterVersion'] == null ? null : map['newClusterVersion'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      policyId: map['policyId'] == null ? null : map['policyId'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      workspaceResourceId: map['workspaceResourceId'] == null ? null : map['workspaceResourceId'],
    );
  }
}

