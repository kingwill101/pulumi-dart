// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStandbyPolicyResponse2 {
  final int initialDelaySec;

  /// Defines behaviour of using instances from standby pool to resize MIG.
  final String mode;

  InstanceGroupManagerStandbyPolicyResponse2({
    required this.initialDelaySec,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['initialDelaySec'] = initialDelaySec;
    map['mode'] = mode;
    return map;
  }

  factory InstanceGroupManagerStandbyPolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicyResponse2(
      initialDelaySec: map['initialDelaySec'] as int,
      mode: map['mode'] as String,
    );
  }
}
