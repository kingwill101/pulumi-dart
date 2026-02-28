// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedByResponseComputeV1 {
  final String reference;

  /// Creates a new [BackendServiceUsedByResponseComputeV1].
  /// [reference] Required.
  BackendServiceUsedByResponseComputeV1({
    required this.reference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['reference'] = reference;
    return map;
  }

  factory BackendServiceUsedByResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceUsedByResponseComputeV1(
      reference: map['reference'] as String,
    );
  }
}
