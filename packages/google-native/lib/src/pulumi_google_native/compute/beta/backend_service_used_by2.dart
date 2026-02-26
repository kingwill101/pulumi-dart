// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedBy2 {
  final String? reference;

  BackendServiceUsedBy2({
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

  factory BackendServiceUsedBy2.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedBy2(
      reference: map['reference'] == null ? null : map['reference'] as String,
    );
  }
}
