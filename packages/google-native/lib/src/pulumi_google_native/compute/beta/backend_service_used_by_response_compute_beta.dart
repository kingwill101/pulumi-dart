// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedByResponseComputeBeta {
  final String reference;

  BackendServiceUsedByResponseComputeBeta({
    required this.reference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['reference'] = reference;
    return map;
  }

  factory BackendServiceUsedByResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceUsedByResponseComputeBeta(
      reference: map['reference'] as String,
    );
  }
}
