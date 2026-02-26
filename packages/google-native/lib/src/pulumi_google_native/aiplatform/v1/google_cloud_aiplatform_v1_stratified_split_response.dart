// ignore_for_file: unused_element, unnecessary_cast

/// Assigns input data to the training, validation, and test sets so that the distribution of values found in the categorical column (as specified by the `key` field) is mirrored within each split. The fraction values determine the relative sizes of the splits. For example, if the specified column has three values, with 50% of the rows having value "A", 25% value "B", and 25% value "C", and the split fractions are specified as 80/10/10, then the training set will constitute 80% of the training data, with about 50% of the training set rows having the value "A" for the specified column, about 25% having the value "B", and about 25% having the value "C". Only the top 500 occurring values are used; any values not in the top 500 values are randomly assigned to a split. If less than three rows contain a specific value, those rows are randomly assigned. Supported only for tabular Datasets.
class GoogleCloudAiplatformV1StratifiedSplitResponse {
  /// The key is a name of one of the Dataset's data columns. The key provided must be for a categorical column.
  final String key;

  /// The fraction of the input data that is to be used to evaluate the Model.
  final double testFraction;

  /// The fraction of the input data that is to be used to train the Model.
  final double trainingFraction;

  /// The fraction of the input data that is to be used to validate the Model.
  final double validationFraction;

  GoogleCloudAiplatformV1StratifiedSplitResponse({
    required this.key,
    required this.testFraction,
    required this.trainingFraction,
    required this.validationFraction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['testFraction'] = testFraction;
    map['trainingFraction'] = trainingFraction;
    map['validationFraction'] = validationFraction;
    return map;
  }

  factory GoogleCloudAiplatformV1StratifiedSplitResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StratifiedSplitResponse(
      key: map['key'] as String,
      testFraction: map['testFraction'] as double,
      trainingFraction: map['trainingFraction'] as double,
      validationFraction: map['validationFraction'] as double,
    );
  }
}
