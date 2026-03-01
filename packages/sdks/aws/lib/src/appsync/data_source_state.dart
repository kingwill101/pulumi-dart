// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_dynamodb_config.dart';
import 'data_source_elasticsearch_config.dart';
import 'data_source_event_bridge_config.dart';
import 'data_source_http_config.dart';
import 'data_source_lambda_config.dart';
import 'data_source_opensearchservice_config.dart';
import 'data_source_relational_database_config.dart';

/// Input properties used for looking up and filtering DataSource resources.
class DataSourceState {
  /// API ID for the GraphQL API for the data source.
  final pulumi.Input<String>? apiId;
  /// ARN
  final pulumi.Input<String>? arn;
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
  final pulumi.Input<DataSourceOpensearchserviceConfig>? opensearchserviceConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AWS RDS settings. See `relational_database_config` Block for details.
  final pulumi.Input<DataSourceRelationalDatabaseConfig>? relationalDatabaseConfig;
  /// IAM service role ARN for the data source. Required if `type` is specified as `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `AMAZON_EVENTBRIDGE`, or `AMAZON_OPENSEARCH_SERVICE`.
  final pulumi.Input<String>? serviceRoleArn;
  /// Type of the Data Source. Valid values: `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `HTTP`, `NONE`, `RELATIONAL_DATABASE`, `AMAZON_EVENTBRIDGE`, `AMAZON_OPENSEARCH_SERVICE`.
  final pulumi.Input<String>? type;

  /// Creates a new [DataSourceState].
  /// [apiId] API ID for the GraphQL API for the data source.
  /// [arn] ARN
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
  DataSourceState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<DataSourceDynamodbConfig>? dynamodbConfig,
    pulumi.Output<DataSourceElasticsearchConfig>? elasticsearchConfig,
    pulumi.Output<DataSourceEventBridgeConfig>? eventBridgeConfig,
    pulumi.Output<DataSourceHttpConfig>? httpConfig,
    pulumi.Output<DataSourceLambdaConfig>? lambdaConfig,
    pulumi.Output<String>? name,
    pulumi.Output<DataSourceOpensearchserviceConfig>? opensearchserviceConfig,
    pulumi.Output<String>? region,
    pulumi.Output<DataSourceRelationalDatabaseConfig>? relationalDatabaseConfig,
    pulumi.Output<String>? serviceRoleArn,
    pulumi.Output<String>? type,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      dynamodbConfig = pulumi.Input.asOptionalInput<DataSourceDynamodbConfig>(dynamodbConfig),
      elasticsearchConfig = pulumi.Input.asOptionalInput<DataSourceElasticsearchConfig>(elasticsearchConfig),
      eventBridgeConfig = pulumi.Input.asOptionalInput<DataSourceEventBridgeConfig>(eventBridgeConfig),
      httpConfig = pulumi.Input.asOptionalInput<DataSourceHttpConfig>(httpConfig),
      lambdaConfig = pulumi.Input.asOptionalInput<DataSourceLambdaConfig>(lambdaConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      opensearchserviceConfig = pulumi.Input.asOptionalInput<DataSourceOpensearchserviceConfig>(opensearchserviceConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      relationalDatabaseConfig = pulumi.Input.asOptionalInput<DataSourceRelationalDatabaseConfig>(relationalDatabaseConfig),
      serviceRoleArn = pulumi.Input.asOptionalInput<String>(serviceRoleArn),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'arn': ?arn,
      'description': ?description,
      'dynamodbConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceDynamodbConfig, Map<String, dynamic>>(dynamodbConfig, (value) => value.toMap()),
      'elasticsearchConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceElasticsearchConfig, Map<String, dynamic>>(elasticsearchConfig, (value) => value.toMap()),
      'eventBridgeConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceEventBridgeConfig, Map<String, dynamic>>(eventBridgeConfig, (value) => value.toMap()),
      'httpConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceHttpConfig, Map<String, dynamic>>(httpConfig, (value) => value.toMap()),
      'lambdaConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceLambdaConfig, Map<String, dynamic>>(lambdaConfig, (value) => value.toMap()),
      'name': ?name,
      'opensearchserviceConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceOpensearchserviceConfig, Map<String, dynamic>>(opensearchserviceConfig, (value) => value.toMap()),
      'region': ?region,
      'relationalDatabaseConfig': ?pulumi.Input.mapOptionalInputValue<DataSourceRelationalDatabaseConfig, Map<String, dynamic>>(relationalDatabaseConfig, (value) => value.toMap()),
      'serviceRoleArn': ?serviceRoleArn,
      'type': ?type,
    };
  }

  factory DataSourceState.fromMap(Map<String, dynamic> map) {
    return DataSourceState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dynamodbConfig: map['dynamodbConfig'] == null ? null : pulumi.Output.create<DataSourceDynamodbConfig>(DataSourceDynamodbConfig.fromMap((map['dynamodbConfig'] as Map).cast<String, dynamic>())),
      elasticsearchConfig: map['elasticsearchConfig'] == null ? null : pulumi.Output.create<DataSourceElasticsearchConfig>(DataSourceElasticsearchConfig.fromMap((map['elasticsearchConfig'] as Map).cast<String, dynamic>())),
      eventBridgeConfig: map['eventBridgeConfig'] == null ? null : pulumi.Output.create<DataSourceEventBridgeConfig>(DataSourceEventBridgeConfig.fromMap((map['eventBridgeConfig'] as Map).cast<String, dynamic>())),
      httpConfig: map['httpConfig'] == null ? null : pulumi.Output.create<DataSourceHttpConfig>(DataSourceHttpConfig.fromMap((map['httpConfig'] as Map).cast<String, dynamic>())),
      lambdaConfig: map['lambdaConfig'] == null ? null : pulumi.Output.create<DataSourceLambdaConfig>(DataSourceLambdaConfig.fromMap((map['lambdaConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      opensearchserviceConfig: map['opensearchserviceConfig'] == null ? null : pulumi.Output.create<DataSourceOpensearchserviceConfig>(DataSourceOpensearchserviceConfig.fromMap((map['opensearchserviceConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      relationalDatabaseConfig: map['relationalDatabaseConfig'] == null ? null : pulumi.Output.create<DataSourceRelationalDatabaseConfig>(DataSourceRelationalDatabaseConfig.fromMap((map['relationalDatabaseConfig'] as Map).cast<String, dynamic>())),
      serviceRoleArn: map['serviceRoleArn'] == null ? null : pulumi.Output.create<String>(map['serviceRoleArn'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

