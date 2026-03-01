// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of gVNIC feature.
class VirtualNIC {
  /// Whether gVNIC features are enabled in the node pool.
  final bool? enabled;

  /// Creates a new [VirtualNIC].
  /// [enabled] Whether gVNIC features are enabled in the node pool.
  VirtualNIC({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory VirtualNIC.fromMap(Map<String, dynamic> map) {
    return VirtualNIC(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
