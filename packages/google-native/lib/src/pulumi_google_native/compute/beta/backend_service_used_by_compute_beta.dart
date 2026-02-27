// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedByComputeBeta {
  final String? reference;

  BackendServiceUsedByComputeBeta({
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

  factory BackendServiceUsedByComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByComputeBeta(
      reference: map['reference'] == null ? null : map['reference'] as String,
    );
  }
}
