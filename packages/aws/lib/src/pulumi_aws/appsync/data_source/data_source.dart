import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_source_dynamodb_config/data_source_dynamodb_config.dart';
import '../data_source_elasticsearch_config/data_source_elasticsearch_config.dart';
import '../data_source_event_bridge_config/data_source_event_bridge_config.dart';
import '../data_source_http_config/data_source_http_config.dart';
import '../data_source_lambda_config/data_source_lambda_config.dart';
import '../data_source_opensearchservice_config/data_source_opensearchservice_config.dart';
import '../data_source_relational_database_config/data_source_relational_database_config.dart';
import 'data_source_args.dart';

/// Provides an AppSync Data Source.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.DataSource` using the `api_id`, a hyphen, and `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/dataSource:DataSource example abcdef123456-example
/// ```
class DataSource extends pulumi.CustomResource {
  /// API ID for the GraphQL API for the data source.
  late final pulumi.Output<String> apiId;

  /// ARN
  late final pulumi.Output<String> arn;

  /// Description of the data source.
  late final pulumi.Output<String?> description;

  /// DynamoDB settings. See `dynamodb_config` Block for details.
  late final pulumi.Output<DataSourceDynamodbConfig?> dynamodbConfig;

  /// Amazon Elasticsearch settings. See `elasticsearch_config` Block for details.
  late final pulumi.Output<DataSourceElasticsearchConfig?> elasticsearchConfig;

  /// AWS EventBridge settings. See `event_bridge_config` Block for details.
  late final pulumi.Output<DataSourceEventBridgeConfig?> eventBridgeConfig;

  /// HTTP settings. See `http_config` Block for details.
  late final pulumi.Output<DataSourceHttpConfig?> httpConfig;

  /// AWS Lambda settings. See `lambda_config` Block for details.
  late final pulumi.Output<DataSourceLambdaConfig?> lambdaConfig;

  /// User-supplied name for the data source.
  late final pulumi.Output<String> name;

  /// Amazon OpenSearch Service settings. See `opensearchservice_config` Block for details.
  late final pulumi.Output<DataSourceOpensearchserviceConfig?>
      opensearchserviceConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// AWS RDS settings. See `relational_database_config` Block for details.
  late final pulumi.Output<DataSourceRelationalDatabaseConfig?>
      relationalDatabaseConfig;

  /// IAM service role ARN for the data source. Required if `type` is specified as `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `AMAZON_EVENTBRIDGE`, or `AMAZON_OPENSEARCH_SERVICE`.
  late final pulumi.Output<String?> serviceRoleArn;

  /// Type of the Data Source. Valid values: `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `HTTP`, `NONE`, `RELATIONAL_DATABASE`, `AMAZON_EVENTBRIDGE`, `AMAZON_OPENSEARCH_SERVICE`.
  late final pulumi.Output<String> type;

  DataSource(
    String name, {
    DataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/dataSource:DataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.dynamodbConfig =
        registerOutput<DataSourceDynamodbConfig?>('dynamodbConfig');
    this.elasticsearchConfig =
        registerOutput<DataSourceElasticsearchConfig?>('elasticsearchConfig');
    this.eventBridgeConfig =
        registerOutput<DataSourceEventBridgeConfig?>('eventBridgeConfig');
    this.httpConfig = registerOutput<DataSourceHttpConfig?>('httpConfig');
    this.lambdaConfig = registerOutput<DataSourceLambdaConfig?>('lambdaConfig');
    this.name = registerOutput<String>('name');
    this.opensearchserviceConfig =
        registerOutput<DataSourceOpensearchserviceConfig?>(
            'opensearchserviceConfig');
    this.region = registerOutput<String>('region');
    this.relationalDatabaseConfig =
        registerOutput<DataSourceRelationalDatabaseConfig?>(
            'relationalDatabaseConfig');
    this.serviceRoleArn = registerOutput<String?>('serviceRoleArn');
    this.type = registerOutput<String>('type');
  }
}
