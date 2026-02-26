// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceUsedByResponse3 {
  final String reference;

  BackendServiceUsedByResponse3({
    required this.reference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['reference'] = reference;
    return map;
  }

  factory BackendServiceUsedByResponse3.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedByResponse3(
      reference: map['reference'] as String,
    );
  }
}
