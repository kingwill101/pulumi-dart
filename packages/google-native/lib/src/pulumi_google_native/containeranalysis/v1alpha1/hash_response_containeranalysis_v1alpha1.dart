// ignore_for_file: unused_element, unnecessary_cast

/// Container message for hash values.
class HashResponseContaineranalysisV1alpha1 {
  /// The type of hash that was performed.
  final String type;

  /// The hash value.
  final String value;

  HashResponseContaineranalysisV1alpha1({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory HashResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return HashResponseContaineranalysisV1alpha1(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
