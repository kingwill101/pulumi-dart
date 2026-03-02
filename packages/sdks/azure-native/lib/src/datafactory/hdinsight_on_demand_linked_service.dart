// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';
import 'script_action.dart';

/// HDInsight ondemand linked service.
class HDInsightOnDemandLinkedService {
  /// Specifies additional storage accounts for the HDInsight linked service so that the Data Factory service can register them on your behalf.
  final pulumi.Input<List<LinkedServiceReference>>? additionalLinkedServiceNames;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The prefix of cluster name, postfix will be distinct with timestamp. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clusterNamePrefix;
  /// The password to access the cluster.
  final pulumi.Input<AzureKeyVaultSecretReference>? clusterPassword;
  /// The resource group where the cluster belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> clusterResourceGroup;
  /// HDInsight On-demand cluster resource group authentication type.
  final pulumi.Input<String>? clusterResourceGroupAuthType;
  /// Number of worker/data nodes in the cluster. Suggestion value: 4. Type: int (or Expression with resultType int).
  final pulumi.Input<dynamic> clusterSize;
  /// The password to SSH remotely connect cluster’s node (for Linux).
  final pulumi.Input<AzureKeyVaultSecretReference>? clusterSshPassword;
  /// The username to SSH remotely connect to cluster’s node (for Linux). Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clusterSshUserName;
  /// The cluster type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clusterType;
  /// The username to access the cluster. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clusterUserName;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Specifies the core configuration parameters (as in core-site.xml) for the HDInsight cluster to be created.
  final pulumi.Input<dynamic>? coreConfiguration;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference>? credential;
  /// Specifies the size of the data node for the HDInsight cluster.
  final pulumi.Input<dynamic>? dataNodeSize;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Specifies the HBase configuration parameters (hbase-site.xml) for the HDInsight cluster.
  final pulumi.Input<dynamic>? hBaseConfiguration;
  /// The name of Azure SQL linked service that point to the HCatalog database. The on-demand HDInsight cluster is created by using the Azure SQL database as the metastore.
  final pulumi.Input<LinkedServiceReference>? hcatalogLinkedServiceName;
  /// Specifies the HDFS configuration parameters (hdfs-site.xml) for the HDInsight cluster.
  final pulumi.Input<dynamic>? hdfsConfiguration;
  /// Specifies the size of the head node for the HDInsight cluster.
  final pulumi.Input<dynamic>? headNodeSize;
  /// Specifies the hive configuration parameters (hive-site.xml) for the HDInsight cluster.
  final pulumi.Input<dynamic>? hiveConfiguration;
  /// The customer’s subscription to host the cluster. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> hostSubscriptionId;
  /// Azure Storage linked service to be used by the on-demand cluster for storing and processing data.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// Specifies the MapReduce configuration parameters (mapred-site.xml) for the HDInsight cluster.
  final pulumi.Input<dynamic>? mapReduceConfiguration;
  /// Specifies the Oozie configuration parameters (oozie-site.xml) for the HDInsight cluster.
  final pulumi.Input<dynamic>? oozieConfiguration;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Custom script actions to run on HDI ondemand cluster once it's up. Please refer to https://docs.microsoft.com/en-us/azure/hdinsight/hdinsight-hadoop-customize-cluster-linux?toc=%2Fen-us%2Fazure%2Fhdinsight%2Fr-server%2FTOC.json&bc=%2Fen-us%2Fazure%2Fbread%2Ftoc.json#understanding-script-actions.
  final pulumi.Input<List<ScriptAction>>? scriptActions;
  /// The service principal id for the hostSubscriptionId. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// The key for the service principal id.
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalKey;
  /// The version of spark if the cluster type is 'spark'. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sparkVersion;
  /// Specifies the Storm configuration parameters (storm-site.xml) for the HDInsight cluster.
  final pulumi.Input<dynamic>? stormConfiguration;
  /// The ARM resource ID for the subnet in the vNet. If virtualNetworkId was specified, then this property is required. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? subnetName;
  /// The Tenant id/name to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> tenant;
  /// The allowed idle time for the on-demand HDInsight cluster. Specifies how long the on-demand HDInsight cluster stays alive after completion of an activity run if there are no other active jobs in the cluster. The minimum value is 5 mins. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> timeToLive;
  /// Type of linked service.
  /// Expected value is 'HDInsightOnDemand'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String> version;
  /// The ARM resource ID for the vNet to which the cluster should be joined after creation. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? virtualNetworkId;
  /// Specifies the Yarn configuration parameters (yarn-site.xml) for the HDInsight cluster.
  final pulumi.Input<dynamic>? yarnConfiguration;
  /// Specifies the size of the Zoo Keeper node for the HDInsight cluster.
  final pulumi.Input<dynamic>? zookeeperNodeSize;

  /// Creates a new [HDInsightOnDemandLinkedService].
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
  HDInsightOnDemandLinkedService({
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
      'additionalLinkedServiceNames': ?pulumi.Input.mapOptionalInputValue<List<LinkedServiceReference>, List<Map<String, dynamic>>>(additionalLinkedServiceNames, (value) => pulumi.Input.encodeList<LinkedServiceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'annotations': ?annotations,
      'clusterNamePrefix': ?clusterNamePrefix,
      'clusterPassword': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(clusterPassword, (value) => value.toMap()),
      'clusterResourceGroup': clusterResourceGroup,
      'clusterResourceGroupAuthType': ?clusterResourceGroupAuthType,
      'clusterSize': clusterSize,
      'clusterSshPassword': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(clusterSshPassword, (value) => value.toMap()),
      'clusterSshUserName': ?clusterSshUserName,
      'clusterType': ?clusterType,
      'clusterUserName': ?clusterUserName,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'coreConfiguration': ?coreConfiguration,
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReference, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'dataNodeSize': ?dataNodeSize,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'hBaseConfiguration': ?hBaseConfiguration,
      'hcatalogLinkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(hcatalogLinkedServiceName, (value) => value.toMap()),
      'hdfsConfiguration': ?hdfsConfiguration,
      'headNodeSize': ?headNodeSize,
      'hiveConfiguration': ?hiveConfiguration,
      'hostSubscriptionId': hostSubscriptionId,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'mapReduceConfiguration': ?mapReduceConfiguration,
      'oozieConfiguration': ?oozieConfiguration,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptActions': ?pulumi.Input.mapOptionalInputValue<List<ScriptAction>, List<Map<String, dynamic>>>(scriptActions, (value) => pulumi.Input.encodeList<ScriptAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
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

  factory HDInsightOnDemandLinkedService.fromMap(Map<String, dynamic> map) {
    return HDInsightOnDemandLinkedService(
      additionalLinkedServiceNames: map['additionalLinkedServiceNames'] == null ? null : (pulumi.Input.decodeList<LinkedServiceReference>(map['additionalLinkedServiceNames']!, (value) => LinkedServiceReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      clusterNamePrefix: map['clusterNamePrefix'] == null ? null : (map['clusterNamePrefix']!).input(),
      clusterPassword: map['clusterPassword'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['clusterPassword']! as Map).cast<String, dynamic>())).input(),
      clusterResourceGroup: (map['clusterResourceGroup']).input(),
      clusterResourceGroupAuthType: map['clusterResourceGroupAuthType'] == null ? null : (map['clusterResourceGroupAuthType']! as String).input(),
      clusterSize: (map['clusterSize']).input(),
      clusterSshPassword: map['clusterSshPassword'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['clusterSshPassword']! as Map).cast<String, dynamic>())).input(),
      clusterSshUserName: map['clusterSshUserName'] == null ? null : (map['clusterSshUserName']!).input(),
      clusterType: map['clusterType'] == null ? null : (map['clusterType']!).input(),
      clusterUserName: map['clusterUserName'] == null ? null : (map['clusterUserName']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      coreConfiguration: map['coreConfiguration'] == null ? null : (map['coreConfiguration']!).input(),
      credential: map['credential'] == null ? null : (CredentialReference.fromMap((map['credential']! as Map).cast<String, dynamic>())).input(),
      dataNodeSize: map['dataNodeSize'] == null ? null : (map['dataNodeSize']!).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      hBaseConfiguration: map['hBaseConfiguration'] == null ? null : (map['hBaseConfiguration']!).input(),
      hcatalogLinkedServiceName: map['hcatalogLinkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['hcatalogLinkedServiceName']! as Map).cast<String, dynamic>())).input(),
      hdfsConfiguration: map['hdfsConfiguration'] == null ? null : (map['hdfsConfiguration']!).input(),
      headNodeSize: map['headNodeSize'] == null ? null : (map['headNodeSize']!).input(),
      hiveConfiguration: map['hiveConfiguration'] == null ? null : (map['hiveConfiguration']!).input(),
      hostSubscriptionId: (map['hostSubscriptionId']).input(),
      linkedServiceName: (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      mapReduceConfiguration: map['mapReduceConfiguration'] == null ? null : (map['mapReduceConfiguration']!).input(),
      oozieConfiguration: map['oozieConfiguration'] == null ? null : (map['oozieConfiguration']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scriptActions: map['scriptActions'] == null ? null : (pulumi.Input.decodeList<ScriptAction>(map['scriptActions']!, (value) => ScriptAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId']!).input(),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey']! as Map).cast<String, dynamic>())).input(),
      sparkVersion: map['sparkVersion'] == null ? null : (map['sparkVersion']!).input(),
      stormConfiguration: map['stormConfiguration'] == null ? null : (map['stormConfiguration']!).input(),
      subnetName: map['subnetName'] == null ? null : (map['subnetName']!).input(),
      tenant: (map['tenant']).input(),
      timeToLive: (map['timeToLive']).input(),
      type: (map['type'] as String).input(),
      version: (map['version'] as String).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId']!).input(),
      yarnConfiguration: map['yarnConfiguration'] == null ? null : (map['yarnConfiguration']!).input(),
      zookeeperNodeSize: map['zookeeperNodeSize'] == null ? null : (map['zookeeperNodeSize']!).input(),
    );
  }
}

