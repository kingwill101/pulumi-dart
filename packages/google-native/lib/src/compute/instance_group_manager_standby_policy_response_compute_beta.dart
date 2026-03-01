// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStandbyPolicyResponseComputeBeta {
  final int initialDelaySec;

  /// Defines behaviour of using instances from standby pool to resize MIG.
  final String mode;

  /// Creates a new [InstanceGroupManagerStandbyPolicyResponseComputeBeta].
  /// [initialDelaySec] Required.
  /// [mode] Defines behaviour of using instances from standby pool to resize MIG.
  InstanceGroupManagerStandbyPolicyResponseComputeBeta({
    required this.initialDelaySec,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'initialDelaySec': initialDelaySec, 'mode': mode};
  }

  factory InstanceGroupManagerStandbyPolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerStandbyPolicyResponseComputeBeta(
      initialDelaySec: map['initialDelaySec'] as int,
      mode: map['mode'] as String,
    );
  }
}
