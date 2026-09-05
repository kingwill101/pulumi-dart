// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_custom_document_enrichment_configuration_inline_configuration.dart';
import 'data_source_custom_document_enrichment_configuration_post_extraction_hook_configuration.dart';
import 'data_source_custom_document_enrichment_configuration_pre_extraction_hook_configuration.dart';

class DataSourceCustomDocumentEnrichmentConfiguration {
  /// Configuration information to alter document attributes or metadata fields and content when ingesting documents into Amazon Kendra. Minimum number of `0` items. Maximum number of `100` items. Detailed below.
  final pulumi.Input<List<DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration>?>? inlineConfigurations;
  /// A block that specifies the configuration information for invoking a Lambda function in AWS Lambda on the structured documents with their metadata and text extracted. You can use a Lambda function to apply advanced logic for creating, modifying, or deleting document metadata and content. For more information, see [Advanced data manipulation](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#advanced-data-manipulation). Detailed below.
  final pulumi.Input<DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfiguration?>? postExtractionHookConfiguration;
  /// Configuration information for invoking a Lambda function in AWS Lambda on the original or raw documents before extracting their metadata and text. You can use a Lambda function to apply advanced logic for creating, modifying, or deleting document metadata and content. For more information, see [Advanced data manipulation](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#advanced-data-manipulation). Detailed below.
  final pulumi.Input<DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration?>? preExtractionHookConfiguration;
  /// ARN of a role with permission to run `preExtractionHookConfiguration` and `postExtractionHookConfiguration` for altering document metadata and content during the document ingestion process. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final pulumi.Input<String?>? roleArn;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfiguration].
  /// [inlineConfigurations] Configuration information to alter document attributes or metadata fields and content when ingesting documents into Amazon Kendra. Minimum number of `0` items. Maximum number of `100` items. Detailed below.
  /// [postExtractionHookConfiguration] A block that specifies the configuration information for invoking a Lambda function in AWS Lambda on the structured documents with their metadata and text extracted. You can use a Lambda function to apply advanced logic for creating, modifying, or deleting document metadata and content. For more information, see [Advanced data manipulation](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#advanced-data-manipulation). Detailed below.
  /// [preExtractionHookConfiguration] Configuration information for invoking a Lambda function in AWS Lambda on the original or raw documents before extracting their metadata and text. You can use a Lambda function to apply advanced logic for creating, modifying, or deleting document metadata and content. For more information, see [Advanced data manipulation](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#advanced-data-manipulation). Detailed below.
  /// [roleArn] ARN of a role with permission to run `preExtractionHookConfiguration` and `postExtractionHookConfiguration` for altering document metadata and content during the document ingestion process. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  const DataSourceCustomDocumentEnrichmentConfiguration({
    this.inlineConfigurations,
    this.postExtractionHookConfiguration,
    this.preExtractionHookConfiguration,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlineConfigurations': ?pulumi.Input.mapOptionalInputValue<List<DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration>, List<Map<String, dynamic>>>(inlineConfigurations, (value) => pulumi.Input.encodeList<DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'postExtractionHookConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfiguration, Map<String, dynamic>>(postExtractionHookConfiguration, (value) => value.toMap()),
      'preExtractionHookConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration, Map<String, dynamic>>(preExtractionHookConfiguration, (value) => value.toMap()),
      'roleArn': ?roleArn,
    };
  }

  factory DataSourceCustomDocumentEnrichmentConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceCustomDocumentEnrichmentConfiguration(
      inlineConfigurations: (() { final guardedValue = map['inlineConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration>(guardedValue, (value) => DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      postExtractionHookConfiguration: (() { final guardedValue = map['postExtractionHookConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preExtractionHookConfiguration: (() { final guardedValue = map['preExtractionHookConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
