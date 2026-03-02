// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_machine_learning_datastore_args_doc}
/// The set of arguments for MachineLearningDatastore.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_machine_learning_datastore_args_doc}
class MachineLearningDatastoreArgs {
  /// Account Key of storage account.
  final pulumi.Input<String>? accountKey;
  /// The name of the storage account.
  final pulumi.Input<String>? accountName;
  /// The resource group the ADLS store belongs to. Defaults to selected resource group.
  final pulumi.Input<String>? adlsResourceGroup;
  /// The ID of the subscription the ADLS store belongs to. Defaults to selected subscription.
  final pulumi.Input<String>? adlsSubscriptionId;
  /// Authority url used to authenticate the user.
  final pulumi.Input<String>? authorityUrl;
  /// The service principal's client/application ID.
  final pulumi.Input<String>? clientId;
  /// The service principal's secret.
  final pulumi.Input<String>? clientSecret;
  /// The name of the azure blob container.
  final pulumi.Input<String>? containerName;
  /// Specifies datastore type.
  final pulumi.Input<String> dataStoreType;
  /// The database name.
  final pulumi.Input<String>? databaseName;
  /// The Datastore name.
  final pulumi.Input<String>? datastoreName;
  /// The description of the datastore.
  final pulumi.Input<String>? description;
  /// The endpoint of the server.
  final pulumi.Input<String>? endpoint;
  /// This sets the ssl value of the server. Defaults to true if not set.
  final pulumi.Input<bool>? enforceSSL;
  /// The file system name of the ADLS Gen2.
  final pulumi.Input<String>? fileSystem;
  /// Include datastore secret in response.
  final pulumi.Input<bool>? includeSecret;
  /// The name of the datastore.
  final pulumi.Input<String>? name;
  /// The password.
  final pulumi.Input<String>? password;
  /// The port number.
  final pulumi.Input<String>? port;
  /// The protocol to be used
  final pulumi.Input<String>? protocol;
  /// Name of the resource group in which workspace is located.
  final pulumi.Input<String> resourceGroupName;
  /// Determines what operations will be performed.
  final pulumi.Input<String>? resourceUrl;
  /// Sas Token of storage account.
  final pulumi.Input<String>? sasToken;
  /// The SQL/MySQL/PostgreSQL server name
  final pulumi.Input<String>? serverName;
  /// The name of the file share.
  final pulumi.Input<String>? shareName;
  /// Skip validation that ensures data can be loaded from the dataset before registration.
  final pulumi.Input<bool>? skipValidation;
  /// The resource group of the storage account. Defaults to selected resource group
  final pulumi.Input<String>? storageAccountResourceGroup;
  /// The subscription ID of the storage account. Defaults to selected subscription
  final pulumi.Input<String>? storageAccountSubscriptionId;
  /// The ADLS store name.
  final pulumi.Input<String>? storeName;
  /// The service principal Tenant ID.
  final pulumi.Input<String>? tenantId;
  /// The user ID.
  final pulumi.Input<String>? userId;
  /// The username of the database user.
  final pulumi.Input<String>? userName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;
  /// If set to true, datastore support data access authenticated with Workspace MSI.
  final pulumi.Input<bool>? workspaceSystemAssignedIdentity;

  /// Creates a new [MachineLearningDatastoreArgs].
  /// [accountKey] Account Key of storage account.
  /// [accountName] The name of the storage account.
  /// [adlsResourceGroup] The resource group the ADLS store belongs to. Defaults to selected resource group.
  /// [adlsSubscriptionId] The ID of the subscription the ADLS store belongs to. Defaults to selected subscription.
  /// [authorityUrl] Authority url used to authenticate the user.
  /// [clientId] The service principal's client/application ID.
  /// [clientSecret] The service principal's secret.
  /// [containerName] The name of the azure blob container.
  /// [dataStoreType] Specifies datastore type.
  /// [databaseName] The database name.
  /// [datastoreName] The Datastore name.
  /// [description] The description of the datastore.
  /// [endpoint] The endpoint of the server.
  /// [enforceSSL] This sets the ssl value of the server. Defaults to true if not set.
  /// [fileSystem] The file system name of the ADLS Gen2.
  /// [includeSecret] Include datastore secret in response.
  /// [name] The name of the datastore.
  /// [password] The password.
  /// [port] The port number.
  /// [protocol] The protocol to be used
  /// [resourceGroupName] Name of the resource group in which workspace is located.
  /// [resourceUrl] Determines what operations will be performed.
  /// [sasToken] Sas Token of storage account.
  /// [serverName] The SQL/MySQL/PostgreSQL server name
  /// [shareName] The name of the file share.
  /// [skipValidation] Skip validation that ensures data can be loaded from the dataset before registration.
  /// [storageAccountResourceGroup] The resource group of the storage account. Defaults to selected resource group
  /// [storageAccountSubscriptionId] The subscription ID of the storage account. Defaults to selected subscription
  /// [storeName] The ADLS store name.
  /// [tenantId] The service principal Tenant ID.
  /// [userId] The user ID.
  /// [userName] The username of the database user.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  /// [workspaceSystemAssignedIdentity] If set to true, datastore support data access authenticated with Workspace MSI.
  MachineLearningDatastoreArgs({
    this.accountKey,
    this.accountName,
    this.adlsResourceGroup,
    this.adlsSubscriptionId,
    this.authorityUrl,
    this.clientId,
    this.clientSecret,
    this.containerName,
    required this.dataStoreType,
    this.databaseName,
    this.datastoreName,
    this.description,
    this.endpoint,
    this.enforceSSL,
    this.fileSystem,
    this.includeSecret,
    this.name,
    this.password,
    this.port,
    this.protocol,
    required this.resourceGroupName,
    this.resourceUrl,
    this.sasToken,
    this.serverName,
    this.shareName,
    this.skipValidation,
    this.storageAccountResourceGroup,
    this.storageAccountSubscriptionId,
    this.storeName,
    this.tenantId,
    this.userId,
    this.userName,
    required this.workspaceName,
    this.workspaceSystemAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': ?accountName,
      'adlsResourceGroup': ?adlsResourceGroup,
      'adlsSubscriptionId': ?adlsSubscriptionId,
      'authorityUrl': ?authorityUrl,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'containerName': ?containerName,
      'dataStoreType': dataStoreType,
      'databaseName': ?databaseName,
      'datastoreName': ?datastoreName,
      'description': ?description,
      'endpoint': ?endpoint,
      'enforceSSL': ?enforceSSL,
      'fileSystem': ?fileSystem,
      'includeSecret': ?includeSecret,
      'name': ?name,
      'password': ?password,
      'port': ?port,
      'protocol': ?protocol,
      'resourceGroupName': resourceGroupName,
      'resourceUrl': ?resourceUrl,
      'sasToken': ?sasToken,
      'serverName': ?serverName,
      'shareName': ?shareName,
      'skipValidation': ?skipValidation,
      'storageAccountResourceGroup': ?storageAccountResourceGroup,
      'storageAccountSubscriptionId': ?storageAccountSubscriptionId,
      'storeName': ?storeName,
      'tenantId': ?tenantId,
      'userId': ?userId,
      'userName': ?userName,
      'workspaceName': workspaceName,
      'workspaceSystemAssignedIdentity': ?workspaceSystemAssignedIdentity,
    };
  }

  factory MachineLearningDatastoreArgs.fromMap(Map<String, dynamic> map) {
    return MachineLearningDatastoreArgs(
      accountKey: map['accountKey'] == null ? null : (map['accountKey']! as String).input(),
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      adlsResourceGroup: map['adlsResourceGroup'] == null ? null : (map['adlsResourceGroup']! as String).input(),
      adlsSubscriptionId: map['adlsSubscriptionId'] == null ? null : (map['adlsSubscriptionId']! as String).input(),
      authorityUrl: map['authorityUrl'] == null ? null : (map['authorityUrl']! as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      containerName: map['containerName'] == null ? null : (map['containerName']! as String).input(),
      dataStoreType: (map['dataStoreType'] as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      datastoreName: map['datastoreName'] == null ? null : (map['datastoreName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      enforceSSL: map['enforceSSL'] == null ? null : (map['enforceSSL']! as bool).input(),
      fileSystem: map['fileSystem'] == null ? null : (map['fileSystem']! as String).input(),
      includeSecret: map['includeSecret'] == null ? null : (map['includeSecret']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceUrl: map['resourceUrl'] == null ? null : (map['resourceUrl']! as String).input(),
      sasToken: map['sasToken'] == null ? null : (map['sasToken']! as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName']! as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName']! as String).input(),
      skipValidation: map['skipValidation'] == null ? null : (map['skipValidation']! as bool).input(),
      storageAccountResourceGroup: map['storageAccountResourceGroup'] == null ? null : (map['storageAccountResourceGroup']! as String).input(),
      storageAccountSubscriptionId: map['storageAccountSubscriptionId'] == null ? null : (map['storageAccountSubscriptionId']! as String).input(),
      storeName: map['storeName'] == null ? null : (map['storeName']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
      workspaceSystemAssignedIdentity: map['workspaceSystemAssignedIdentity'] == null ? null : (map['workspaceSystemAssignedIdentity']! as bool).input(),
    );
  }
}

