// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStandbyPolicyResponse {
  final int initialDelaySec;

  /// Defines behaviour of using instances from standby pool to resize MIG.
  final String mode;

  /// Creates a new [InstanceGroupManagerStandbyPolicyResponse].
  /// [initialDelaySec] Required.
  /// [mode] Defines behaviour of using instances from standby pool to resize MIG.
  InstanceGroupManagerStandbyPolicyResponse({
    required this.initialDelaySec,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['initialDelaySec'] = initialDelaySec;
    map['mode'] = mode;
    return map;
  }

  factory InstanceGroupManagerStandbyPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicyResponse(
      initialDelaySec: map['initialDelaySec'] as int,
      mode: map['mode'] as String,
    );
  }
}
