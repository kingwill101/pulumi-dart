// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_classifier_input_data_config_augmented_manifest.dart';

class DocumentClassifierInputDataConfig {
  /// List of training datasets produced by Amazon SageMaker AI Ground Truth.
  /// Used if `dataFormat` is `AUGMENTED_MANIFEST`.
  /// See the `augmentedManifests` Configuration Block section below.
  final pulumi.Input<List<DocumentClassifierInputDataConfigAugmentedManifest>>? augmentedManifests;
  /// The format for the training data.
  /// One of `COMPREHEND_CSV` or `AUGMENTED_MANIFEST`.
  final pulumi.Input<String>? dataFormat;
  /// Delimiter between labels when training a multi-label classifier.
  /// Valid values are `|`, `~`, `!`, `@`, `#`, `$`, `%`, `^`, `*`, `-`, `_`, `+`, `=`, `\`, `:`, `;`, `&gt;`, `?`, `/`, `&lt;space&gt;`, and `&lt;tab&gt;`.
  /// Default is `|`.
  final pulumi.Input<String>? labelDelimiter;
  /// Location of training documents.
  /// Used if `dataFormat` is `COMPREHEND_CSV`.
  final pulumi.Input<String>? s3Uri;
  final pulumi.Input<String>? testS3Uri;

  /// Creates a new [DocumentClassifierInputDataConfig].
  /// [augmentedManifests] List of training datasets produced by Amazon SageMaker AI Ground Truth.
  /// [dataFormat] The format for the training data.
  /// [labelDelimiter] Delimiter between labels when training a multi-label classifier.
  /// [s3Uri] Location of training documents.
  /// [testS3Uri] Optional.
  const DocumentClassifierInputDataConfig({
    this.augmentedManifests,
    this.dataFormat,
    this.labelDelimiter,
    this.s3Uri,
    this.testS3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'augmentedManifests': ?pulumi.Input.mapOptionalInputValue<List<DocumentClassifierInputDataConfigAugmentedManifest>, List<Map<String, dynamic>>>(augmentedManifests, (value) => pulumi.Input.encodeList<DocumentClassifierInputDataConfigAugmentedManifest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataFormat': ?dataFormat,
      'labelDelimiter': ?labelDelimiter,
      's3Uri': ?s3Uri,
      'testS3Uri': ?testS3Uri,
    };
  }

  factory DocumentClassifierInputDataConfig.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierInputDataConfig(
      augmentedManifests: (() { final guardedValue = map['augmentedManifests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DocumentClassifierInputDataConfigAugmentedManifest>(guardedValue, (value) => DocumentClassifierInputDataConfigAugmentedManifest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelDelimiter: (() { final guardedValue = map['labelDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Uri: (() { final guardedValue = map['s3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testS3Uri: (() { final guardedValue = map['testS3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
