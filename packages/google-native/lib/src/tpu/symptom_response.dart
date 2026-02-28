// ignore_for_file: unused_element, unnecessary_cast


/// A Symptom instance.
class SymptomResponse {
  /// Timestamp when the Symptom is created.
  final String createTime;
  /// Detailed information of the current Symptom.
  final String details;
  /// Type of the Symptom.
  final String symptomType;
  /// A string used to uniquely distinguish a worker within a TPU node.
  final String workerId;

  /// Creates a new [SymptomResponse].
  /// [createTime] Timestamp when the Symptom is created.
  /// [details] Detailed information of the current Symptom.
  /// [symptomType] Type of the Symptom.
  /// [workerId] A string used to uniquely distinguish a worker within a TPU node.
  SymptomResponse({
    required this.createTime,
    required this.details,
    required this.symptomType,
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'details': details,
      'symptomType': symptomType,
      'workerId': workerId,
    };
  }

  factory SymptomResponse.fromMap(Map<String, dynamic> map) {
    return SymptomResponse(
      createTime: map['createTime'] as String,
      details: map['details'] as String,
      symptomType: map['symptomType'] as String,
      workerId: map['workerId'] as String,
    );
  }
}

