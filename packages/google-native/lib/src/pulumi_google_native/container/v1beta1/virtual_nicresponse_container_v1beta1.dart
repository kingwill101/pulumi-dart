// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of gVNIC feature.
class VirtualNICResponseContainerV1beta1 {
  /// Whether gVNIC features are enabled in the node pool.
  final bool enabled;

  VirtualNICResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VirtualNICResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return VirtualNICResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
