// ignore_for_file: unused_element, unnecessary_cast

class ClusterSystemAddonsConfigIngress {
  /// Whether Ingress is disabled.
  final bool? disabled;

  /// Ingress VIP.
  final String? ipv4Vip;

  /// Creates a new [ClusterSystemAddonsConfigIngress].
  /// [disabled] Whether Ingress is disabled.
  /// [ipv4Vip] Ingress VIP.
  ClusterSystemAddonsConfigIngress({this.disabled, this.ipv4Vip});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': ?disabled, 'ipv4Vip': ?ipv4Vip};
  }

  factory ClusterSystemAddonsConfigIngress.fromMap(Map<String, dynamic> map) {
    return ClusterSystemAddonsConfigIngress(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      ipv4Vip: map['ipv4Vip'] == null ? null : map['ipv4Vip'] as String,
    );
  }
}
