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
  /// DynamoDB settings. See `dynamodbConfig` Block for details.
  final pulumi.Input<DataSourceDynamodbConfig>? dynamodbConfig;
  /// Amazon Elasticsearch settings. See `elasticsearchConfig` Block for details.
  final pulumi.Input<DataSourceElasticsearchConfig>? elasticsearchConfig;
  /// AWS EventBridge settings. See `eventBridgeConfig` Block for details.
  final pulumi.Input<DataSourceEventBridgeConfig>? eventBridgeConfig;
  /// HTTP settings. See `httpConfig` Block for details.
  final pulumi.Input<DataSourceHttpConfig>? httpConfig;
  /// AWS Lambda settings. See `lambdaConfig` Block for details.
  final pulumi.Input<DataSourceLambdaConfig>? lambdaConfig;
  /// User-supplied name for the data source.
  final pulumi.Input<String>? name;
  /// Amazon OpenSearch Service settings. See `opensearchserviceConfig` Block for details.
  final pulumi.Input<DataSourceOpensearchserviceConfig>? opensearchserviceConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AWS RDS settings. See `relationalDatabaseConfig` Block for details.
  final pulumi.Input<DataSourceRelationalDatabaseConfig>? relationalDatabaseConfig;
  /// IAM service role ARN for the data source. Required if `type` is specified as `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `AMAZON_EVENTBRIDGE`, or `AMAZON_OPENSEARCH_SERVICE`.
  final pulumi.Input<String>? serviceRoleArn;
  /// Type of the Data Source. Valid values: `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `HTTP`, `NONE`, `RELATIONAL_DATABASE`, `AMAZON_EVENTBRIDGE`, `AMAZON_OPENSEARCH_SERVICE`.
  final pulumi.Input<String>? type;

  /// Creates a new [DataSourceState].
  /// [apiId] API ID for the GraphQL API for the data source.
  /// [arn] ARN
  /// [description] Description of the data source.
  /// [dynamodbConfig] DynamoDB settings. See `dynamodbConfig` Block for details.
  /// [elasticsearchConfig] Amazon Elasticsearch settings. See `elasticsearchConfig` Block for details.
  /// [eventBridgeConfig] AWS EventBridge settings. See `eventBridgeConfig` Block for details.
  /// [httpConfig] HTTP settings. See `httpConfig` Block for details.
  /// [lambdaConfig] AWS Lambda settings. See `lambdaConfig` Block for details.
  /// [name] User-supplied name for the data source.
  /// [opensearchserviceConfig] Amazon OpenSearch Service settings. See `opensearchserviceConfig` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relationalDatabaseConfig] AWS RDS settings. See `relationalDatabaseConfig` Block for details.
  /// [serviceRoleArn] IAM service role ARN for the data source. Required if `type` is specified as `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `AMAZON_EVENTBRIDGE`, or `AMAZON_OPENSEARCH_SERVICE`.
  /// [type] Type of the Data Source. Valid values: `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `HTTP`, `NONE`, `RELATIONAL_DATABASE`, `AMAZON_EVENTBRIDGE`, `AMAZON_OPENSEARCH_SERVICE`.
  const DataSourceState({
    this.apiId,
    this.arn,
    this.description,
    this.dynamodbConfig,
    this.elasticsearchConfig,
    this.eventBridgeConfig,
    this.httpConfig,
    this.lambdaConfig,
    this.name,
    this.opensearchserviceConfig,
    this.region,
    this.relationalDatabaseConfig,
    this.serviceRoleArn,
    this.type,
  });

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
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamodbConfig: (() { final guardedValue = map['dynamodbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceDynamodbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elasticsearchConfig: (() { final guardedValue = map['elasticsearchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceElasticsearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventBridgeConfig: (() { final guardedValue = map['eventBridgeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceEventBridgeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpConfig: (() { final guardedValue = map['httpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceHttpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaConfig: (() { final guardedValue = map['lambdaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceLambdaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      opensearchserviceConfig: (() { final guardedValue = map['opensearchserviceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceOpensearchserviceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relationalDatabaseConfig: (() { final guardedValue = map['relationalDatabaseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceRelationalDatabaseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceRoleArn: (() { final guardedValue = map['serviceRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
