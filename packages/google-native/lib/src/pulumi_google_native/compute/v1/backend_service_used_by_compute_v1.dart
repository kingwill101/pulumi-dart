// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedByComputeV1 {
  final String? reference;

  BackendServiceUsedByComputeV1({
    this.reference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final referenceValue = reference;
    if (referenceValue != null) {
      map['reference'] = referenceValue;
    }
    return map;
  }

  factory BackendServiceUsedByComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByComputeV1(
      reference: map['reference'] == null ? null : map['reference'] as String,
    );
  }
}
