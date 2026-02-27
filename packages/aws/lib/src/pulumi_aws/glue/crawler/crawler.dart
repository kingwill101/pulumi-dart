import 'package:pulumi/pulumi.dart';
import '../crawler_catalog_target/crawler_catalog_target.dart';
import '../crawler_delta_target/crawler_delta_target.dart';
import '../crawler_dynamodb_target/crawler_dynamodb_target.dart';
import '../crawler_hudi_target/crawler_hudi_target.dart';
import '../crawler_iceberg_target/crawler_iceberg_target.dart';
import '../crawler_jdbc_target/crawler_jdbc_target.dart';
import '../crawler_lake_formation_configuration/crawler_lake_formation_configuration.dart';
import '../crawler_lineage_configuration/crawler_lineage_configuration.dart';
import '../crawler_mongodb_target/crawler_mongodb_target.dart';
import '../crawler_recrawl_policy/crawler_recrawl_policy.dart';
import '../crawler_s3_target/crawler_s3_target.dart';
import '../crawler_schema_change_policy/crawler_schema_change_policy.dart';
import 'crawler_args.dart';

/// Manages a Glue Crawler. More information can be found in the [AWS Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html)
///
/// ## Example Usage
///
/// ### DynamoDB Target Example
///
///
///
/// ### JDBC Target Example
///
///
///
/// ### S3 Target Example
///
///
///
/// ### Catalog Target Example
///
///
///
/// ### MongoDB Target Example
///
///
///
/// ### Configuration Settings Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Crawlers using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/crawler:Crawler MyJob MyJob
/// ```
class Crawler extends CustomResource {
  /// The ARN of the crawler
  late final Output<String> arn;

  /// List of nested AWS Glue Data Catalog target arguments. See Catalog Target below.
  late final Output<List<CrawlerCatalogTarget>?> catalogTargets;

  /// List of custom classifiers. By default, all AWS classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
  late final Output<List<String>?> classifiers;

  /// JSON string of configuration information. For more details see [Setting Crawler Configuration Options](https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).
  late final Output<String?> configuration;

  /// Glue database where results are written.
  late final Output<String> databaseName;

  /// List of nested Delta Lake target arguments. See Delta Target below.
  late final Output<List<CrawlerDeltaTarget>?> deltaTargets;

  /// Description of the crawler.
  late final Output<String?> description;

  /// List of nested DynamoDB target arguments. See Dynamodb Target below.
  late final Output<List<CrawlerDynamodbTarget>?> dynamodbTargets;

  /// List of nested Hudi target arguments. See Iceberg Target below.
  late final Output<List<CrawlerHudiTarget>?> hudiTargets;

  /// List of nested Iceberg target arguments. See Iceberg Target below.
  late final Output<List<CrawlerIcebergTarget>?> icebergTargets;

  /// List of nested JDBC target arguments. See JDBC Target below.
  late final Output<List<CrawlerJdbcTarget>?> jdbcTargets;

  /// Specifies Lake Formation configuration settings for the crawler. See Lake Formation Configuration below.
  late final Output<CrawlerLakeFormationConfiguration?>
      lakeFormationConfiguration;

  /// Specifies data lineage configuration settings for the crawler. See Lineage Configuration below.
  late final Output<CrawlerLineageConfiguration?> lineageConfiguration;

  /// List of nested MongoDB target arguments. See MongoDB Target below.
  late final Output<List<CrawlerMongodbTarget>?> mongodbTargets;

  /// Name of the crawler.
  late final Output<String> name;

  /// A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.. See Recrawl Policy below.
  late final Output<CrawlerRecrawlPolicy?> recrawlPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM role friendly name (including path without leading slash), or ARN of an IAM role, used by the crawler to access other resources.
  late final Output<String> role;

  /// List of nested Amazon S3 target arguments. See S3 Target below.
  late final Output<List<CrawlerS3Target>?> s3Targets;

  /// A cron expression used to specify the schedule. For more information, see [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
  late final Output<String?> schedule;

  /// Policy for the crawler's update and deletion behavior. See Schema Change Policy below.
  late final Output<CrawlerSchemaChangePolicy?> schemaChangePolicy;

  /// The name of Security Configuration to be used by the crawler
  late final Output<String?> securityConfiguration;

  /// The table prefix used for catalog tables that are created.
  late final Output<String?> tablePrefix;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** Must specify at least one of `dynamodb_target`, `jdbc_target`, `s3_target`, `mongodb_target` or `catalog_target`.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Crawler(
    String name, {
    CrawlerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/crawler:Crawler',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.catalogTargets =
        registerOutput<List<CrawlerCatalogTarget>?>('catalogTargets');
    this.classifiers = registerOutput<List<String>?>('classifiers');
    this.configuration = registerOutput<String?>('configuration');
    this.databaseName = registerOutput<String>('databaseName');
    this.deltaTargets =
        registerOutput<List<CrawlerDeltaTarget>?>('deltaTargets');
    this.description = registerOutput<String?>('description');
    this.dynamodbTargets =
        registerOutput<List<CrawlerDynamodbTarget>?>('dynamodbTargets');
    this.hudiTargets = registerOutput<List<CrawlerHudiTarget>?>('hudiTargets');
    this.icebergTargets =
        registerOutput<List<CrawlerIcebergTarget>?>('icebergTargets');
    this.jdbcTargets = registerOutput<List<CrawlerJdbcTarget>?>('jdbcTargets');
    this.lakeFormationConfiguration =
        registerOutput<CrawlerLakeFormationConfiguration?>(
            'lakeFormationConfiguration');
    this.lineageConfiguration =
        registerOutput<CrawlerLineageConfiguration?>('lineageConfiguration');
    this.mongodbTargets =
        registerOutput<List<CrawlerMongodbTarget>?>('mongodbTargets');
    this.name = registerOutput<String>('name');
    this.recrawlPolicy = registerOutput<CrawlerRecrawlPolicy?>('recrawlPolicy');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.s3Targets = registerOutput<List<CrawlerS3Target>?>('s3Targets');
    this.schedule = registerOutput<String?>('schedule');
    this.schemaChangePolicy =
        registerOutput<CrawlerSchemaChangePolicy?>('schemaChangePolicy');
    this.securityConfiguration =
        registerOutput<String?>('securityConfiguration');
    this.tablePrefix = registerOutput<String?>('tablePrefix');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
