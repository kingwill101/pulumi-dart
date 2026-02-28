// ignore_for_file: unused_element, unnecessary_cast

class DocumentClassifierInputDataConfigAugmentedManifest {
  /// Location of annotation files.
  final String? annotationDataS3Uri;

  /// The JSON attribute that contains the annotations for the training documents.
  final List<String> attributeNames;

  /// Type of augmented manifest.
  /// One of `PLAIN_TEXT_DOCUMENT` or `SEMI_STRUCTURED_DOCUMENT`.
  final String? documentType;

  /// Location of augmented manifest file.
  final String s3Uri;

  /// Location of source PDF files.
  final String? sourceDocumentsS3Uri;

  /// Purpose of data in augmented manifest.
  /// One of `TRAIN` or `TEST`.
  final String? split;

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
    final map = <String, dynamic>{};
    final annotationDataS3UriValue = annotationDataS3Uri;
    if (annotationDataS3UriValue != null) {
      map['annotationDataS3Uri'] = annotationDataS3UriValue;
    }
    map['attributeNames'] = attributeNames;
    final documentTypeValue = documentType;
    if (documentTypeValue != null) {
      map['documentType'] = documentTypeValue;
    }
    map['s3Uri'] = s3Uri;
    final sourceDocumentsS3UriValue = sourceDocumentsS3Uri;
    if (sourceDocumentsS3UriValue != null) {
      map['sourceDocumentsS3Uri'] = sourceDocumentsS3UriValue;
    }
    final splitValue = split;
    if (splitValue != null) {
      map['split'] = splitValue;
    }
    return map;
  }

  factory DocumentClassifierInputDataConfigAugmentedManifest.fromMap(
      Map<String, dynamic> map) {
    return DocumentClassifierInputDataConfigAugmentedManifest(
      annotationDataS3Uri: map['annotationDataS3Uri'] == null
          ? null
          : map['annotationDataS3Uri'] as String,
      attributeNames: (map['attributeNames'] as List).cast<String>(),
      documentType:
          map['documentType'] == null ? null : map['documentType'] as String,
      s3Uri: map['s3Uri'] as String,
      sourceDocumentsS3Uri: map['sourceDocumentsS3Uri'] == null
          ? null
          : map['sourceDocumentsS3Uri'] as String,
      split: map['split'] == null ? null : map['split'] as String,
    );
  }
}
