// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesNodePoolsNodepoolLabel {
  /// The key of a taint.
  final String key;
  /// The value of a taint.
  final String value;

  /// Creates a new [GetKubernetesNodePoolsNodepoolLabel].
  /// [key] The key of a taint.
  /// [value] The value of a taint.
  GetKubernetesNodePoolsNodepoolLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetKubernetesNodePoolsNodepoolLabel.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolLabel(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

