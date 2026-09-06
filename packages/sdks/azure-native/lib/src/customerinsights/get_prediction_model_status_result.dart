// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPredictionModelStatus.
class GetPredictionModelStatusResult {
  /// The model status message.
  final String? message;
  /// Version of the model.
  final String? modelVersion;
  /// The prediction GUID ID.
  final String? predictionGuidId;
  /// The prediction name.
  final String? predictionName;
  /// The signals used.
  final int? signalsUsed;
  /// Prediction model life cycle.  When prediction is in PendingModelConfirmation status, it is allowed to update the status to PendingFeaturing or Active through API.
  final String? status;
  /// The hub name.
  final String? tenantId;
  /// Count of the test set.
  final int? testSetCount;
  /// The training accuracy.
  final int? trainingAccuracy;
  /// Count of the training set.
  final int? trainingSetCount;
  /// Count of the validation set.
  final int? validationSetCount;

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
    this.message,
    this.modelVersion,
    this.predictionGuidId,
    this.predictionName,
    this.signalsUsed,
    this.status,
    this.tenantId,
    this.testSetCount,
    this.trainingAccuracy,
    this.trainingSetCount,
    this.validationSetCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'modelVersion': ?modelVersion,
      'predictionGuidId': ?predictionGuidId,
      'predictionName': ?predictionName,
      'signalsUsed': ?signalsUsed,
      'status': ?status,
      'tenantId': ?tenantId,
      'testSetCount': ?testSetCount,
      'trainingAccuracy': ?trainingAccuracy,
      'trainingSetCount': ?trainingSetCount,
      'validationSetCount': ?validationSetCount,
    };
  }

  factory GetPredictionModelStatusResult.fromMap(Map<String, dynamic> map) {
    return GetPredictionModelStatusResult(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelVersion: (() { final guardedValue = map['modelVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      predictionGuidId: (() { final guardedValue = map['predictionGuidId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      predictionName: (() { final guardedValue = map['predictionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signalsUsed: (() { final guardedValue = map['signalsUsed']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      testSetCount: (() { final guardedValue = map['testSetCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      trainingAccuracy: (() { final guardedValue = map['trainingAccuracy']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      trainingSetCount: (() { final guardedValue = map['trainingSetCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      validationSetCount: (() { final guardedValue = map['validationSetCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
