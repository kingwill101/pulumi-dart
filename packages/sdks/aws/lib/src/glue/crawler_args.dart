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

/// {@template pulumi_glue_crawler_crawler_args_doc}
/// The set of arguments for Crawler.
/// {@endtemplate}
/// {@macro pulumi_glue_crawler_crawler_args_doc}
class CrawlerArgs {
  /// List of nested AWS Glue Data Catalog target arguments. See Catalog Target below.
  final pulumi.Input<List<CrawlerCatalogTarget>>? catalogTargets;
  /// List of custom classifiers. By default, all AWS classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
  final pulumi.Input<List<String>>? classifiers;
  /// JSON string of configuration information. For more details see [Setting Crawler Configuration Options](https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).
  final pulumi.Input<String>? configuration;
  /// Glue database where results are written.
  final pulumi.Input<String> databaseName;
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
  final pulumi.Input<String> role;
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
  /// &gt; **NOTE:** Must specify at least one of `dynamodb_target`, `jdbc_target`, `s3_target`, `mongodb_target` or `catalog_target`.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CrawlerArgs].
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
  const CrawlerArgs({
    this.catalogTargets,
    this.classifiers,
    this.configuration,
    required this.databaseName,
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
    required this.role,
    this.s3Targets,
    this.schedule,
    this.schemaChangePolicy,
    this.securityConfiguration,
    this.tablePrefix,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogTargets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerCatalogTarget>, List<Map<String, dynamic>>>(catalogTargets, (value) => pulumi.Input.encodeList<CrawlerCatalogTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'classifiers': ?classifiers,
      'configuration': ?configuration,
      'databaseName': databaseName,
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
      'role': role,
      's3Targets': ?pulumi.Input.mapOptionalInputValue<List<CrawlerS3Target>, List<Map<String, dynamic>>>(s3Targets, (value) => pulumi.Input.encodeList<CrawlerS3Target, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedule': ?schedule,
      'schemaChangePolicy': ?pulumi.Input.mapOptionalInputValue<CrawlerSchemaChangePolicy, Map<String, dynamic>>(schemaChangePolicy, (value) => value.toMap()),
      'securityConfiguration': ?securityConfiguration,
      'tablePrefix': ?tablePrefix,
      'tags': ?tags,
    };
  }

  factory CrawlerArgs.fromMap(Map<String, dynamic> map) {
    return CrawlerArgs(
      catalogTargets: (() { final guardedValue = map['catalogTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CrawlerCatalogTarget>(guardedValue, (value) => CrawlerCatalogTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      classifiers: (() { final guardedValue = map['classifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      deltaTargets: (() { final guardedValue = map['deltaTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CrawlerDeltaTarget>(guardedValue, (value) => CrawlerDeltaTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamodbTargets: (() { final guardedValue = map['dynamodbTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CrawlerDynamodbTarget>(guardedValue, (value) => CrawlerDynamodbTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hudiTargets: (() { final guardedValue = map['hudiTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CrawlerHudiTarget>(guardedValue, (value) => CrawlerHudiTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      icebergTargets: (() { final guardedValue = map['icebergTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CrawlerIcebergTarget>(guardedValue, (value) => CrawlerIcebergTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jdbcTargets: (() { final guardedValue = map['jdbcTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CrawlerJdbcTarget>(guardedValue, (value) => CrawlerJdbcTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lakeFormationConfiguration: (() { final guardedValue = map['lakeFormationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrawlerLakeFormationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lineageConfiguration: (() { final guardedValue = map['lineageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrawlerLineageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mongodbTargets: (() { final guardedValue = map['mongodbTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CrawlerMongodbTarget>(guardedValue, (value) => CrawlerMongodbTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recrawlPolicy: (() { final guardedValue = map['recrawlPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrawlerRecrawlPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      s3Targets: (() { final guardedValue = map['s3Targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CrawlerS3Target>(guardedValue, (value) => CrawlerS3Target.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaChangePolicy: (() { final guardedValue = map['schemaChangePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrawlerSchemaChangePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityConfiguration: (() { final guardedValue = map['securityConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tablePrefix: (() { final guardedValue = map['tablePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

