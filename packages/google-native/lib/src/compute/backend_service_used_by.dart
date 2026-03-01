// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedBy {
  final String? reference;

  /// Creates a new [BackendServiceUsedBy].
  /// [reference] Optional.
  BackendServiceUsedBy({this.reference});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'reference': ?reference};
  }

  factory BackendServiceUsedBy.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedBy(
      reference: map['reference'] == null ? null : map['reference'] as String,
    );
  }
}
