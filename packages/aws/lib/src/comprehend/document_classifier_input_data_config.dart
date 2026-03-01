// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_classifier_input_data_config_augmented_manifest.dart';

class DocumentClassifierInputDataConfig {
  /// List of training datasets produced by Amazon SageMaker AI Ground Truth.
  /// Used if `data_format` is `AUGMENTED_MANIFEST`.
  /// See the `augmented_manifests` Configuration Block section below.
  final List<DocumentClassifierInputDataConfigAugmentedManifest>? augmentedManifests;
  /// The format for the training data.
  /// One of `COMPREHEND_CSV` or `AUGMENTED_MANIFEST`.
  final String? dataFormat;
  /// Delimiter between labels when training a multi-label classifier.
  /// Valid values are `|`, `~`, `!`, `@`, `#`, `$`, `%`, `^`, `*`, `-`, `_`, `+`, `=`, `\`, `:`, `;`, `>`, `?`, `/`, `<space>`, and `<tab>`.
  /// Default is `|`.
  final String? labelDelimiter;
  /// Location of training documents.
  /// Used if `data_format` is `COMPREHEND_CSV`.
  final String? s3Uri;
  final String? testS3Uri;

  /// Creates a new [DocumentClassifierInputDataConfig].
  /// [augmentedManifests] List of training datasets produced by Amazon SageMaker AI Ground Truth.
  /// [dataFormat] The format for the training data.
  /// [labelDelimiter] Delimiter between labels when training a multi-label classifier.
  /// [s3Uri] Location of training documents.
  /// [testS3Uri] Optional.
  DocumentClassifierInputDataConfig({
    this.augmentedManifests,
    this.dataFormat,
    this.labelDelimiter,
    this.s3Uri,
    this.testS3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'augmentedManifests': ?augmentedManifests == null ? null : pulumi.Input.encodeList<DocumentClassifierInputDataConfigAugmentedManifest, Map<String, dynamic>>(augmentedManifests!, (value) => value.toMap()),
      'dataFormat': ?dataFormat,
      'labelDelimiter': ?labelDelimiter,
      's3Uri': ?s3Uri,
      'testS3Uri': ?testS3Uri,
    };
  }

  factory DocumentClassifierInputDataConfig.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierInputDataConfig(
      augmentedManifests: map['augmentedManifests'] == null ? null : pulumi.Input.decodeList<DocumentClassifierInputDataConfigAugmentedManifest>(map['augmentedManifests'], (value) => DocumentClassifierInputDataConfigAugmentedManifest.fromMap((value as Map).cast<String, dynamic>())),
      dataFormat: map['dataFormat'] == null ? null : map['dataFormat'] as String,
      labelDelimiter: map['labelDelimiter'] == null ? null : map['labelDelimiter'] as String,
      s3Uri: map['s3Uri'] == null ? null : map['s3Uri'] as String,
      testS3Uri: map['testS3Uri'] == null ? null : map['testS3Uri'] as String,
    );
  }
}

