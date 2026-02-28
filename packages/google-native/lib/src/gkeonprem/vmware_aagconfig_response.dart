// ignore_for_file: unused_element, unnecessary_cast


/// Specifies anti affinity group config for the VMware user cluster.
class VmwareAAGConfigResponse {
  /// Spread nodes across at least three physical hosts (requires at least three hosts). Enabled by default.
  final bool aagConfigDisabled;

  /// Creates a new [VmwareAAGConfigResponse].
  /// [aagConfigDisabled] Spread nodes across at least three physical hosts (requires at least three hosts). Enabled by default.
  VmwareAAGConfigResponse({
    required this.aagConfigDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aagConfigDisabled': aagConfigDisabled,
    };
  }

  factory VmwareAAGConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareAAGConfigResponse(
      aagConfigDisabled: map['aagConfigDisabled'] as bool,
    );
  }
}

