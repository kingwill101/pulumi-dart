// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_source_configuration/data_source_configuration.dart';
import '../data_source_custom_document_enrichment_configuration/data_source_custom_document_enrichment_configuration.dart';

/// The set of arguments for DataSource.
class DataSourceArgs2 {
  /// A block with the configuration information to connect to your Data Source repository. You can't specify the `configuration` block when the `type` parameter is set to `CUSTOM`. Detailed below.
  final Input<DataSourceConfiguration>? configuration;

  /// A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see [Customizing document metadata during the ingestion process](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html). Detailed below.
  final Input<DataSourceCustomDocumentEnrichmentConfiguration>?
      customDocumentEnrichmentConfiguration;

  /// A description for the Data Source connector.
  final Input<String>? description;

  /// The identifier of the index for your Amazon Kendra data source.
  final Input<String> indexId;

  /// The code for a language. This allows you to support a language for all documents when creating the Data Source connector. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  final Input<String>? languageCode;

  /// A name for your data source connector.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of a role with permission to access the data source connector. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html). You can't specify the `role_arn` parameter when the `type` parameter is set to `CUSTOM`. The `role_arn` parameter is required for all other data sources.
  final Input<String>? roleArn;

  /// Sets the frequency for Amazon Kendra to check the documents in your Data Source repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the `StartDataSourceSyncJob` API to update the index.
  final Input<String>? schedule;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of data source repository. For an updated list of values, refer to [Valid Values for Type](https://docs.aws.amazon.com/kendra/latest/dg/API_CreateDataSource.html#Kendra-CreateDataSource-request-Type).
  ///
  /// The following arguments are optional:
  final Input<String> type;

  DataSourceArgs2({
    this.configuration,
    this.customDocumentEnrichmentConfiguration,
    this.description,
    required this.indexId,
    this.languageCode,
    this.name,
    this.region,
    this.roleArn,
    this.schedule,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = Input.mapOptionalInputValue<
          DataSourceConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final customDocumentEnrichmentConfigurationValue =
        customDocumentEnrichmentConfiguration;
    if (customDocumentEnrichmentConfigurationValue != null) {
      map['customDocumentEnrichmentConfiguration'] =
          Input.mapOptionalInputValue<
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

  factory DataSourceArgs2.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs2(
      configuration:
          Input.asOptionalInput<DataSourceConfiguration>(map['configuration']),
      customDocumentEnrichmentConfiguration: Input.asOptionalInput<
              DataSourceCustomDocumentEnrichmentConfiguration>(
          map['customDocumentEnrichmentConfiguration']),
      description: Input.asOptionalInput<String>(map['description']),
      indexId: Input.asInput<String>(map['indexId']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      schedule: Input.asOptionalInput<String>(map['schedule']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
