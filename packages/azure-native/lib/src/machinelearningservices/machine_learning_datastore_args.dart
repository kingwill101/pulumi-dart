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
    String? accountKey,
    String? accountName,
    String? adlsResourceGroup,
    String? adlsSubscriptionId,
    String? authorityUrl,
    String? clientId,
    String? clientSecret,
    String? containerName,
    required String dataStoreType,
    String? databaseName,
    String? datastoreName,
    String? description,
    String? endpoint,
    bool? enforceSSL,
    String? fileSystem,
    bool? includeSecret,
    String? name,
    String? password,
    String? port,
    String? protocol,
    required String resourceGroupName,
    String? resourceUrl,
    String? sasToken,
    String? serverName,
    String? shareName,
    bool? skipValidation,
    String? storageAccountResourceGroup,
    String? storageAccountSubscriptionId,
    String? storeName,
    String? tenantId,
    String? userId,
    String? userName,
    required String workspaceName,
    bool? workspaceSystemAssignedIdentity,
  }) :
      accountKey = pulumi.Input.asOptionalInput<String>(accountKey),
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      adlsResourceGroup = pulumi.Input.asOptionalInput<String>(adlsResourceGroup),
      adlsSubscriptionId = pulumi.Input.asOptionalInput<String>(adlsSubscriptionId),
      authorityUrl = pulumi.Input.asOptionalInput<String>(authorityUrl),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      containerName = pulumi.Input.asOptionalInput<String>(containerName),
      dataStoreType = pulumi.Input.asInput<String>(dataStoreType),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      datastoreName = pulumi.Input.asOptionalInput<String>(datastoreName),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      enforceSSL = pulumi.Input.asOptionalInput<bool>(enforceSSL),
      fileSystem = pulumi.Input.asOptionalInput<String>(fileSystem),
      includeSecret = pulumi.Input.asOptionalInput<bool>(includeSecret),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asOptionalInput<String>(port),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceUrl = pulumi.Input.asOptionalInput<String>(resourceUrl),
      sasToken = pulumi.Input.asOptionalInput<String>(sasToken),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      shareName = pulumi.Input.asOptionalInput<String>(shareName),
      skipValidation = pulumi.Input.asOptionalInput<bool>(skipValidation),
      storageAccountResourceGroup = pulumi.Input.asOptionalInput<String>(storageAccountResourceGroup),
      storageAccountSubscriptionId = pulumi.Input.asOptionalInput<String>(storageAccountSubscriptionId),
      storeName = pulumi.Input.asOptionalInput<String>(storeName),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      userName = pulumi.Input.asOptionalInput<String>(userName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName),
      workspaceSystemAssignedIdentity = pulumi.Input.asOptionalInput<bool>(workspaceSystemAssignedIdentity);

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
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      adlsResourceGroup: map['adlsResourceGroup'] == null ? null : map['adlsResourceGroup'] as String,
      adlsSubscriptionId: map['adlsSubscriptionId'] == null ? null : map['adlsSubscriptionId'] as String,
      authorityUrl: map['authorityUrl'] == null ? null : map['authorityUrl'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      dataStoreType: map['dataStoreType'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      datastoreName: map['datastoreName'] == null ? null : map['datastoreName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      enforceSSL: map['enforceSSL'] == null ? null : map['enforceSSL'] as bool,
      fileSystem: map['fileSystem'] == null ? null : map['fileSystem'] as String,
      includeSecret: map['includeSecret'] == null ? null : map['includeSecret'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceUrl: map['resourceUrl'] == null ? null : map['resourceUrl'] as String,
      sasToken: map['sasToken'] == null ? null : map['sasToken'] as String,
      serverName: map['serverName'] == null ? null : map['serverName'] as String,
      shareName: map['shareName'] == null ? null : map['shareName'] as String,
      skipValidation: map['skipValidation'] == null ? null : map['skipValidation'] as bool,
      storageAccountResourceGroup: map['storageAccountResourceGroup'] == null ? null : map['storageAccountResourceGroup'] as String,
      storageAccountSubscriptionId: map['storageAccountSubscriptionId'] == null ? null : map['storageAccountSubscriptionId'] as String,
      storeName: map['storeName'] == null ? null : map['storeName'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
      workspaceName: map['workspaceName'] as String,
      workspaceSystemAssignedIdentity: map['workspaceSystemAssignedIdentity'] == null ? null : map['workspaceSystemAssignedIdentity'] as bool,
    );
  }
}

