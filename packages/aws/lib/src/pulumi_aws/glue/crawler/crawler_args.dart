// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

/// The set of arguments for Crawler.
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
  final pulumi.Input<CrawlerLakeFormationConfiguration>?
      lakeFormationConfiguration;

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
  /// > **NOTE:** Must specify at least one of `dynamodb_target`, `jdbc_target`, `s3_target`, `mongodb_target` or `catalog_target`.
  final pulumi.Input<Map<String, String>>? tags;

  CrawlerArgs({
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
    final map = <String, dynamic>{};
    final catalogTargetsValue = catalogTargets;
    if (catalogTargetsValue != null) {
      map['catalogTargets'] = pulumi.Input.mapOptionalInputValue<
              List<CrawlerCatalogTarget>, List<Map<String, dynamic>>>(
          catalogTargetsValue,
          (value) => pulumi.Input.encodeList<CrawlerCatalogTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final classifiersValue = classifiers;
    if (classifiersValue != null) {
      map['classifiers'] = classifiersValue;
    }
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = configurationValue;
    }
    map['databaseName'] = databaseName;
    final deltaTargetsValue = deltaTargets;
    if (deltaTargetsValue != null) {
      map['deltaTargets'] = pulumi.Input.mapOptionalInputValue<
              List<CrawlerDeltaTarget>, List<Map<String, dynamic>>>(
          deltaTargetsValue,
          (value) =>
              pulumi.Input.encodeList<CrawlerDeltaTarget, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dynamodbTargetsValue = dynamodbTargets;
    if (dynamodbTargetsValue != null) {
      map['dynamodbTargets'] = pulumi.Input.mapOptionalInputValue<
              List<CrawlerDynamodbTarget>, List<Map<String, dynamic>>>(
          dynamodbTargetsValue,
          (value) => pulumi.Input.encodeList<CrawlerDynamodbTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final hudiTargetsValue = hudiTargets;
    if (hudiTargetsValue != null) {
      map['hudiTargets'] = pulumi.Input.mapOptionalInputValue<
              List<CrawlerHudiTarget>, List<Map<String, dynamic>>>(
          hudiTargetsValue,
          (value) =>
              pulumi.Input.encodeList<CrawlerHudiTarget, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final icebergTargetsValue = icebergTargets;
    if (icebergTargetsValue != null) {
      map['icebergTargets'] = pulumi.Input.mapOptionalInputValue<
              List<CrawlerIcebergTarget>, List<Map<String, dynamic>>>(
          icebergTargetsValue,
          (value) => pulumi.Input.encodeList<CrawlerIcebergTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final jdbcTargetsValue = jdbcTargets;
    if (jdbcTargetsValue != null) {
      map['jdbcTargets'] = pulumi.Input.mapOptionalInputValue<
              List<CrawlerJdbcTarget>, List<Map<String, dynamic>>>(
          jdbcTargetsValue,
          (value) =>
              pulumi.Input.encodeList<CrawlerJdbcTarget, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final lakeFormationConfigurationValue = lakeFormationConfiguration;
    if (lakeFormationConfigurationValue != null) {
      map['lakeFormationConfiguration'] = pulumi.Input.mapOptionalInputValue<
              CrawlerLakeFormationConfiguration, Map<String, dynamic>>(
          lakeFormationConfigurationValue, (value) => value.toMap());
    }
    final lineageConfigurationValue = lineageConfiguration;
    if (lineageConfigurationValue != null) {
      map['lineageConfiguration'] = pulumi.Input.mapOptionalInputValue<
              CrawlerLineageConfiguration, Map<String, dynamic>>(
          lineageConfigurationValue, (value) => value.toMap());
    }
    final mongodbTargetsValue = mongodbTargets;
    if (mongodbTargetsValue != null) {
      map['mongodbTargets'] = pulumi.Input.mapOptionalInputValue<
              List<CrawlerMongodbTarget>, List<Map<String, dynamic>>>(
          mongodbTargetsValue,
          (value) => pulumi.Input.encodeList<CrawlerMongodbTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final recrawlPolicyValue = recrawlPolicy;
    if (recrawlPolicyValue != null) {
      map['recrawlPolicy'] = pulumi.Input.mapOptionalInputValue<
          CrawlerRecrawlPolicy,
          Map<String, dynamic>>(recrawlPolicyValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    final s3TargetsValue = s3Targets;
    if (s3TargetsValue != null) {
      map['s3Targets'] = pulumi.Input.mapOptionalInputValue<
              List<CrawlerS3Target>, List<Map<String, dynamic>>>(
          s3TargetsValue,
          (value) =>
              pulumi.Input.encodeList<CrawlerS3Target, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    final schemaChangePolicyValue = schemaChangePolicy;
    if (schemaChangePolicyValue != null) {
      map['schemaChangePolicy'] = pulumi.Input.mapOptionalInputValue<
              CrawlerSchemaChangePolicy, Map<String, dynamic>>(
          schemaChangePolicyValue, (value) => value.toMap());
    }
    final securityConfigurationValue = securityConfiguration;
    if (securityConfigurationValue != null) {
      map['securityConfiguration'] = securityConfigurationValue;
    }
    final tablePrefixValue = tablePrefix;
    if (tablePrefixValue != null) {
      map['tablePrefix'] = tablePrefixValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CrawlerArgs.fromMap(Map<String, dynamic> map) {
    return CrawlerArgs(
      catalogTargets: pulumi.Input.asOptionalInput<List<CrawlerCatalogTarget>>(
          map['catalogTargets']),
      classifiers:
          pulumi.Input.asOptionalInput<List<String>>(map['classifiers']),
      configuration: pulumi.Input.asOptionalInput<String>(map['configuration']),
      databaseName: pulumi.Input.asInput<String>(map['databaseName']),
      deltaTargets: pulumi.Input.asOptionalInput<List<CrawlerDeltaTarget>>(
          map['deltaTargets']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dynamodbTargets:
          pulumi.Input.asOptionalInput<List<CrawlerDynamodbTarget>>(
              map['dynamodbTargets']),
      hudiTargets: pulumi.Input.asOptionalInput<List<CrawlerHudiTarget>>(
          map['hudiTargets']),
      icebergTargets: pulumi.Input.asOptionalInput<List<CrawlerIcebergTarget>>(
          map['icebergTargets']),
      jdbcTargets: pulumi.Input.asOptionalInput<List<CrawlerJdbcTarget>>(
          map['jdbcTargets']),
      lakeFormationConfiguration:
          pulumi.Input.asOptionalInput<CrawlerLakeFormationConfiguration>(
              map['lakeFormationConfiguration']),
      lineageConfiguration:
          pulumi.Input.asOptionalInput<CrawlerLineageConfiguration>(
              map['lineageConfiguration']),
      mongodbTargets: pulumi.Input.asOptionalInput<List<CrawlerMongodbTarget>>(
          map['mongodbTargets']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      recrawlPolicy: pulumi.Input.asOptionalInput<CrawlerRecrawlPolicy>(
          map['recrawlPolicy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      role: pulumi.Input.asInput<String>(map['role']),
      s3Targets:
          pulumi.Input.asOptionalInput<List<CrawlerS3Target>>(map['s3Targets']),
      schedule: pulumi.Input.asOptionalInput<String>(map['schedule']),
      schemaChangePolicy:
          pulumi.Input.asOptionalInput<CrawlerSchemaChangePolicy>(
              map['schemaChangePolicy']),
      securityConfiguration:
          pulumi.Input.asOptionalInput<String>(map['securityConfiguration']),
      tablePrefix: pulumi.Input.asOptionalInput<String>(map['tablePrefix']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
