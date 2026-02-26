// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_source_dynamodb_config/data_source_dynamodb_config.dart';
import '../data_source_elasticsearch_config/data_source_elasticsearch_config.dart';
import '../data_source_event_bridge_config/data_source_event_bridge_config.dart';
import '../data_source_http_config/data_source_http_config.dart';
import '../data_source_lambda_config/data_source_lambda_config.dart';
import '../data_source_opensearchservice_config/data_source_opensearchservice_config.dart';
import '../data_source_relational_database_config/data_source_relational_database_config.dart';

/// The set of arguments for DataSource.
class DataSourceArgs {
  /// API ID for the GraphQL API for the data source.
  final Input<String> apiId;

  /// Description of the data source.
  final Input<String>? description;

  /// DynamoDB settings. See <span pulumi-lang-nodejs="`dynamodbConfig`" pulumi-lang-dotnet="`DynamodbConfig`" pulumi-lang-go="`dynamodbConfig`" pulumi-lang-python="`dynamodb_config`" pulumi-lang-yaml="`dynamodbConfig`" pulumi-lang-java="`dynamodbConfig`">`dynamodb_config`</span> Block for details.
  final Input<DataSourceDynamodbConfig>? dynamodbConfig;

  /// Amazon Elasticsearch settings. See <span pulumi-lang-nodejs="`elasticsearchConfig`" pulumi-lang-dotnet="`ElasticsearchConfig`" pulumi-lang-go="`elasticsearchConfig`" pulumi-lang-python="`elasticsearch_config`" pulumi-lang-yaml="`elasticsearchConfig`" pulumi-lang-java="`elasticsearchConfig`">`elasticsearch_config`</span> Block for details.
  final Input<DataSourceElasticsearchConfig>? elasticsearchConfig;

  /// AWS EventBridge settings. See <span pulumi-lang-nodejs="`eventBridgeConfig`" pulumi-lang-dotnet="`EventBridgeConfig`" pulumi-lang-go="`eventBridgeConfig`" pulumi-lang-python="`event_bridge_config`" pulumi-lang-yaml="`eventBridgeConfig`" pulumi-lang-java="`eventBridgeConfig`">`event_bridge_config`</span> Block for details.
  final Input<DataSourceEventBridgeConfig>? eventBridgeConfig;

  /// HTTP settings. See <span pulumi-lang-nodejs="`httpConfig`" pulumi-lang-dotnet="`HttpConfig`" pulumi-lang-go="`httpConfig`" pulumi-lang-python="`http_config`" pulumi-lang-yaml="`httpConfig`" pulumi-lang-java="`httpConfig`">`http_config`</span> Block for details.
  final Input<DataSourceHttpConfig>? httpConfig;

  /// AWS Lambda settings. See <span pulumi-lang-nodejs="`lambdaConfig`" pulumi-lang-dotnet="`LambdaConfig`" pulumi-lang-go="`lambdaConfig`" pulumi-lang-python="`lambda_config`" pulumi-lang-yaml="`lambdaConfig`" pulumi-lang-java="`lambdaConfig`">`lambda_config`</span> Block for details.
  final Input<DataSourceLambdaConfig>? lambdaConfig;

  /// User-supplied name for the data source.
  final Input<String>? name;

  /// Amazon OpenSearch Service settings. See <span pulumi-lang-nodejs="`opensearchserviceConfig`" pulumi-lang-dotnet="`OpensearchserviceConfig`" pulumi-lang-go="`opensearchserviceConfig`" pulumi-lang-python="`opensearchservice_config`" pulumi-lang-yaml="`opensearchserviceConfig`" pulumi-lang-java="`opensearchserviceConfig`">`opensearchservice_config`</span> Block for details.
  final Input<DataSourceOpensearchserviceConfig>? opensearchserviceConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// AWS RDS settings. See <span pulumi-lang-nodejs="`relationalDatabaseConfig`" pulumi-lang-dotnet="`RelationalDatabaseConfig`" pulumi-lang-go="`relationalDatabaseConfig`" pulumi-lang-python="`relational_database_config`" pulumi-lang-yaml="`relationalDatabaseConfig`" pulumi-lang-java="`relationalDatabaseConfig`">`relational_database_config`</span> Block for details.
  final Input<DataSourceRelationalDatabaseConfig>? relationalDatabaseConfig;

  /// IAM service role ARN for the data source. Required if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is specified as `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `AMAZON_EVENTBRIDGE`, or `AMAZON_OPENSEARCH_SERVICE`.
  final Input<String>? serviceRoleArn;

  /// Type of the Data Source. Valid values: `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `HTTP`, `NONE`, `RELATIONAL_DATABASE`, `AMAZON_EVENTBRIDGE`, `AMAZON_OPENSEARCH_SERVICE`.
  final Input<String> type;

  DataSourceArgs({
    required this.apiId,
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
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dynamodbConfigValue = dynamodbConfig;
    if (dynamodbConfigValue != null) {
      map['dynamodbConfig'] = Input.mapOptionalInputValue<
          DataSourceDynamodbConfig,
          Map<String, dynamic>>(dynamodbConfigValue, (value) => value.toMap());
    }
    final elasticsearchConfigValue = elasticsearchConfig;
    if (elasticsearchConfigValue != null) {
      map['elasticsearchConfig'] = Input.mapOptionalInputValue<
              DataSourceElasticsearchConfig, Map<String, dynamic>>(
          elasticsearchConfigValue, (value) => value.toMap());
    }
    final eventBridgeConfigValue = eventBridgeConfig;
    if (eventBridgeConfigValue != null) {
      map['eventBridgeConfig'] = Input.mapOptionalInputValue<
              DataSourceEventBridgeConfig, Map<String, dynamic>>(
          eventBridgeConfigValue, (value) => value.toMap());
    }
    final httpConfigValue = httpConfig;
    if (httpConfigValue != null) {
      map['httpConfig'] = Input.mapOptionalInputValue<DataSourceHttpConfig,
          Map<String, dynamic>>(httpConfigValue, (value) => value.toMap());
    }
    final lambdaConfigValue = lambdaConfig;
    if (lambdaConfigValue != null) {
      map['lambdaConfig'] = Input.mapOptionalInputValue<DataSourceLambdaConfig,
          Map<String, dynamic>>(lambdaConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final opensearchserviceConfigValue = opensearchserviceConfig;
    if (opensearchserviceConfigValue != null) {
      map['opensearchserviceConfig'] = Input.mapOptionalInputValue<
              DataSourceOpensearchserviceConfig, Map<String, dynamic>>(
          opensearchserviceConfigValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final relationalDatabaseConfigValue = relationalDatabaseConfig;
    if (relationalDatabaseConfigValue != null) {
      map['relationalDatabaseConfig'] = Input.mapOptionalInputValue<
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
      apiId: Input.asInput<String>(map['apiId']),
      description: Input.asOptionalInput<String>(map['description']),
      dynamodbConfig: Input.asOptionalInput<DataSourceDynamodbConfig>(
          map['dynamodbConfig']),
      elasticsearchConfig: Input.asOptionalInput<DataSourceElasticsearchConfig>(
          map['elasticsearchConfig']),
      eventBridgeConfig: Input.asOptionalInput<DataSourceEventBridgeConfig>(
          map['eventBridgeConfig']),
      httpConfig:
          Input.asOptionalInput<DataSourceHttpConfig>(map['httpConfig']),
      lambdaConfig:
          Input.asOptionalInput<DataSourceLambdaConfig>(map['lambdaConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      opensearchserviceConfig:
          Input.asOptionalInput<DataSourceOpensearchserviceConfig>(
              map['opensearchserviceConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      relationalDatabaseConfig:
          Input.asOptionalInput<DataSourceRelationalDatabaseConfig>(
              map['relationalDatabaseConfig']),
      serviceRoleArn: Input.asOptionalInput<String>(map['serviceRoleArn']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
