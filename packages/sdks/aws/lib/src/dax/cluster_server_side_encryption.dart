// ignore_for_file: unused_element, unnecessary_cast


class ClusterServerSideEncryption {
  /// Whether to enable encryption at rest. Defaults to `false`.
  final bool? enabled;

  /// Creates a new [ClusterServerSideEncryption].
  /// [enabled] Whether to enable encryption at rest. Defaults to `false`.
  ClusterServerSideEncryption({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClusterServerSideEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterServerSideEncryption(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

