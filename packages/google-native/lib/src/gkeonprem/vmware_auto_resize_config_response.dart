// ignore_for_file: unused_element, unnecessary_cast

/// Represents auto resizing configurations for the VMware user cluster.
class VmwareAutoResizeConfigResponse {
  /// Whether to enable controle plane node auto resizing.
  final bool enabled;

  /// Creates a new [VmwareAutoResizeConfigResponse].
  /// [enabled] Whether to enable controle plane node auto resizing.
  VmwareAutoResizeConfigResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory VmwareAutoResizeConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareAutoResizeConfigResponse(enabled: map['enabled'] as bool);
  }
}
