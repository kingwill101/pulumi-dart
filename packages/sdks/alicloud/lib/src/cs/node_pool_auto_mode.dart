// ignore_for_file: unused_element, unnecessary_cast


class NodePoolAutoMode {
  /// Whether to enable auto mode. Valid values:
  final bool? enabled;

  /// Creates a new [NodePoolAutoMode].
  /// [enabled] Whether to enable auto mode. Valid values:
  NodePoolAutoMode({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory NodePoolAutoMode.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoMode(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

