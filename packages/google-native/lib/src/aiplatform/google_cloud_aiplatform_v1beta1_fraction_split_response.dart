// ignore_for_file: unused_element, unnecessary_cast

/// Assigns the input data to training, validation, and test sets as per the given fractions. Any of `training_fraction`, `validation_fraction` and `test_fraction` may optionally be provided, they must sum to up to 1. If the provided ones sum to less than 1, the remainder is assigned to sets as decided by Vertex AI. If none of the fractions are set, by default roughly 80% of data is used for training, 10% for validation, and 10% for test.
class GoogleCloudAiplatformV1beta1FractionSplitResponse {
  /// The fraction of the input data that is to be used to evaluate the Model.
  final double testFraction;

  /// The fraction of the input data that is to be used to train the Model.
  final double trainingFraction;

  /// The fraction of the input data that is to be used to validate the Model.
  final double validationFraction;

  /// Creates a new [GoogleCloudAiplatformV1beta1FractionSplitResponse].
  /// [testFraction] The fraction of the input data that is to be used to evaluate the Model.
  /// [trainingFraction] The fraction of the input data that is to be used to train the Model.
  /// [validationFraction] The fraction of the input data that is to be used to validate the Model.
  GoogleCloudAiplatformV1beta1FractionSplitResponse({
    required this.testFraction,
    required this.trainingFraction,
    required this.validationFraction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testFraction': testFraction,
      'trainingFraction': trainingFraction,
      'validationFraction': validationFraction,
    };
  }

  factory GoogleCloudAiplatformV1beta1FractionSplitResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1FractionSplitResponse(
      testFraction: map['testFraction'] as double,
      trainingFraction: map['trainingFraction'] as double,
      validationFraction: map['validationFraction'] as double,
    );
  }
}
