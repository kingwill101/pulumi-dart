// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_configuration.dart';
import 'data_source_custom_document_enrichment_configuration.dart';

/// {@template pulumi_kendra_data_source_data_source_args_doc}
/// The set of arguments for DataSource.
/// {@endtemplate}
/// {@macro pulumi_kendra_data_source_data_source_args_doc}
class DataSourceArgs {
  /// A block with the configuration information to connect to your Data Source repository. You can't specify the `configuration` block when the `type` parameter is set to `CUSTOM`. Detailed below.
  final pulumi.Input<DataSourceConfiguration>? configuration;

  /// A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see [Customizing document metadata during the ingestion process](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html). Detailed below.
  final pulumi.Input<DataSourceCustomDocumentEnrichmentConfiguration>?
      customDocumentEnrichmentConfiguration;

  /// A description for the Data Source connector.
  final pulumi.Input<String>? description;

  /// The identifier of the index for your Amazon Kendra data source.
  final pulumi.Input<String> indexId;

  /// The code for a language. This allows you to support a language for all documents when creating the Data Source connector. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  final pulumi.Input<String>? languageCode;

  /// A name for your data source connector.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of a role with permission to access the data source connector. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html). You can't specify the `role_arn` parameter when the `type` parameter is set to `CUSTOM`. The `role_arn` parameter is required for all other data sources.
  final pulumi.Input<String>? roleArn;

  /// Sets the frequency for Amazon Kendra to check the documents in your Data Source repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the `StartDataSourceSyncJob` API to update the index.
  final pulumi.Input<String>? schedule;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of data source repository. For an updated list of values, refer to [Valid Values for Type](https://docs.aws.amazon.com/kendra/latest/dg/API_CreateDataSource.html#Kendra-CreateDataSource-request-Type).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [DataSourceArgs].
  /// [configuration] A block with the configuration information to connect to your Data Source repository. You can't specify the `configuration` block when the `type` parameter is set to `CUSTOM`. Detailed below.
  /// [customDocumentEnrichmentConfiguration] A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see [Customizing document metadata during the ingestion process](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html). Detailed below.
  /// [description] A description for the Data Source connector.
  /// [indexId] The identifier of the index for your Amazon Kendra data source.
  /// [languageCode] The code for a language. This allows you to support a language for all documents when creating the Data Source connector. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  /// [name] A name for your data source connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of a role with permission to access the data source connector. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html). You can't specify the `role_arn` parameter when the `type` parameter is set to `CUSTOM`. The `role_arn` parameter is required for all other data sources.
  /// [schedule] Sets the frequency for Amazon Kendra to check the documents in your Data Source repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the `StartDataSourceSyncJob` API to update the index.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of data source repository. For an updated list of values, refer to [Valid Values for Type](https://docs.aws.amazon.com/kendra/latest/dg/API_CreateDataSource.html#Kendra-CreateDataSource-request-Type).
  DataSourceArgs({
    DataSourceConfiguration? configuration,
    DataSourceCustomDocumentEnrichmentConfiguration?
        customDocumentEnrichmentConfiguration,
    String? description,
    required String indexId,
    String? languageCode,
    String? name,
    String? region,
    String? roleArn,
    String? schedule,
    Map<String, String>? tags,
    required String type,
  })  : configuration = pulumi.Input.asOptionalInput<DataSourceConfiguration>(
            configuration),
        customDocumentEnrichmentConfiguration = pulumi.Input.asOptionalInput<
                DataSourceCustomDocumentEnrichmentConfiguration>(
            customDocumentEnrichmentConfiguration),
        description = pulumi.Input.asOptionalInput<String>(description),
        indexId = pulumi.Input.asInput<String>(indexId),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
        schedule = pulumi.Input.asOptionalInput<String>(schedule),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = pulumi.Input.mapOptionalInputValue<
          DataSourceConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final customDocumentEnrichmentConfigurationValue =
        customDocumentEnrichmentConfiguration;
    if (customDocumentEnrichmentConfigurationValue != null) {
      map['customDocumentEnrichmentConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  DataSourceCustomDocumentEnrichmentConfiguration,
                  Map<String, dynamic>>(
              customDocumentEnrichmentConfigurationValue,
              (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['indexId'] = indexId;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory DataSourceArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs(
      configuration: map['configuration'] == null
          ? null
          : DataSourceConfiguration.fromMap(
              (map['configuration'] as Map).cast<String, dynamic>()),
      customDocumentEnrichmentConfiguration:
          map['customDocumentEnrichmentConfiguration'] == null
              ? null
              : DataSourceCustomDocumentEnrichmentConfiguration.fromMap(
                  (map['customDocumentEnrichmentConfiguration'] as Map)
                      .cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      indexId: map['indexId'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
