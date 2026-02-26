// ignore_for_file: unused_element, unnecessary_cast

class V2VmSymptom {
  /// (Output)
  /// Timestamp when the Symptom is created.
  final String? createTime;

  /// (Output)
  /// Detailed information of the current Symptom.
  final String? details;

  /// (Output)
  /// Type of the Symptom.
  final String? symptomType;

  /// (Output)
  /// A string used to uniquely distinguish a worker within a TPU node.
  final String? workerId;

  V2VmSymptom({
    this.createTime,
    this.details,
    this.symptomType,
    this.workerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = detailsValue;
    }
    final symptomTypeValue = symptomType;
    if (symptomTypeValue != null) {
      map['symptomType'] = symptomTypeValue;
    }
    final workerIdValue = workerId;
    if (workerIdValue != null) {
      map['workerId'] = workerIdValue;
    }
    return map;
  }

  factory V2VmSymptom.fromMap(Map<String, dynamic> map) {
    return V2VmSymptom(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      details: map['details'] == null ? null : map['details'] as String,
      symptomType:
          map['symptomType'] == null ? null : map['symptomType'] as String,
      workerId: map['workerId'] == null ? null : map['workerId'] as String,
    );
  }
}
