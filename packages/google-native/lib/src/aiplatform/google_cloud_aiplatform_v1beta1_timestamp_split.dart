// ignore_for_file: unused_element, unnecessary_cast

/// Assigns input data to training, validation, and test sets based on a provided timestamps. The youngest data pieces are assigned to training set, next to validation set, and the oldest to the test set. Supported only for tabular Datasets.
class GoogleCloudAiplatformV1beta1TimestampSplit {
  /// The key is a name of one of the Dataset's data columns. The values of the key (the values in the column) must be in RFC 3339 `date-time` format, where `time-offset` = `"Z"` (e.g. 1985-04-12T23:20:50.52Z). If for a piece of data the key is not present or has an invalid value, that piece is ignored by the pipeline.
  final String key;

  /// The fraction of the input data that is to be used to evaluate the Model.
  final double? testFraction;

  /// The fraction of the input data that is to be used to train the Model.
  final double? trainingFraction;

  /// The fraction of the input data that is to be used to validate the Model.
  final double? validationFraction;

  /// Creates a new [GoogleCloudAiplatformV1beta1TimestampSplit].
  /// [key] The key is a name of one of the Dataset's data columns. The values of the key (the values in the column) must be in RFC 3339 `date-time` format, where `time-offset` = `"Z"` (e.g. 1985-04-12T23:20:50.52Z). If for a piece of data the key is not present or has an invalid value, that piece is ignored by the pipeline.
  /// [testFraction] The fraction of the input data that is to be used to evaluate the Model.
  /// [trainingFraction] The fraction of the input data that is to be used to train the Model.
  /// [validationFraction] The fraction of the input data that is to be used to validate the Model.
  GoogleCloudAiplatformV1beta1TimestampSplit({
    required this.key,
    this.testFraction,
    this.trainingFraction,
    this.validationFraction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'testFraction': ?testFraction,
      'trainingFraction': ?trainingFraction,
      'validationFraction': ?validationFraction,
    };
  }

  factory GoogleCloudAiplatformV1beta1TimestampSplit.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1TimestampSplit(
      key: map['key'] as String,
      testFraction: map['testFraction'] == null
          ? null
          : map['testFraction'] as double,
      trainingFraction: map['trainingFraction'] == null
          ? null
          : map['trainingFraction'] as double,
      validationFraction: map['validationFraction'] == null
          ? null
          : map['validationFraction'] as double,
    );
  }
}
