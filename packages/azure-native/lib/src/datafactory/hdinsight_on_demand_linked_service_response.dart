// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';
import 'script_action_response.dart';

/// HDInsight ondemand linked service.
class HDInsightOnDemandLinkedServiceResponse {
  /// Specifies additional storage accounts for the HDInsight linked service so that the Data Factory service can register them on your behalf.
  final List<LinkedServiceReferenceResponse>? additionalLinkedServiceNames;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The prefix of cluster name, postfix will be distinct with timestamp. Type: string (or Expression with resultType string).
  final dynamic clusterNamePrefix;
  /// The password to access the cluster.
  final AzureKeyVaultSecretReferenceResponse? clusterPassword;
  /// The resource group where the cluster belongs. Type: string (or Expression with resultType string).
  final dynamic clusterResourceGroup;
  /// HDInsight On-demand cluster resource group authentication type.
  final String? clusterResourceGroupAuthType;
  /// Number of worker/data nodes in the cluster. Suggestion value: 4. Type: int (or Expression with resultType int).
  final dynamic clusterSize;
  /// The password to SSH remotely connect cluster’s node (for Linux).
  final AzureKeyVaultSecretReferenceResponse? clusterSshPassword;
  /// The username to SSH remotely connect to cluster’s node (for Linux). Type: string (or Expression with resultType string).
  final dynamic clusterSshUserName;
  /// The cluster type. Type: string (or Expression with resultType string).
  final dynamic clusterType;
  /// The username to access the cluster. Type: string (or Expression with resultType string).
  final dynamic clusterUserName;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Specifies the core configuration parameters (as in core-site.xml) for the HDInsight cluster to be created.
  final dynamic coreConfiguration;
  /// The credential reference containing authentication information.
  final CredentialReferenceResponse? credential;
  /// Specifies the size of the data node for the HDInsight cluster.
  final dynamic dataNodeSize;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Specifies the HBase configuration parameters (hbase-site.xml) for the HDInsight cluster.
  final dynamic hBaseConfiguration;
  /// The name of Azure SQL linked service that point to the HCatalog database. The on-demand HDInsight cluster is created by using the Azure SQL database as the metastore.
  final LinkedServiceReferenceResponse? hcatalogLinkedServiceName;
  /// Specifies the HDFS configuration parameters (hdfs-site.xml) for the HDInsight cluster.
  final dynamic hdfsConfiguration;
  /// Specifies the size of the head node for the HDInsight cluster.
  final dynamic headNodeSize;
  /// Specifies the hive configuration parameters (hive-site.xml) for the HDInsight cluster.
  final dynamic hiveConfiguration;
  /// The customer’s subscription to host the cluster. Type: string (or Expression with resultType string).
  final dynamic hostSubscriptionId;
  /// Azure Storage linked service to be used by the on-demand cluster for storing and processing data.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// Specifies the MapReduce configuration parameters (mapred-site.xml) for the HDInsight cluster.
  final dynamic mapReduceConfiguration;
  /// Specifies the Oozie configuration parameters (oozie-site.xml) for the HDInsight cluster.
  final dynamic oozieConfiguration;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Custom script actions to run on HDI ondemand cluster once it's up. Please refer to https://docs.microsoft.com/en-us/azure/hdinsight/hdinsight-hadoop-customize-cluster-linux?toc=%2Fen-us%2Fazure%2Fhdinsight%2Fr-server%2FTOC.json&bc=%2Fen-us%2Fazure%2Fbread%2Ftoc.json#understanding-script-actions.
  final List<ScriptActionResponse>? scriptActions;
  /// The service principal id for the hostSubscriptionId. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The key for the service principal id.
  final AzureKeyVaultSecretReferenceResponse? servicePrincipalKey;
  /// The version of spark if the cluster type is 'spark'. Type: string (or Expression with resultType string).
  final dynamic sparkVersion;
  /// Specifies the Storm configuration parameters (storm-site.xml) for the HDInsight cluster.
  final dynamic stormConfiguration;
  /// The ARM resource ID for the subnet in the vNet. If virtualNetworkId was specified, then this property is required. Type: string (or Expression with resultType string).
  final dynamic subnetName;
  /// The Tenant id/name to which the service principal belongs. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// The allowed idle time for the on-demand HDInsight cluster. Specifies how long the on-demand HDInsight cluster stays alive after completion of an activity run if there are no other active jobs in the cluster. The minimum value is 5 mins. Type: string (or Expression with resultType string).
  final dynamic timeToLive;
  /// Type of linked service.
  /// Expected value is 'HDInsightOnDemand'.
  final String type;
  /// Version of the linked service.
  final String version;
  /// The ARM resource ID for the vNet to which the cluster should be joined after creation. Type: string (or Expression with resultType string).
  final dynamic virtualNetworkId;
  /// Specifies the Yarn configuration parameters (yarn-site.xml) for the HDInsight cluster.
  final dynamic yarnConfiguration;
  /// Specifies the size of the Zoo Keeper node for the HDInsight cluster.
  final dynamic zookeeperNodeSize;

  /// Creates a new [HDInsightOnDemandLinkedServiceResponse].
  /// [additionalLinkedServiceNames] Specifies additional storage accounts for the HDInsight linked service so that the Data Factory service can register them on your behalf.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [clusterNamePrefix] The prefix of cluster name, postfix will be distinct with timestamp. Type: string (or Expression with resultType string).
  /// [clusterPassword] The password to access the cluster.
  /// [clusterResourceGroup] The resource group where the cluster belongs. Type: string (or Expression with resultType string).
  /// [clusterResourceGroupAuthType] HDInsight On-demand cluster resource group authentication type.
  /// [clusterSize] Number of worker/data nodes in the cluster. Suggestion value: 4. Type: int (or Expression with resultType int).
  /// [clusterSshPassword] The password to SSH remotely connect cluster’s node (for Linux).
  /// [clusterSshUserName] The username to SSH remotely connect to cluster’s node (for Linux). Type: string (or Expression with resultType string).
  /// [clusterType] The cluster type. Type: string (or Expression with resultType string).
  /// [clusterUserName] The username to access the cluster. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [coreConfiguration] Specifies the core configuration parameters (as in core-site.xml) for the HDInsight cluster to be created.
  /// [credential] The credential reference containing authentication information.
  /// [dataNodeSize] Specifies the size of the data node for the HDInsight cluster.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [hBaseConfiguration] Specifies the HBase configuration parameters (hbase-site.xml) for the HDInsight cluster.
  /// [hcatalogLinkedServiceName] The name of Azure SQL linked service that point to the HCatalog database. The on-demand HDInsight cluster is created by using the Azure SQL database as the metastore.
  /// [hdfsConfiguration] Specifies the HDFS configuration parameters (hdfs-site.xml) for the HDInsight cluster.
  /// [headNodeSize] Specifies the size of the head node for the HDInsight cluster.
  /// [hiveConfiguration] Specifies the hive configuration parameters (hive-site.xml) for the HDInsight cluster.
  /// [hostSubscriptionId] The customer’s subscription to host the cluster. Type: string (or Expression with resultType string).
  /// [linkedServiceName] Azure Storage linked service to be used by the on-demand cluster for storing and processing data.
  /// [mapReduceConfiguration] Specifies the MapReduce configuration parameters (mapred-site.xml) for the HDInsight cluster.
  /// [oozieConfiguration] Specifies the Oozie configuration parameters (oozie-site.xml) for the HDInsight cluster.
  /// [parameters] Parameters for linked service.
  /// [scriptActions] Custom script actions to run on HDI ondemand cluster once it's up. Please refer to https://docs.microsoft.com/en-us/azure/hdinsight/hdinsight-hadoop-customize-cluster-linux?toc=%2Fen-us%2Fazure%2Fhdinsight%2Fr-server%2FTOC.json&bc=%2Fen-us%2Fazure%2Fbread%2Ftoc.json#understanding-script-actions.
  /// [servicePrincipalId] The service principal id for the hostSubscriptionId. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key for the service principal id.
  /// [sparkVersion] The version of spark if the cluster type is 'spark'. Type: string (or Expression with resultType string).
  /// [stormConfiguration] Specifies the Storm configuration parameters (storm-site.xml) for the HDInsight cluster.
  /// [subnetName] The ARM resource ID for the subnet in the vNet. If virtualNetworkId was specified, then this property is required. Type: string (or Expression with resultType string).
  /// [tenant] The Tenant id/name to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [timeToLive] The allowed idle time for the on-demand HDInsight cluster. Specifies how long the on-demand HDInsight cluster stays alive after completion of an activity run if there are no other active jobs in the cluster. The minimum value is 5 mins. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  /// [virtualNetworkId] The ARM resource ID for the vNet to which the cluster should be joined after creation. Type: string (or Expression with resultType string).
  /// [yarnConfiguration] Specifies the Yarn configuration parameters (yarn-site.xml) for the HDInsight cluster.
  /// [zookeeperNodeSize] Specifies the size of the Zoo Keeper node for the HDInsight cluster.
  HDInsightOnDemandLinkedServiceResponse({
    this.additionalLinkedServiceNames,
    this.annotations,
    this.clusterNamePrefix,
    this.clusterPassword,
    required this.clusterResourceGroup,
    this.clusterResourceGroupAuthType,
    required this.clusterSize,
    this.clusterSshPassword,
    this.clusterSshUserName,
    this.clusterType,
    this.clusterUserName,
    this.connectVia,
    this.coreConfiguration,
    this.credential,
    this.dataNodeSize,
    this.description,
    this.encryptedCredential,
    this.hBaseConfiguration,
    this.hcatalogLinkedServiceName,
    this.hdfsConfiguration,
    this.headNodeSize,
    this.hiveConfiguration,
    required this.hostSubscriptionId,
    required this.linkedServiceName,
    this.mapReduceConfiguration,
    this.oozieConfiguration,
    this.parameters,
    this.scriptActions,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.sparkVersion,
    this.stormConfiguration,
    this.subnetName,
    required this.tenant,
    required this.timeToLive,
    required this.type,
    required this.version,
    this.virtualNetworkId,
    this.yarnConfiguration,
    this.zookeeperNodeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLinkedServiceNames': ?additionalLinkedServiceNames == null ? null : pulumi.Input.encodeList<LinkedServiceReferenceResponse, Map<String, dynamic>>(additionalLinkedServiceNames!, (value) => value.toMap()),
      'annotations': ?annotations,
      'clusterNamePrefix': ?clusterNamePrefix,
      'clusterPassword': ?clusterPassword == null ? null : clusterPassword!.toMap(),
      'clusterResourceGroup': clusterResourceGroup,
      'clusterResourceGroupAuthType': ?clusterResourceGroupAuthType,
      'clusterSize': clusterSize,
      'clusterSshPassword': ?clusterSshPassword == null ? null : clusterSshPassword!.toMap(),
      'clusterSshUserName': ?clusterSshUserName,
      'clusterType': ?clusterType,
      'clusterUserName': ?clusterUserName,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'coreConfiguration': ?coreConfiguration,
      'credential': ?credential == null ? null : credential!.toMap(),
      'dataNodeSize': ?dataNodeSize,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'hBaseConfiguration': ?hBaseConfiguration,
      'hcatalogLinkedServiceName': ?hcatalogLinkedServiceName == null ? null : hcatalogLinkedServiceName!.toMap(),
      'hdfsConfiguration': ?hdfsConfiguration,
      'headNodeSize': ?headNodeSize,
      'hiveConfiguration': ?hiveConfiguration,
      'hostSubscriptionId': hostSubscriptionId,
      'linkedServiceName': linkedServiceName.toMap(),
      'mapReduceConfiguration': ?mapReduceConfiguration,
      'oozieConfiguration': ?oozieConfiguration,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'scriptActions': ?scriptActions == null ? null : pulumi.Input.encodeList<ScriptActionResponse, Map<String, dynamic>>(scriptActions!, (value) => value.toMap()),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'sparkVersion': ?sparkVersion,
      'stormConfiguration': ?stormConfiguration,
      'subnetName': ?subnetName,
      'tenant': tenant,
      'timeToLive': timeToLive,
      'type': type,
      'version': version,
      'virtualNetworkId': ?virtualNetworkId,
      'yarnConfiguration': ?yarnConfiguration,
      'zookeeperNodeSize': ?zookeeperNodeSize,
    };
  }

  factory HDInsightOnDemandLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return HDInsightOnDemandLinkedServiceResponse(
      additionalLinkedServiceNames: map['additionalLinkedServiceNames'] == null ? null : pulumi.Input.decodeList<LinkedServiceReferenceResponse>(map['additionalLinkedServiceNames'], (value) => LinkedServiceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      clusterNamePrefix: map['clusterNamePrefix'] == null ? null : map['clusterNamePrefix'],
      clusterPassword: map['clusterPassword'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['clusterPassword'] as Map).cast<String, dynamic>()),
      clusterResourceGroup: map['clusterResourceGroup'],
      clusterResourceGroupAuthType: map['clusterResourceGroupAuthType'] == null ? null : map['clusterResourceGroupAuthType'] as String,
      clusterSize: map['clusterSize'],
      clusterSshPassword: map['clusterSshPassword'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['clusterSshPassword'] as Map).cast<String, dynamic>()),
      clusterSshUserName: map['clusterSshUserName'] == null ? null : map['clusterSshUserName'],
      clusterType: map['clusterType'] == null ? null : map['clusterType'],
      clusterUserName: map['clusterUserName'] == null ? null : map['clusterUserName'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      coreConfiguration: map['coreConfiguration'] == null ? null : map['coreConfiguration'],
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      dataNodeSize: map['dataNodeSize'] == null ? null : map['dataNodeSize'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      hBaseConfiguration: map['hBaseConfiguration'] == null ? null : map['hBaseConfiguration'],
      hcatalogLinkedServiceName: map['hcatalogLinkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['hcatalogLinkedServiceName'] as Map).cast<String, dynamic>()),
      hdfsConfiguration: map['hdfsConfiguration'] == null ? null : map['hdfsConfiguration'],
      headNodeSize: map['headNodeSize'] == null ? null : map['headNodeSize'],
      hiveConfiguration: map['hiveConfiguration'] == null ? null : map['hiveConfiguration'],
      hostSubscriptionId: map['hostSubscriptionId'],
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      mapReduceConfiguration: map['mapReduceConfiguration'] == null ? null : map['mapReduceConfiguration'],
      oozieConfiguration: map['oozieConfiguration'] == null ? null : map['oozieConfiguration'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      scriptActions: map['scriptActions'] == null ? null : pulumi.Input.decodeList<ScriptActionResponse>(map['scriptActions'], (value) => ScriptActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      sparkVersion: map['sparkVersion'] == null ? null : map['sparkVersion'],
      stormConfiguration: map['stormConfiguration'] == null ? null : map['stormConfiguration'],
      subnetName: map['subnetName'] == null ? null : map['subnetName'],
      tenant: map['tenant'],
      timeToLive: map['timeToLive'],
      type: map['type'] as String,
      version: map['version'] as String,
      virtualNetworkId: map['virtualNetworkId'] == null ? null : map['virtualNetworkId'],
      yarnConfiguration: map['yarnConfiguration'] == null ? null : map['yarnConfiguration'],
      zookeeperNodeSize: map['zookeeperNodeSize'] == null ? null : map['zookeeperNodeSize'],
    );
  }
}

