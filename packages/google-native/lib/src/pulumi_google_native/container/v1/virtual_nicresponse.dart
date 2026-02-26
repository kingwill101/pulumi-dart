// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of gVNIC feature.
class VirtualNICResponse {
  /// Whether gVNIC features are enabled in the node pool.
  final bool enabled;

  VirtualNICResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VirtualNICResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNICResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
