// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_dynamodb_config.dart';
import 'data_source_elasticsearch_config.dart';
import 'data_source_event_bridge_config.dart';
import 'data_source_http_config.dart';
import 'data_source_lambda_config.dart';
import 'data_source_opensearchservice_config.dart';
import 'data_source_relational_database_config.dart';

/// {@template pulumi_appsync_data_source_data_source_args_doc}
/// The set of arguments for DataSource.
/// {@endtemplate}
/// {@macro pulumi_appsync_data_source_data_source_args_doc}
class DataSourceArgs {
  /// API ID for the GraphQL API for the data source.
  final pulumi.Input<String> apiId;

  /// Description of the data source.
  final pulumi.Input<String>? description;

  /// DynamoDB settings. See `dynamodb_config` Block for details.
  final pulumi.Input<DataSourceDynamodbConfig>? dynamodbConfig;

  /// Amazon Elasticsearch settings. See `elasticsearch_config` Block for details.
  final pulumi.Input<DataSourceElasticsearchConfig>? elasticsearchConfig;

  /// AWS EventBridge settings. See `event_bridge_config` Block for details.
  final pulumi.Input<DataSourceEventBridgeConfig>? eventBridgeConfig;

  /// HTTP settings. See `http_config` Block for details.
  final pulumi.Input<DataSourceHttpConfig>? httpConfig;

  /// AWS Lambda settings. See `lambda_config` Block for details.
  final pulumi.Input<DataSourceLambdaConfig>? lambdaConfig;

  /// User-supplied name for the data source.
  final pulumi.Input<String>? name;

  /// Amazon OpenSearch Service settings. See `opensearchservice_config` Block for details.
  final pulumi.Input<DataSourceOpensearchserviceConfig>?
      opensearchserviceConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// AWS RDS settings. See `relational_database_config` Block for details.
  final pulumi.Input<DataSourceRelationalDatabaseConfig>?
      relationalDatabaseConfig;

  /// IAM service role ARN for the data source. Required if `type` is specified as `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `AMAZON_EVENTBRIDGE`, or `AMAZON_OPENSEARCH_SERVICE`.
  final pulumi.Input<String>? serviceRoleArn;

  /// Type of the Data Source. Valid values: `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `HTTP`, `NONE`, `RELATIONAL_DATABASE`, `AMAZON_EVENTBRIDGE`, `AMAZON_OPENSEARCH_SERVICE`.
  final pulumi.Input<String> type;

  /// Creates a new [DataSourceArgs].
  /// [apiId] API ID for the GraphQL API for the data source.
  /// [description] Description of the data source.
  /// [dynamodbConfig] DynamoDB settings. See `dynamodb_config` Block for details.
  /// [elasticsearchConfig] Amazon Elasticsearch settings. See `elasticsearch_config` Block for details.
  /// [eventBridgeConfig] AWS EventBridge settings. See `event_bridge_config` Block for details.
  /// [httpConfig] HTTP settings. See `http_config` Block for details.
  /// [lambdaConfig] AWS Lambda settings. See `lambda_config` Block for details.
  /// [name] User-supplied name for the data source.
  /// [opensearchserviceConfig] Amazon OpenSearch Service settings. See `opensearchservice_config` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relationalDatabaseConfig] AWS RDS settings. See `relational_database_config` Block for details.
  /// [serviceRoleArn] IAM service role ARN for the data source. Required if `type` is specified as `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `AMAZON_EVENTBRIDGE`, or `AMAZON_OPENSEARCH_SERVICE`.
  /// [type] Type of the Data Source. Valid values: `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `HTTP`, `NONE`, `RELATIONAL_DATABASE`, `AMAZON_EVENTBRIDGE`, `AMAZON_OPENSEARCH_SERVICE`.
  DataSourceArgs({
    required String apiId,
    String? description,
    DataSourceDynamodbConfig? dynamodbConfig,
    DataSourceElasticsearchConfig? elasticsearchConfig,
    DataSourceEventBridgeConfig? eventBridgeConfig,
    DataSourceHttpConfig? httpConfig,
    DataSourceLambdaConfig? lambdaConfig,
    String? name,
    DataSourceOpensearchserviceConfig? opensearchserviceConfig,
    String? region,
    DataSourceRelationalDatabaseConfig? relationalDatabaseConfig,
    String? serviceRoleArn,
    required String type,
  })  : apiId = pulumi.Input.asInput<String>(apiId),
        description = pulumi.Input.asOptionalInput<String>(description),
        dynamodbConfig = pulumi.Input.asOptionalInput<DataSourceDynamodbConfig>(
            dynamodbConfig),
        elasticsearchConfig =
            pulumi.Input.asOptionalInput<DataSourceElasticsearchConfig>(
                elasticsearchConfig),
        eventBridgeConfig =
            pulumi.Input.asOptionalInput<DataSourceEventBridgeConfig>(
                eventBridgeConfig),
        httpConfig =
            pulumi.Input.asOptionalInput<DataSourceHttpConfig>(httpConfig),
        lambdaConfig =
            pulumi.Input.asOptionalInput<DataSourceLambdaConfig>(lambdaConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        opensearchserviceConfig =
            pulumi.Input.asOptionalInput<DataSourceOpensearchserviceConfig>(
                opensearchserviceConfig),
        region = pulumi.Input.asOptionalInput<String>(region),
        relationalDatabaseConfig =
            pulumi.Input.asOptionalInput<DataSourceRelationalDatabaseConfig>(
                relationalDatabaseConfig),
        serviceRoleArn = pulumi.Input.asOptionalInput<String>(serviceRoleArn),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dynamodbConfigValue = dynamodbConfig;
    if (dynamodbConfigValue != null) {
      map['dynamodbConfig'] = pulumi.Input.mapOptionalInputValue<
          DataSourceDynamodbConfig,
          Map<String, dynamic>>(dynamodbConfigValue, (value) => value.toMap());
    }
    final elasticsearchConfigValue = elasticsearchConfig;
    if (elasticsearchConfigValue != null) {
      map['elasticsearchConfig'] = pulumi.Input.mapOptionalInputValue<
              DataSourceElasticsearchConfig, Map<String, dynamic>>(
          elasticsearchConfigValue, (value) => value.toMap());
    }
    final eventBridgeConfigValue = eventBridgeConfig;
    if (eventBridgeConfigValue != null) {
      map['eventBridgeConfig'] = pulumi.Input.mapOptionalInputValue<
              DataSourceEventBridgeConfig, Map<String, dynamic>>(
          eventBridgeConfigValue, (value) => value.toMap());
    }
    final httpConfigValue = httpConfig;
    if (httpConfigValue != null) {
      map['httpConfig'] = pulumi.Input.mapOptionalInputValue<
          DataSourceHttpConfig,
          Map<String, dynamic>>(httpConfigValue, (value) => value.toMap());
    }
    final lambdaConfigValue = lambdaConfig;
    if (lambdaConfigValue != null) {
      map['lambdaConfig'] = pulumi.Input.mapOptionalInputValue<
          DataSourceLambdaConfig,
          Map<String, dynamic>>(lambdaConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final opensearchserviceConfigValue = opensearchserviceConfig;
    if (opensearchserviceConfigValue != null) {
      map['opensearchserviceConfig'] = pulumi.Input.mapOptionalInputValue<
              DataSourceOpensearchserviceConfig, Map<String, dynamic>>(
          opensearchserviceConfigValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final relationalDatabaseConfigValue = relationalDatabaseConfig;
    if (relationalDatabaseConfigValue != null) {
      map['relationalDatabaseConfig'] = pulumi.Input.mapOptionalInputValue<
              DataSourceRelationalDatabaseConfig, Map<String, dynamic>>(
          relationalDatabaseConfigValue, (value) => value.toMap());
    }
    final serviceRoleArnValue = serviceRoleArn;
    if (serviceRoleArnValue != null) {
      map['serviceRoleArn'] = serviceRoleArnValue;
    }
    map['type'] = type;
    return map;
  }

  factory DataSourceArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs(
      apiId: map['apiId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      dynamodbConfig: map['dynamodbConfig'] == null
          ? null
          : DataSourceDynamodbConfig.fromMap(
              (map['dynamodbConfig'] as Map).cast<String, dynamic>()),
      elasticsearchConfig: map['elasticsearchConfig'] == null
          ? null
          : DataSourceElasticsearchConfig.fromMap(
              (map['elasticsearchConfig'] as Map).cast<String, dynamic>()),
      eventBridgeConfig: map['eventBridgeConfig'] == null
          ? null
          : DataSourceEventBridgeConfig.fromMap(
              (map['eventBridgeConfig'] as Map).cast<String, dynamic>()),
      httpConfig: map['httpConfig'] == null
          ? null
          : DataSourceHttpConfig.fromMap(
              (map['httpConfig'] as Map).cast<String, dynamic>()),
      lambdaConfig: map['lambdaConfig'] == null
          ? null
          : DataSourceLambdaConfig.fromMap(
              (map['lambdaConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      opensearchserviceConfig: map['opensearchserviceConfig'] == null
          ? null
          : DataSourceOpensearchserviceConfig.fromMap(
              (map['opensearchserviceConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      relationalDatabaseConfig: map['relationalDatabaseConfig'] == null
          ? null
          : DataSourceRelationalDatabaseConfig.fromMap(
              (map['relationalDatabaseConfig'] as Map).cast<String, dynamic>()),
      serviceRoleArn: map['serviceRoleArn'] == null
          ? null
          : map['serviceRoleArn'] as String,
      type: map['type'] as String,
    );
  }
}
