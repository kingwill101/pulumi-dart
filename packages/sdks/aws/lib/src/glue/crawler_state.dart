// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crawler_catalog_target.dart';
import 'crawler_delta_target.dart';
import 'crawler_dynamodb_target.dart';
import 'crawler_hudi_target.dart';
import 'crawler_iceberg_target.dart';
import 'crawler_jdbc_target.dart';
import 'crawler_lake_formation_configuration.dart';
import 'crawler_lineage_configuration.dart';
import 'crawler_mongodb_target.dart';
import 'crawler_recrawl_policy.dart';
import 'crawler_s3_target.dart';
import 'crawler_schema_change_policy.dart';

/// Input properties used for looking up and filtering Crawler resources.
class CrawlerState {
  /// The ARN of the crawler
  final pulumi.Input<String>? arn;
  /// List of nested AWS Glue Data Catalog target arguments. See Catalog Target below.
  final pulumi.Input<List<CrawlerCatalogTarget>>? catalogTargets;
  /// List of custom classifiers. By default, all AWS classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
  final pulumi.Input<List<String>>? classifiers;
  /// JSON string of configuration information. For more details see [Setting Crawler Configuration Options](https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).
  final pulumi.Input<String>? configuration;
  /// Glue database where results are written.
  final pulumi.Input<String>? databaseName;
  /// List of nested Delta Lake target arguments. See Delta Target below.
  final pulumi.Input<List<CrawlerDeltaTarget>>? deltaTargets;
  /// Description of the crawler.
  final pulumi.Input<String>? description;
  /// List of nested DynamoDB target arguments. See Dynamodb Target below.
  final pulumi.Input<List<CrawlerDynamodbTarget>>? dynamodbTargets;
  /// List of nested Hudi target arguments. See Iceberg Target below.
  final pulumi.Input<List<CrawlerHudiTarget>>? hudiTargets;
  /// List of nested Iceberg target arguments. See Iceberg Target below.
  final pulumi.Input<List<CrawlerIcebergTarget>>? icebergTargets;
  /// List of nested JDBC target arguments. See JDBC Target below.
  final pulumi.Input<List<CrawlerJdbcTarget>>? jdbcTargets;
  /// Specifies Lake Formation configuration settings for the crawler. See Lake Formation Configuration below.
  final pulumi.Input<CrawlerLakeFormationConfiguration>? lakeFormationConfiguration;
  /// Specifies data lineage configuration settings for the crawler. See Lineage Configuration below.
  final pulumi.Input<CrawlerLineageConfiguration>? lineageConfiguration;
  /// List of nested MongoDB target arguments. See MongoDB Target below.
  final pulumi.Input<List<CrawlerMongodbTarget>>? mongodbTargets;
  /// Name of the crawler.
  final pulumi.Input<String>? name;
  /// A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.. See Recrawl Policy below.
  final pulumi.Input<CrawlerRecrawlPolicy>? recrawlPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM role friendly name (including path without leading slash), or ARN of an IAM role, used by the crawler to access other resources.
  final pulumi.Input<String>? role;
  /// List of nested Amazon S3 target arguments. See S3 Target below.
  final pulumi.Input<List<CrawlerS3Target>>? s3Targets;
  /// A cron expression used to specify the schedule. For more information, see [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
  final pulumi.Input<String>? schedule;
  /// Policy for the crawler's update and deletion behavior. See Schema Change Policy below.
  final pulumi.Input<CrawlerSchemaChangePolicy>? schemaChangePolicy;
  /// The name of Security Configuration to be used by the crawler
  final pulumi.Input<String>? securityConfiguration;
  /// The table prefix used for catalog tables that are created.
  final pulumi.Input<String>? tablePrefix;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** Must specify at least one of `dynamodb_target`, `jdbc_target`, `s3_target`, `mongodb_target` or `catalog_target`.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CrawlerState].
  /// [arn] The ARN of the crawler
  /// [catalogTargets] List of nested AWS Glue Data Catalog target arguments. See Catalog Target below.
  /// [classifiers] List of custom classifiers. By default, all AWS classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
  /// [configuration] JSON string of configuration information. For more details see [Setting Crawler Configuration Options](https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).
  /// [databaseName] Glue database where results are written.
  /// [deltaTargets] List of nested Delta Lake target arguments. See Delta Target below.
  /// [description] Description of the crawler.
  /// [dynamodbTargets] List of nested DynamoDB target arguments. See Dynamodb Target below.
  /// [hudiTargets] List of nested Hudi target arguments. See Iceberg Target below.
  /// [icebergTargets] List of nested Iceberg target arguments. See Iceberg Target below.
  /// [jdbcTargets] List of nested JDBC target arguments. See JDBC Target below.
  /// [lakeFormationConfiguration] Specifies Lake Formation configuration settings for the crawler. See Lake Formation Configuration below.
  /// [lineageConfiguration] Specifies data lineage configuration settings for the crawler. See Lineage Configuration below.
  /// [mongodbTargets] List of nested MongoDB target arguments. See MongoDB Target below.
  /// [name] Name of the crawler.
  /// [recrawlPolicy] A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.. See Recrawl Policy below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] The IAM role friendly name (including path without leading slash), or ARN of an IAM role, used by the crawler to access other resources.
  /// [s3Targets] List of nested Amazon S3 target arguments. See S3 Target below.
  /// [schedule] A cron expression used to specify the schedule. For more information, see [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
  /// [schemaChangePolicy] Policy for the crawler's update and deletion behavior. See Schema Change Policy below.
  /// [securityConfiguration] The name of Security Configuration to be used by the crawler
  /// [tablePrefix] The table prefix used for catalog tables that are created.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CrawlerState({
    this.arn,
    this.catalogTargets,
    this.classifiers,
    this.configuration,
    this.databaseName,
    this.deltaTargets,
    this.description,
    this.dynamodbTargets,
    this.hudiTargets,
    this.icebergTargets,
    this.jdbcTargets,
    this.lakeFormationConfiguration,
    this.lineageConfiguration,
    this.mongodbTargets,
    this.name,
    this.recrawlPolicy,
    this.region,
    this.role,
    this.s3Targets,
    this.schedule,
    this.schemaChangePolicy,
    this.securityConfiguration,
    this.tablePrefix,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'catalogTargets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerCatalogTarget>, List<Map<String, dynamic>>>(catalogTargets, (value) => pulumi.Input.encodeList<CrawlerCatalogTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'classifiers': ?classifiers,
      'configuration': ?configuration,
      'databaseName': ?databaseName,
      'deltaTargets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerDeltaTarget>, List<Map<String, dynamic>>>(deltaTargets, (value) => pulumi.Input.encodeList<CrawlerDeltaTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'dynamodbTargets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerDynamodbTarget>, List<Map<String, dynamic>>>(dynamodbTargets, (value) => pulumi.Input.encodeList<CrawlerDynamodbTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hudiTargets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerHudiTarget>, List<Map<String, dynamic>>>(hudiTargets, (value) => pulumi.Input.encodeList<CrawlerHudiTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'icebergTargets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerIcebergTarget>, List<Map<String, dynamic>>>(icebergTargets, (value) => pulumi.Input.encodeList<CrawlerIcebergTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jdbcTargets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerJdbcTarget>, List<Map<String, dynamic>>>(jdbcTargets, (value) => pulumi.Input.encodeList<CrawlerJdbcTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lakeFormationConfiguration': ?pulumi.Input.mapOptionalInputValue<CrawlerLakeFormationConfiguration, Map<String, dynamic>>(lakeFormationConfiguration, (value) => value.toMap()),
      'lineageConfiguration': ?pulumi.Input.mapOptionalInputValue<CrawlerLineageConfiguration, Map<String, dynamic>>(lineageConfiguration, (value) => value.toMap()),
      'mongodbTargets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerMongodbTarget>, List<Map<String, dynamic>>>(mongodbTargets, (value) => pulumi.Input.encodeList<CrawlerMongodbTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'recrawlPolicy': ?pulumi.Input.mapOptionalInputValue<CrawlerRecrawlPolicy, Map<String, dynamic>>(recrawlPolicy, (value) => value.toMap()),
      'region': ?region,
      'role': ?role,
      's3Targets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerS3Target>, List<Map<String, dynamic>>>(s3Targets, (value) => pulumi.Input.encodeList<CrawlerS3Target, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedule': ?schedule,
      'schemaChangePolicy': ?pulumi.Input.mapOptionalInputValue<CrawlerSchemaChangePolicy, Map<String, dynamic>>(schemaChangePolicy, (value) => value.toMap()),
      'securityConfiguration': ?securityConfiguration,
      'tablePrefix': ?tablePrefix,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CrawlerState.fromMap(Map<String, dynamic> map) {
    return CrawlerState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      catalogTargets: map['catalogTargets'] == null ? null : ((pulumi.Input.decodeList<CrawlerCatalogTarget>(map['catalogTargets']!, (value) => CrawlerCatalogTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      classifiers: map['classifiers'] == null ? null : (((map['classifiers'] as List).cast<String>()).input()).input(),
      configuration: map['configuration'] == null ? null : ((map['configuration'] as String).input()).input(),
      databaseName: map['databaseName'] == null ? null : ((map['databaseName'] as String).input()).input(),
      deltaTargets: map['deltaTargets'] == null ? null : ((pulumi.Input.decodeList<CrawlerDeltaTarget>(map['deltaTargets']!, (value) => CrawlerDeltaTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      dynamodbTargets: map['dynamodbTargets'] == null ? null : ((pulumi.Input.decodeList<CrawlerDynamodbTarget>(map['dynamodbTargets']!, (value) => CrawlerDynamodbTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      hudiTargets: map['hudiTargets'] == null ? null : ((pulumi.Input.decodeList<CrawlerHudiTarget>(map['hudiTargets']!, (value) => CrawlerHudiTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      icebergTargets: map['icebergTargets'] == null ? null : ((pulumi.Input.decodeList<CrawlerIcebergTarget>(map['icebergTargets']!, (value) => CrawlerIcebergTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      jdbcTargets: map['jdbcTargets'] == null ? null : ((pulumi.Input.decodeList<CrawlerJdbcTarget>(map['jdbcTargets']!, (value) => CrawlerJdbcTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      lakeFormationConfiguration: map['lakeFormationConfiguration'] == null ? null : ((CrawlerLakeFormationConfiguration.fromMap((map['lakeFormationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      lineageConfiguration: map['lineageConfiguration'] == null ? null : ((CrawlerLineageConfiguration.fromMap((map['lineageConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      mongodbTargets: map['mongodbTargets'] == null ? null : ((pulumi.Input.decodeList<CrawlerMongodbTarget>(map['mongodbTargets']!, (value) => CrawlerMongodbTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      recrawlPolicy: map['recrawlPolicy'] == null ? null : ((CrawlerRecrawlPolicy.fromMap((map['recrawlPolicy']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      role: map['role'] == null ? null : ((map['role'] as String).input()).input(),
      s3Targets: map['s3Targets'] == null ? null : ((pulumi.Input.decodeList<CrawlerS3Target>(map['s3Targets']!, (value) => CrawlerS3Target.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      schedule: map['schedule'] == null ? null : ((map['schedule'] as String).input()).input(),
      schemaChangePolicy: map['schemaChangePolicy'] == null ? null : ((CrawlerSchemaChangePolicy.fromMap((map['schemaChangePolicy']! as Map).cast<String, dynamic>())).input()).input(),
      securityConfiguration: map['securityConfiguration'] == null ? null : ((map['securityConfiguration'] as String).input()).input(),
      tablePrefix: map['tablePrefix'] == null ? null : ((map['tablePrefix'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

