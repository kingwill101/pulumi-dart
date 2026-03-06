// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPredictionModelStatus.
class GetPredictionModelStatusResult {
  /// The model status message.
  final String message;
  /// Version of the model.
  final String modelVersion;
  /// The prediction GUID ID.
  final String predictionGuidId;
  /// The prediction name.
  final String predictionName;
  /// The signals used.
  final int signalsUsed;
  /// Prediction model life cycle.  When prediction is in PendingModelConfirmation status, it is allowed to update the status to PendingFeaturing or Active through API.
  final String status;
  /// The hub name.
  final String tenantId;
  /// Count of the test set.
  final int testSetCount;
  /// The training accuracy.
  final int trainingAccuracy;
  /// Count of the training set.
  final int trainingSetCount;
  /// Count of the validation set.
  final int validationSetCount;

  /// Creates a new [GetPredictionModelStatusResult].
  /// [message] The model status message.
  /// [modelVersion] Version of the model.
  /// [predictionGuidId] The prediction GUID ID.
  /// [predictionName] The prediction name.
  /// [signalsUsed] The signals used.
  /// [status] Prediction model life cycle.  When prediction is in PendingModelConfirmation status, it is allowed to update the status to PendingFeaturing or Active through API.
  /// [tenantId] The hub name.
  /// [testSetCount] Count of the test set.
  /// [trainingAccuracy] The training accuracy.
  /// [trainingSetCount] Count of the training set.
  /// [validationSetCount] Count of the validation set.
  const GetPredictionModelStatusResult({
    required this.message,
    required this.modelVersion,
    required this.predictionGuidId,
    required this.predictionName,
    required this.signalsUsed,
    required this.status,
    required this.tenantId,
    required this.testSetCount,
    required this.trainingAccuracy,
    required this.trainingSetCount,
    required this.validationSetCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'modelVersion': modelVersion,
      'predictionGuidId': predictionGuidId,
      'predictionName': predictionName,
      'signalsUsed': signalsUsed,
      'status': status,
      'tenantId': tenantId,
      'testSetCount': testSetCount,
      'trainingAccuracy': trainingAccuracy,
      'trainingSetCount': trainingSetCount,
      'validationSetCount': validationSetCount,
    };
  }

  factory GetPredictionModelStatusResult.fromMap(Map<String, dynamic> map) {
    return GetPredictionModelStatusResult(
      message: map['message'] as String,
      modelVersion: map['modelVersion'] as String,
      predictionGuidId: map['predictionGuidId'] as String,
      predictionName: map['predictionName'] as String,
      signalsUsed: map['signalsUsed'] as int,
      status: map['status'] as String,
      tenantId: map['tenantId'] as String,
      testSetCount: map['testSetCount'] as int,
      trainingAccuracy: map['trainingAccuracy'] as int,
      trainingSetCount: map['trainingSetCount'] as int,
      validationSetCount: map['validationSetCount'] as int,
    );
  }
}

