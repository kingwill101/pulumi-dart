// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntityRecognizerInputDataConfigAugmentedManifest {
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

  /// Creates a new [EntityRecognizerInputDataConfigAugmentedManifest].
  /// [annotationDataS3Uri] Location of annotation files.
  /// [attributeNames] The JSON attribute that contains the annotations for the training documents.
  /// [documentType] Type of augmented manifest.
  /// [s3Uri] Location of augmented manifest file.
  /// [sourceDocumentsS3Uri] Location of source PDF files.
  /// [split] Purpose of data in augmented manifest.
  EntityRecognizerInputDataConfigAugmentedManifest({
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

  factory EntityRecognizerInputDataConfigAugmentedManifest.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfigAugmentedManifest(
      annotationDataS3Uri: map['annotationDataS3Uri'] == null ? null : (map['annotationDataS3Uri'] as String).input(),
      attributeNames: ((map['attributeNames'] as List).cast<String>()).input(),
      documentType: map['documentType'] == null ? null : (map['documentType'] as String).input(),
      s3Uri: (map['s3Uri'] as String).input(),
      sourceDocumentsS3Uri: map['sourceDocumentsS3Uri'] == null ? null : (map['sourceDocumentsS3Uri'] as String).input(),
      split: map['split'] == null ? null : (map['split'] as String).input(),
    );
  }
}

