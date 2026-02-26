// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigGcpFilestoreCsiDriverConfig {
  final bool enabled;

  GetClusterAddonsConfigGcpFilestoreCsiDriverConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigGcpFilestoreCsiDriverConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigGcpFilestoreCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
