// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedByResponse2 {
  final String reference;

  BackendServiceUsedByResponse2({
    required this.reference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['reference'] = reference;
    return map;
  }

  factory BackendServiceUsedByResponse2.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByResponse2(
      reference: map['reference'] as String,
    );
  }
}
