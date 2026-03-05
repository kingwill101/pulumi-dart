// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DocumentClassifierInputDataConfigAugmentedManifest {
  /// Location of annotation files.
  final pulumi.Input<String>? annotationDataS3Uri;
  /// The JSON attribute that contains the annotations for the training documents.
  final pulumi.Input<List<String>> attributeNames;
  /// Type of augmented manifest.
  /// One of `PLAIN_TEXT_DOCUMENT` or `SEMI_STRUCTURED_DOCUMENT`.
  final pulumi.Input<String>? documentType;
  /// Location of augmented manifest file.
  final pulumi.Input<String> s3Uri;
  /// Location of source PDF files.
  final pulumi.Input<String>? sourceDocumentsS3Uri;
  /// Purpose of data in augmented manifest.
  /// One of `TRAIN` or `TEST`.
  final pulumi.Input<String>? split;

  /// Creates a new [DocumentClassifierInputDataConfigAugmentedManifest].
  /// [annotationDataS3Uri] Location of annotation files.
  /// [attributeNames] The JSON attribute that contains the annotations for the training documents.
  /// [documentType] Type of augmented manifest.
  /// [s3Uri] Location of augmented manifest file.
  /// [sourceDocumentsS3Uri] Location of source PDF files.
  /// [split] Purpose of data in augmented manifest.
  DocumentClassifierInputDataConfigAugmentedManifest({
    this.annotationDataS3Uri,
    required this.attributeNames,
    this.documentType,
    required this.s3Uri,
    this.sourceDocumentsS3Uri,
    this.split,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationDataS3Uri': ?annotationDataS3Uri,
      'attributeNames': attributeNames,
      'documentType': ?documentType,
      's3Uri': s3Uri,
      'sourceDocumentsS3Uri': ?sourceDocumentsS3Uri,
      'split': ?split,
    };
  }

  factory DocumentClassifierInputDataConfigAugmentedManifest.fromMap(Map<String, dynamic> map) {
    return DocumentClassifierInputDataConfigAugmentedManifest(
      annotationDataS3Uri: (() { final guardedValue = map['annotationDataS3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributeNames: pulumi.Input.fromValue((map['attributeNames'] as List).cast<String>()),
      documentType: (() { final guardedValue = map['documentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
      sourceDocumentsS3Uri: (() { final guardedValue = map['sourceDocumentsS3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      split: (() { final guardedValue = map['split']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

