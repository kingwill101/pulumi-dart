// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of gVNIC feature.
class VirtualNICResponse {
  /// Whether gVNIC features are enabled in the node pool.
  final bool enabled;

  /// Creates a new [VirtualNICResponse].
  /// [enabled] Whether gVNIC features are enabled in the node pool.
  VirtualNICResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory VirtualNICResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNICResponse(enabled: map['enabled'] as bool);
  }
}
