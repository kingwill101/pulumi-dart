// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_configuration.dart';
import 'data_source_custom_document_enrichment_configuration.dart';

/// Input properties used for looking up and filtering DataSource resources.
class DataSourceState {
  /// ARN of the Data Source.
  final pulumi.Input<String>? arn;
  /// A block with the configuration information to connect to your Data Source repository. You can't specify the `configuration` block when the `type` parameter is set to `CUSTOM`. Detailed below.
  final pulumi.Input<DataSourceConfiguration>? configuration;
  /// The Unix time stamp of when the Data Source was created.
  final pulumi.Input<String>? createdAt;
  /// A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see [Customizing document metadata during the ingestion process](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html). Detailed below.
  final pulumi.Input<DataSourceCustomDocumentEnrichmentConfiguration>? customDocumentEnrichmentConfiguration;
  /// The unique identifiers of the Data Source.
  final pulumi.Input<String>? dataSourceId;
  /// A description for the Data Source connector.
  final pulumi.Input<String>? description;
  /// When the Status field value is `FAILED`, contains a description of the error that caused the Data Source to fail.
  final pulumi.Input<String>? errorMessage;
  /// The identifier of the index for your Amazon Kendra data source.
  final pulumi.Input<String>? indexId;
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
  /// The current status of the Data Source. When the status is `ACTIVE` the Data Source is ready to use. When the status is `FAILED`, the `error_message` field contains the reason that the Data Source failed.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of data source repository. For an updated list of values, refer to [Valid Values for Type](https://docs.aws.amazon.com/kendra/latest/dg/API_CreateDataSource.html#Kendra-CreateDataSource-request-Type).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;
  /// The Unix time stamp of when the Data Source was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [DataSourceState].
  /// [arn] ARN of the Data Source.
  /// [configuration] A block with the configuration information to connect to your Data Source repository. You can't specify the `configuration` block when the `type` parameter is set to `CUSTOM`. Detailed below.
  /// [createdAt] The Unix time stamp of when the Data Source was created.
  /// [customDocumentEnrichmentConfiguration] A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see [Customizing document metadata during the ingestion process](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html). Detailed below.
  /// [dataSourceId] The unique identifiers of the Data Source.
  /// [description] A description for the Data Source connector.
  /// [errorMessage] When the Status field value is `FAILED`, contains a description of the error that caused the Data Source to fail.
  /// [indexId] The identifier of the index for your Amazon Kendra data source.
  /// [languageCode] The code for a language. This allows you to support a language for all documents when creating the Data Source connector. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  /// [name] A name for your data source connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of a role with permission to access the data source connector. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html). You can't specify the `role_arn` parameter when the `type` parameter is set to `CUSTOM`. The `role_arn` parameter is required for all other data sources.
  /// [schedule] Sets the frequency for Amazon Kendra to check the documents in your Data Source repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the `StartDataSourceSyncJob` API to update the index.
  /// [status] The current status of the Data Source. When the status is `ACTIVE` the Data Source is ready to use. When the status is `FAILED`, the `error_message` field contains the reason that the Data Source failed.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of data source repository. For an updated list of values, refer to [Valid Values for Type](https://docs.aws.amazon.com/kendra/latest/dg/API_CreateDataSource.html#Kendra-CreateDataSource-request-Type).
  /// [updatedAt] The Unix time stamp of when the Data Source was last updated.
  DataSourceState({
    this.arn,
    this.configuration,
    this.createdAt,
    this.customDocumentEnrichmentConfiguration,
    this.dataSourceId,
    this.description,
    this.errorMessage,
    this.indexId,
    this.languageCode,
    this.name,
    this.region,
    this.roleArn,
    this.schedule,
    this.status,
    this.tags,
    this.tagsAll,
    this.type,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<DataSourceConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'customDocumentEnrichmentConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSourceCustomDocumentEnrichmentConfiguration, Map<String, dynamic>>(customDocumentEnrichmentConfiguration, (value) => value.toMap()),
      'dataSourceId': ?dataSourceId,
      'description': ?description,
      'errorMessage': ?errorMessage,
      'indexId': ?indexId,
      'languageCode': ?languageCode,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'schedule': ?schedule,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'updatedAt': ?updatedAt,
    };
  }

  factory DataSourceState.fromMap(Map<String, dynamic> map) {
    return DataSourceState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      configuration: map['configuration'] == null ? null : ((DataSourceConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      customDocumentEnrichmentConfiguration: map['customDocumentEnrichmentConfiguration'] == null ? null : ((DataSourceCustomDocumentEnrichmentConfiguration.fromMap((map['customDocumentEnrichmentConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      dataSourceId: map['dataSourceId'] == null ? null : ((map['dataSourceId'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      errorMessage: map['errorMessage'] == null ? null : ((map['errorMessage'] as String).input()).input(),
      indexId: map['indexId'] == null ? null : ((map['indexId'] as String).input()).input(),
      languageCode: map['languageCode'] == null ? null : ((map['languageCode'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      schedule: map['schedule'] == null ? null : ((map['schedule'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
    );
  }
}

