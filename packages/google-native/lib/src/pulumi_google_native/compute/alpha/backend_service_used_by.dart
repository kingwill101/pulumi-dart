// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedBy {
  final String? reference;

  BackendServiceUsedBy({
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

  factory BackendServiceUsedBy.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedBy(
      reference: map['reference'] == null ? null : map['reference'] as String,
    );
  }
}
