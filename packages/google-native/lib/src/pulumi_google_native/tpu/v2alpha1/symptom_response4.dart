// ignore_for_file: unused_element, unnecessary_cast

/// A Symptom instance.
class SymptomResponse4 {
  /// Timestamp when the Symptom is created.
  final String createTime;

  /// Detailed information of the current Symptom.
  final String details;

  /// Type of the Symptom.
  final String symptomType;

  /// A string used to uniquely distinguish a worker within a TPU node.
  final String workerId;

  SymptomResponse4({
    required this.createTime,
    required this.details,
    required this.symptomType,
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['details'] = details;
    map['symptomType'] = symptomType;
    map['workerId'] = workerId;
    return map;
  }

  factory SymptomResponse4.fromMap(Map<String, dynamic> map) {
    return SymptomResponse4(
      createTime: map['createTime'] as String,
      details: map['details'] as String,
      symptomType: map['symptomType'] as String,
      workerId: map['workerId'] as String,
    );
  }
}
