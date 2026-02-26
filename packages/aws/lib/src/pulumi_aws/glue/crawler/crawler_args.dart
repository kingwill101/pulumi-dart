// ignore_for_file: unused_element, unnecessary_cast

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

/// The set of arguments for Crawler.
class CrawlerArgs {
  /// List of nested AWS Glue Data Catalog target arguments. See Catalog Target below.
  final Input<List<CrawlerCatalogTarget>>? catalogTargets;

  /// List of custom classifiers. By default, all AWS classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
  final Input<List<String>>? classifiers;

  /// JSON string of configuration information. For more details see [Setting Crawler Configuration Options](https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).
  final Input<String>? configuration;

  /// Glue database where results are written.
  final Input<String> databaseName;

  /// List of nested Delta Lake target arguments. See Delta Target below.
  final Input<List<CrawlerDeltaTarget>>? deltaTargets;

  /// Description of the crawler.
  final Input<String>? description;

  /// List of nested DynamoDB target arguments. See Dynamodb Target below.
  final Input<List<CrawlerDynamodbTarget>>? dynamodbTargets;

  /// List of nested Hudi target arguments. See Iceberg Target below.
  final Input<List<CrawlerHudiTarget>>? hudiTargets;

  /// List of nested Iceberg target arguments. See Iceberg Target below.
  final Input<List<CrawlerIcebergTarget>>? icebergTargets;

  /// List of nested JDBC target arguments. See JDBC Target below.
  final Input<List<CrawlerJdbcTarget>>? jdbcTargets;

  /// Specifies Lake Formation configuration settings for the crawler. See Lake Formation Configuration below.
  final Input<CrawlerLakeFormationConfiguration>? lakeFormationConfiguration;

  /// Specifies data lineage configuration settings for the crawler. See Lineage Configuration below.
  final Input<CrawlerLineageConfiguration>? lineageConfiguration;

  /// List of nested MongoDB target arguments. See MongoDB Target below.
  final Input<List<CrawlerMongodbTarget>>? mongodbTargets;

  /// Name of the crawler.
  final Input<String>? name;

  /// A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.. See Recrawl Policy below.
  final Input<CrawlerRecrawlPolicy>? recrawlPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The IAM role friendly name (including path without leading slash), or ARN of an IAM role, used by the crawler to access other resources.
  final Input<String> role;

  /// List of nested Amazon S3 target arguments. See S3 Target below.
  final Input<List<CrawlerS3Target>>? s3Targets;

  /// A cron expression used to specify the schedule. For more information, see [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
  final Input<String>? schedule;

  /// Policy for the crawler's update and deletion behavior. See Schema Change Policy below.
  final Input<CrawlerSchemaChangePolicy>? schemaChangePolicy;

  /// The name of Security Configuration to be used by the crawler
  final Input<String>? securityConfiguration;

  /// The table prefix used for catalog tables that are created.
  final Input<String>? tablePrefix;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** Must specify at least one of <span pulumi-lang-nodejs="`dynamodbTarget`" pulumi-lang-dotnet="`DynamodbTarget`" pulumi-lang-go="`dynamodbTarget`" pulumi-lang-python="`dynamodb_target`" pulumi-lang-yaml="`dynamodbTarget`" pulumi-lang-java="`dynamodbTarget`">`dynamodb_target`</span>, <span pulumi-lang-nodejs="`jdbcTarget`" pulumi-lang-dotnet="`JdbcTarget`" pulumi-lang-go="`jdbcTarget`" pulumi-lang-python="`jdbc_target`" pulumi-lang-yaml="`jdbcTarget`" pulumi-lang-java="`jdbcTarget`">`jdbc_target`</span>, <span pulumi-lang-nodejs="`s3Target`" pulumi-lang-dotnet="`S3Target`" pulumi-lang-go="`s3Target`" pulumi-lang-python="`s3_target`" pulumi-lang-yaml="`s3Target`" pulumi-lang-java="`s3Target`">`s3_target`</span>, <span pulumi-lang-nodejs="`mongodbTarget`" pulumi-lang-dotnet="`MongodbTarget`" pulumi-lang-go="`mongodbTarget`" pulumi-lang-python="`mongodb_target`" pulumi-lang-yaml="`mongodbTarget`" pulumi-lang-java="`mongodbTarget`">`mongodb_target`</span> or <span pulumi-lang-nodejs="`catalogTarget`" pulumi-lang-dotnet="`CatalogTarget`" pulumi-lang-go="`catalogTarget`" pulumi-lang-python="`catalog_target`" pulumi-lang-yaml="`catalogTarget`" pulumi-lang-java="`catalogTarget`">`catalog_target`</span>.
  final Input<Map<String, String>>? tags;

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
      map['catalogTargets'] = Input.mapOptionalInputValue<
              List<CrawlerCatalogTarget>, List<Map<String, dynamic>>>(
          catalogTargetsValue,
          (value) =>
              Input.encodeList<CrawlerCatalogTarget, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      map['deltaTargets'] = Input.mapOptionalInputValue<
              List<CrawlerDeltaTarget>, List<Map<String, dynamic>>>(
          deltaTargetsValue,
          (value) => Input.encodeList<CrawlerDeltaTarget, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dynamodbTargetsValue = dynamodbTargets;
    if (dynamodbTargetsValue != null) {
      map['dynamodbTargets'] = Input.mapOptionalInputValue<
              List<CrawlerDynamodbTarget>, List<Map<String, dynamic>>>(
          dynamodbTargetsValue,
          (value) =>
              Input.encodeList<CrawlerDynamodbTarget, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final hudiTargetsValue = hudiTargets;
    if (hudiTargetsValue != null) {
      map['hudiTargets'] = Input.mapOptionalInputValue<List<CrawlerHudiTarget>,
              List<Map<String, dynamic>>>(
          hudiTargetsValue,
          (value) => Input.encodeList<CrawlerHudiTarget, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final icebergTargetsValue = icebergTargets;
    if (icebergTargetsValue != null) {
      map['icebergTargets'] = Input.mapOptionalInputValue<
              List<CrawlerIcebergTarget>, List<Map<String, dynamic>>>(
          icebergTargetsValue,
          (value) =>
              Input.encodeList<CrawlerIcebergTarget, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final jdbcTargetsValue = jdbcTargets;
    if (jdbcTargetsValue != null) {
      map['jdbcTargets'] = Input.mapOptionalInputValue<List<CrawlerJdbcTarget>,
              List<Map<String, dynamic>>>(
          jdbcTargetsValue,
          (value) => Input.encodeList<CrawlerJdbcTarget, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final lakeFormationConfigurationValue = lakeFormationConfiguration;
    if (lakeFormationConfigurationValue != null) {
      map['lakeFormationConfiguration'] = Input.mapOptionalInputValue<
              CrawlerLakeFormationConfiguration, Map<String, dynamic>>(
          lakeFormationConfigurationValue, (value) => value.toMap());
    }
    final lineageConfigurationValue = lineageConfiguration;
    if (lineageConfigurationValue != null) {
      map['lineageConfiguration'] = Input.mapOptionalInputValue<
              CrawlerLineageConfiguration, Map<String, dynamic>>(
          lineageConfigurationValue, (value) => value.toMap());
    }
    final mongodbTargetsValue = mongodbTargets;
    if (mongodbTargetsValue != null) {
      map['mongodbTargets'] = Input.mapOptionalInputValue<
              List<CrawlerMongodbTarget>, List<Map<String, dynamic>>>(
          mongodbTargetsValue,
          (value) =>
              Input.encodeList<CrawlerMongodbTarget, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final recrawlPolicyValue = recrawlPolicy;
    if (recrawlPolicyValue != null) {
      map['recrawlPolicy'] = Input.mapOptionalInputValue<CrawlerRecrawlPolicy,
          Map<String, dynamic>>(recrawlPolicyValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    final s3TargetsValue = s3Targets;
    if (s3TargetsValue != null) {
      map['s3Targets'] = Input.mapOptionalInputValue<List<CrawlerS3Target>,
              List<Map<String, dynamic>>>(
          s3TargetsValue,
          (value) => Input.encodeList<CrawlerS3Target, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    final schemaChangePolicyValue = schemaChangePolicy;
    if (schemaChangePolicyValue != null) {
      map['schemaChangePolicy'] = Input.mapOptionalInputValue<
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
      catalogTargets: Input.asOptionalInput<List<CrawlerCatalogTarget>>(
          map['catalogTargets']),
      classifiers: Input.asOptionalInput<List<String>>(map['classifiers']),
      configuration: Input.asOptionalInput<String>(map['configuration']),
      databaseName: Input.asInput<String>(map['databaseName']),
      deltaTargets:
          Input.asOptionalInput<List<CrawlerDeltaTarget>>(map['deltaTargets']),
      description: Input.asOptionalInput<String>(map['description']),
      dynamodbTargets: Input.asOptionalInput<List<CrawlerDynamodbTarget>>(
          map['dynamodbTargets']),
      hudiTargets:
          Input.asOptionalInput<List<CrawlerHudiTarget>>(map['hudiTargets']),
      icebergTargets: Input.asOptionalInput<List<CrawlerIcebergTarget>>(
          map['icebergTargets']),
      jdbcTargets:
          Input.asOptionalInput<List<CrawlerJdbcTarget>>(map['jdbcTargets']),
      lakeFormationConfiguration:
          Input.asOptionalInput<CrawlerLakeFormationConfiguration>(
              map['lakeFormationConfiguration']),
      lineageConfiguration: Input.asOptionalInput<CrawlerLineageConfiguration>(
          map['lineageConfiguration']),
      mongodbTargets: Input.asOptionalInput<List<CrawlerMongodbTarget>>(
          map['mongodbTargets']),
      name: Input.asOptionalInput<String>(map['name']),
      recrawlPolicy:
          Input.asOptionalInput<CrawlerRecrawlPolicy>(map['recrawlPolicy']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
      s3Targets: Input.asOptionalInput<List<CrawlerS3Target>>(map['s3Targets']),
      schedule: Input.asOptionalInput<String>(map['schedule']),
      schemaChangePolicy: Input.asOptionalInput<CrawlerSchemaChangePolicy>(
          map['schemaChangePolicy']),
      securityConfiguration:
          Input.asOptionalInput<String>(map['securityConfiguration']),
      tablePrefix: Input.asOptionalInput<String>(map['tablePrefix']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
