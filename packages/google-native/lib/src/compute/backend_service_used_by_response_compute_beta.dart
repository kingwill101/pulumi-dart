// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedByResponseComputeBeta {
  final String reference;

  /// Creates a new [BackendServiceUsedByResponseComputeBeta].
  /// [reference] Required.
  BackendServiceUsedByResponseComputeBeta({required this.reference});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'reference': reference};
  }

  factory BackendServiceUsedByResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceUsedByResponseComputeBeta(
      reference: map['reference'] as String,
    );
  }
}
