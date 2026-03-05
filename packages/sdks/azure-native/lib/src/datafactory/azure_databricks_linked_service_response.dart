// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Databricks linked service.
class AzureDatabricksLinkedServiceResponse {
  /// Access token for databricks REST API. Refer to https://docs.azuredatabricks.net/api/latest/authentication.html. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? accessToken;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Required to specify MSI, if using Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? authentication;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse>? credential;
  /// The data security mode for the Databricks Cluster. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? dataSecurityMode;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// &lt;REGION&gt;.azuredatabricks.net, domain name of your Databricks deployment. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> domain;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The id of an existing interactive cluster that will be used for all runs of this activity. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? existingClusterId;
  /// The id of an existing instance pool that will be used for all runs of this activity. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? instancePoolId;
  /// Additional tags for cluster resources. This property is ignored in instance pool configurations.
  final pulumi.Input<Map<String, dynamic>>? newClusterCustomTags;
  /// The driver node type for the new job cluster. This property is ignored in instance pool configurations. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? newClusterDriverNodeType;
  /// Enable the elastic disk on the new cluster. This property is now ignored, and takes the default elastic disk behavior in Databricks (elastic disks are always enabled). Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? newClusterEnableElasticDisk;
  /// User-defined initialization scripts for the new cluster. Type: array of strings (or Expression with resultType array of strings).
  final pulumi.Input<dynamic>? newClusterInitScripts;
  /// Specify a location to deliver Spark driver, worker, and event logs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? newClusterLogDestination;
  /// The node type of the new job cluster. This property is required if newClusterVersion is specified and instancePoolId is not specified. If instancePoolId is specified, this property is ignored. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? newClusterNodeType;
  /// If not using an existing interactive cluster, this specifies the number of worker nodes to use for the new job cluster or instance pool. For new job clusters, this a string-formatted Int32, like '1' means numOfWorker is 1 or '1:10' means auto-scale from 1 (min) to 10 (max). For instance pools, this is a string-formatted Int32, and can only specify a fixed number of worker nodes, such as '2'. Required if newClusterVersion is specified. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? newClusterNumOfWorker;
  /// A set of optional, user-specified Spark configuration key-value pairs.
  final pulumi.Input<Map<String, dynamic>>? newClusterSparkConf;
  /// A set of optional, user-specified Spark environment variables key-value pairs.
  final pulumi.Input<Map<String, dynamic>>? newClusterSparkEnvVars;
  /// If not using an existing interactive cluster, this specifies the Spark version of a new job cluster or instance pool nodes created for each run of this activity. Required if instancePoolId is specified. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? newClusterVersion;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The policy id for limiting the ability to configure clusters based on a user defined set of rules. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? policyId;
  /// Type of linked service.
  /// Expected value is 'AzureDatabricks'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;
  /// Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? workspaceResourceId;

  /// Creates a new [AzureDatabricksLinkedServiceResponse].
  /// [accessToken] Access token for databricks REST API. Refer to https://docs.azuredatabricks.net/api/latest/authentication.html. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authentication] Required to specify MSI, if using Workspace resource id for databricks REST API. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [dataSecurityMode] The data security mode for the Databricks Cluster. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [domain] &lt;REGION&gt;.azuredatabricks.net, domain name of your Databricks deployment. Type: string (or Expression with resultType string).
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
  AzureDatabricksLinkedServiceResponse({
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
      'accessToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(accessToken, (value) => value.toMap()),
      'annotations': ?annotations,
      'authentication': ?authentication,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReferenceResponse, Map<String, dynamic>>(credential, (value) => value.toMap()),
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
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyId': ?policyId,
      'type': type,
      'version': ?version,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory AzureDatabricksLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureDatabricksLinkedServiceResponse(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CredentialReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataSecurityMode: (() { final guardedValue = map['dataSecurityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: pulumi.Input.fromValue(map['domain']),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existingClusterId: (() { final guardedValue = map['existingClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      instancePoolId: (() { final guardedValue = map['instancePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      newClusterCustomTags: (() { final guardedValue = map['newClusterCustomTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      newClusterDriverNodeType: (() { final guardedValue = map['newClusterDriverNodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      newClusterEnableElasticDisk: (() { final guardedValue = map['newClusterEnableElasticDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      newClusterInitScripts: (() { final guardedValue = map['newClusterInitScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      newClusterLogDestination: (() { final guardedValue = map['newClusterLogDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      newClusterNodeType: (() { final guardedValue = map['newClusterNodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      newClusterNumOfWorker: (() { final guardedValue = map['newClusterNumOfWorker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      newClusterSparkConf: (() { final guardedValue = map['newClusterSparkConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      newClusterSparkEnvVars: (() { final guardedValue = map['newClusterSparkEnvVars']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      newClusterVersion: (() { final guardedValue = map['newClusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

