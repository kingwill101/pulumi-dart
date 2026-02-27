import 'package:pulumi/pulumi.dart';
import '../data_source_configuration/data_source_configuration.dart';
import '../data_source_custom_document_enrichment_configuration/data_source_custom_document_enrichment_configuration.dart';
import 'data_source_args2.dart';

/// Resource for managing an AWS Kendra Data Source.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### S3 Connector
///
/// ### With Schedule
///
///
///
/// ### With Access Control List
///
///
///
/// ### With Documents Metadata Configuration
///
///
///
/// ### Web Crawler Connector
///
/// ### With Seed URLs
///
///
///
/// ### With Site Maps
///
///
///
/// ### With Web Crawler Mode
///
///
///
/// ### With Authentication Configuration
///
///
///
/// ### With Crawl Depth
///
///
///
/// ### With Max Links Per Page
///
///
///
/// ### With Max Urls Per Minute Crawl Rate
///
///
///
/// ### With Proxy Configuration
///
///
///
/// ### With URL Exclusion and Inclusion Patterns
///
///
///
/// ### With `WEBCRAWLERV2` Template
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Kendra Data Source using the unique identifiers of the data_source and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/dataSource:DataSource example 1045d08d-66ef-4882-b3ed-dfb7df183e90/b34dfdf7-1f2b-4704-9581-79e00296845f
/// ```
class DataSource2 extends CustomResource {
  /// ARN of the Data Source.
  late final Output<String> arn;

  /// A block with the configuration information to connect to your Data Source repository. You can't specify the `configuration` block when the `type` parameter is set to `CUSTOM`. Detailed below.
  late final Output<DataSourceConfiguration?> configuration;

  /// The Unix time stamp of when the Data Source was created.
  late final Output<String> createdAt;

  /// A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see [Customizing document metadata during the ingestion process](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html). Detailed below.
  late final Output<DataSourceCustomDocumentEnrichmentConfiguration?>
      customDocumentEnrichmentConfiguration;

  /// The unique identifiers of the Data Source.
  late final Output<String> dataSourceId;

  /// A description for the Data Source connector.
  late final Output<String?> description;

  /// When the Status field value is `FAILED`, contains a description of the error that caused the Data Source to fail.
  late final Output<String> errorMessage;

  /// The identifier of the index for your Amazon Kendra data source.
  late final Output<String> indexId;

  /// The code for a language. This allows you to support a language for all documents when creating the Data Source connector. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  late final Output<String> languageCode;

  /// A name for your data source connector.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of a role with permission to access the data source connector. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html). You can't specify the `role_arn` parameter when the `type` parameter is set to `CUSTOM`. The `role_arn` parameter is required for all other data sources.
  late final Output<String?> roleArn;

  /// Sets the frequency for Amazon Kendra to check the documents in your Data Source repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the `StartDataSourceSyncJob` API to update the index.
  late final Output<String?> schedule;

  /// The current status of the Data Source. When the status is `ACTIVE` the Data Source is ready to use. When the status is `FAILED`, the `error_message` field contains the reason that the Data Source failed.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of data source repository. For an updated list of values, refer to [Valid Values for Type](https://docs.aws.amazon.com/kendra/latest/dg/API_CreateDataSource.html#Kendra-CreateDataSource-request-Type).
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  /// The Unix time stamp of when the Data Source was last updated.
  late final Output<String> updatedAt;

  DataSource2(
    String name, {
    DataSourceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kendra/dataSource:DataSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configuration =
        registerOutput<DataSourceConfiguration?>('configuration');
    this.createdAt = registerOutput<String>('createdAt');
    this.customDocumentEnrichmentConfiguration =
        registerOutput<DataSourceCustomDocumentEnrichmentConfiguration?>(
            'customDocumentEnrichmentConfiguration');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.description = registerOutput<String?>('description');
    this.errorMessage = registerOutput<String>('errorMessage');
    this.indexId = registerOutput<String>('indexId');
    this.languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.schedule = registerOutput<String?>('schedule');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
