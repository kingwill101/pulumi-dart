// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of gVNIC feature.
class VirtualNICContainerV1beta1 {
  /// Whether gVNIC features are enabled in the node pool.
  final bool? enabled;

  /// Creates a new [VirtualNICContainerV1beta1].
  /// [enabled] Whether gVNIC features are enabled in the node pool.
  VirtualNICContainerV1beta1({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory VirtualNICContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return VirtualNICContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
