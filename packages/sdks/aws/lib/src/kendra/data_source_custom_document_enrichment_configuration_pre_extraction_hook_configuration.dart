// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_custom_document_enrichment_configuration_pre_extraction_hook_configuration_invocation_condition.dart';

class DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration {
  /// A block that specifies the condition used for when a Lambda function should be invoked. For example, you can specify a condition that if there are empty date-time values, then Amazon Kendra should invoke a function that inserts the current date-time. See invocation_condition.
  final pulumi.Input<DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationCondition>? invocationCondition;
  /// The Amazon Resource Name (ARN) of a Lambda Function that can manipulate your document metadata fields or attributes and content.
  final pulumi.Input<String> lambdaArn;
  /// Stores the original, raw documents or the structured, parsed documents before and after altering them. For more information, see [Data contracts for Lambda functions](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#cde-data-contracts-lambda).
  final pulumi.Input<String> s3Bucket;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration].
  /// [invocationCondition] A block that specifies the condition used for when a Lambda function should be invoked. For example, you can specify a condition that if there are empty date-time values, then Amazon Kendra should invoke a function that inserts the current date-time. See invocation_condition.
  /// [lambdaArn] The Amazon Resource Name (ARN) of a Lambda Function that can manipulate your document metadata fields or attributes and content.
  /// [s3Bucket] Stores the original, raw documents or the structured, parsed documents before and after altering them. For more information, see [Data contracts for Lambda functions](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html#cde-data-contracts-lambda).
  DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration({
    this.invocationCondition,
    required this.lambdaArn,
    required this.s3Bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invocationCondition': ?pulumi.Input.mapOptionalInputValue<DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationCondition, Map<String, dynamic>>(invocationCondition, (value) => value.toMap()),
      'lambdaArn': lambdaArn,
      's3Bucket': s3Bucket,
    };
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfiguration(
      invocationCondition: (() { final guardedValue = map['invocationCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceCustomDocumentEnrichmentConfigurationPreExtractionHookConfigurationInvocationCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaArn: pulumi.Input.fromValue(map['lambdaArn'] as String),
      s3Bucket: pulumi.Input.fromValue(map['s3Bucket'] as String),
    );
  }
}

