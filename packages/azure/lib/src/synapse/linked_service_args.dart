// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_integration_runtime.dart';

/// {@template pulumi_synapse_linked_service_linked_service_args_doc}
/// The set of arguments for LinkedService.
/// {@endtemplate}
/// {@macro pulumi_synapse_linked_service_linked_service_args_doc}
class LinkedServiceArgs {
  /// A map of additional properties to associate with the Synapse Linked Service.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Synapse Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The description for the Synapse Linked Service.
  final pulumi.Input<String>? description;
  /// A `integration_runtime` block as defined below.
  final pulumi.Input<LinkedServiceIntegrationRuntime>? integrationRuntime;
  /// The name which should be used for this Synapse Linked Service. Changing this forces a new Synapse Linked Service to be created.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Synapse Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The Synapse Workspace ID in which to associate the Linked Service with. Changing this forces a new Synapse Linked Service to be created.
  final pulumi.Input<String> synapseWorkspaceId;
  /// The type of data stores that will be connected to Synapse. Valid Values include `AmazonMWS`, `AmazonRdsForOracle`, `AmazonRdsForSqlServer`, `AmazonRedshift`, `AmazonS3`, `AzureBatch`. Changing this forces a new resource to be created.
  /// `AzureBlobFS`, `AzureBlobStorage`, `AzureDataExplorer`, `AzureDataLakeAnalytics`, `AzureDataLakeStore`, `AzureDatabricks`, `AzureDatabricksDeltaLake`, `AzureFileStorage`, `AzureFunction`,
  /// `AzureKeyVault`, `AzureML`, `AzureMLService`, `AzureMariaDB`, `AzureMySql`, `AzurePostgreSql`, `AzureSqlDW`, `AzureSqlDatabase`, `AzureSqlMI`, `AzureSearch`, `AzureStorage`,
  /// `AzureTableStorage`, `Cassandra`, `CommonDataServiceForApps`, `Concur`, `CosmosDb`, `CosmosDbMongoDbApi`, `Couchbase`, `CustomDataSource`, `Db2`, `Drill`,
  /// `Dynamics`, `DynamicsAX`, `DynamicsCrm`, `Eloqua`, `FileServer`, `FtpServer`, `GoogleAdWords`, `GoogleBigQuery`, `GoogleCloudStorage`, `Greenplum`, `HBase`, `HDInsight`,
  /// `HDInsightOnDemand`, `HttpServer`, `Hdfs`, `Hive`, `Hubspot`, `Impala`, `Informix`, `Jira`, `LinkedService`, `Magento`, `MariaDB`, `Marketo`, `MicrosoftAccess`, `MongoDb`,
  /// `MongoDbAtlas`, `MongoDbV2`, `MySql`, `Netezza`, `OData`, `Odbc`, `Office365`, `Oracle`, `OracleServiceCloud`, `Paypal`, `Phoenix`, `PostgreSql`, `Presto`, `QuickBooks`,
  /// `Responsys`, `RestService`, `SqlServer`, `Salesforce`, `SalesforceMarketingCloud`, `SalesforceServiceCloud`, `SapBW`, `SapCloudForCustomer`, `SapEcc`, `SapHana`, `SapOpenHub`,
  /// `SapTable`, `ServiceNow`, `Sftp`, `SharePointOnlineList`, `Shopify`, `Snowflake`, `Spark`, `Square`, `Sybase`, `Teradata`, `Vertica`, `Web`, `Xero`, `Zoho`.
  final pulumi.Input<String> type;
  /// A JSON object that contains the properties of the Synapse Linked Service.
  final pulumi.Input<String> typePropertiesJson;

  /// Creates a new [LinkedServiceArgs].
  /// [additionalProperties] A map of additional properties to associate with the Synapse Linked Service.
  /// [annotations] List of tags that can be used for describing the Synapse Linked Service.
  /// [description] The description for the Synapse Linked Service.
  /// [integrationRuntime] A `integration_runtime` block as defined below.
  /// [name] The name which should be used for this Synapse Linked Service. Changing this forces a new Synapse Linked Service to be created.
  /// [parameters] A map of parameters to associate with the Synapse Linked Service.
  /// [synapseWorkspaceId] The Synapse Workspace ID in which to associate the Linked Service with. Changing this forces a new Synapse Linked Service to be created.
  /// [type] The type of data stores that will be connected to Synapse. Valid Values include `AmazonMWS`, `AmazonRdsForOracle`, `AmazonRdsForSqlServer`, `AmazonRedshift`, `AmazonS3`, `AzureBatch`. Changing this forces a new resource to be created.
  /// [typePropertiesJson] A JSON object that contains the properties of the Synapse Linked Service.
  LinkedServiceArgs({
    Map<String, String>? additionalProperties,
    List<String>? annotations,
    String? description,
    LinkedServiceIntegrationRuntime? integrationRuntime,
    String? name,
    Map<String, String>? parameters,
    required String synapseWorkspaceId,
    required String type,
    required String typePropertiesJson,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntime = pulumi.Input.asOptionalInput<LinkedServiceIntegrationRuntime>(integrationRuntime),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      synapseWorkspaceId = pulumi.Input.asInput<String>(synapseWorkspaceId),
      type = pulumi.Input.asInput<String>(type),
      typePropertiesJson = pulumi.Input.asInput<String>(typePropertiesJson);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'description': ?description,
      'integrationRuntime': ?pulumi.Input.mapOptionalInputValue<LinkedServiceIntegrationRuntime, Map<String, dynamic>>(integrationRuntime, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?parameters,
      'synapseWorkspaceId': synapseWorkspaceId,
      'type': type,
      'typePropertiesJson': typePropertiesJson,
    };
  }

  factory LinkedServiceArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceArgs(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as Map).cast<String, String>(),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      integrationRuntime: map['integrationRuntime'] == null ? null : LinkedServiceIntegrationRuntime.fromMap((map['integrationRuntime'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      synapseWorkspaceId: map['synapseWorkspaceId'] as String,
      type: map['type'] as String,
      typePropertiesJson: map['typePropertiesJson'] as String,
    );
  }
}

