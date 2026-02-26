// ignore_for_file: unused_element, unnecessary_cast

class ClusterSystemAddonsConfigIngress {
  /// Whether Ingress is disabled.
  final bool? disabled;

  /// Ingress VIP.
  final String? ipv4Vip;

  ClusterSystemAddonsConfigIngress({
    this.disabled,
    this.ipv4Vip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final ipv4VipValue = ipv4Vip;
    if (ipv4VipValue != null) {
      map['ipv4Vip'] = ipv4VipValue;
    }
    return map;
  }

  factory ClusterSystemAddonsConfigIngress.fromMap(Map<String, dynamic> map) {
    return ClusterSystemAddonsConfigIngress(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      ipv4Vip: map['ipv4Vip'] == null ? null : map['ipv4Vip'] as String,
    );
  }
}
