// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../document_classifier_input_data_config_augmented_manifest/document_classifier_input_data_config_augmented_manifest.dart';

class DocumentClassifierInputDataConfig {
  /// List of training datasets produced by Amazon SageMaker AI Ground Truth.
  /// Used if <span pulumi-lang-nodejs="`dataFormat`" pulumi-lang-dotnet="`DataFormat`" pulumi-lang-go="`dataFormat`" pulumi-lang-python="`data_format`" pulumi-lang-yaml="`dataFormat`" pulumi-lang-java="`dataFormat`">`data_format`</span> is `AUGMENTED_MANIFEST`.
  /// See the <span pulumi-lang-nodejs="`augmentedManifests`" pulumi-lang-dotnet="`AugmentedManifests`" pulumi-lang-go="`augmentedManifests`" pulumi-lang-python="`augmented_manifests`" pulumi-lang-yaml="`augmentedManifests`" pulumi-lang-java="`augmentedManifests`">`augmented_manifests`</span> Configuration Block section below.
  final List<DocumentClassifierInputDataConfigAugmentedManifest>?
      augmentedManifests;

  /// The format for the training data.
  /// One of `COMPREHEND_CSV` or `AUGMENTED_MANIFEST`.
  final String? dataFormat;

  /// Delimiter between labels when training a multi-label classifier.
  /// Valid values are `|`, `~`, `!`, `@`, `#`, `$`, `%`, `^`, `*`, `-`, `_`, `+`, `=`, `\`, `:`, `;`, `>`, `?`, `/`, `<space>`, and `<tab>`.
  /// Default is `|`.
  final String? labelDelimiter;

  /// Location of training documents.
  /// Used if <span pulumi-lang-nodejs="`dataFormat`" pulumi-lang-dotnet="`DataFormat`" pulumi-lang-go="`dataFormat`" pulumi-lang-python="`data_format`" pulumi-lang-yaml="`dataFormat`" pulumi-lang-java="`dataFormat`">`data_format`</span> is `COMPREHEND_CSV`.
  final String? s3Uri;
  final String? testS3Uri;

  DocumentClassifierInputDataConfig({
    this.augmentedManifests,
    this.dataFormat,
    this.labelDelimiter,
    this.s3Uri,
    this.testS3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final augmentedManifestsValue = augmentedManifests;
    if (augmentedManifestsValue != null) {
      map['augmentedManifests'] = Input.encodeList<
              DocumentClassifierInputDataConfigAugmentedManifest,
              Map<String, dynamic>>(
          augmentedManifestsValue, (value) => value.toMap());
    }
    final dataFormatValue = dataFormat;
    if (dataFormatValue != null) {
      map['dataFormat'] = dataFormatValue;
    }
    final labelDelimiterValue = labelDelimiter;
    if (labelDelimiterValue != null) {
      map['labelDelimiter'] = labelDelimiterValue;
    }
    final s3UriValue = s3Uri;
    if (s3UriValue != null) {
      map['s3Uri'] = s3UriValue;
    }
    final testS3UriValue = testS3Uri;
    if (testS3UriValue != null) {
      map['testS3Uri'] = testS3UriValue;
    }
    return map;
  }

  factory DocumentClassifierInputDataConfig.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierInputDataConfig(
      augmentedManifests: map['augmentedManifests'] == null
          ? null
          : Input.decodeList<
                  DocumentClassifierInputDataConfigAugmentedManifest>(
              map['augmentedManifests'],
              (value) =>
                  DocumentClassifierInputDataConfigAugmentedManifest.fromMap(
                      (value as Map).cast<String, dynamic>())),
      dataFormat:
          map['dataFormat'] == null ? null : map['dataFormat'] as String,
      labelDelimiter: map['labelDelimiter'] == null
          ? null
          : map['labelDelimiter'] as String,
      s3Uri: map['s3Uri'] == null ? null : map['s3Uri'] as String,
      testS3Uri: map['testS3Uri'] == null ? null : map['testS3Uri'] as String,
    );
  }
}
