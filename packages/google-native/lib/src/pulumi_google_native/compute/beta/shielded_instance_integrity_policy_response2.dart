// ignore_for_file: unused_element, unnecessary_cast

/// The policy describes the baseline against which Instance boot integrity is measured.
class ShieldedInstanceIntegrityPolicyResponse2 {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool updateAutoLearnPolicy;

  ShieldedInstanceIntegrityPolicyResponse2({
    required this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['updateAutoLearnPolicy'] = updateAutoLearnPolicy;
    return map;
  }

  factory ShieldedInstanceIntegrityPolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return ShieldedInstanceIntegrityPolicyResponse2(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] as bool,
    );
  }
}
