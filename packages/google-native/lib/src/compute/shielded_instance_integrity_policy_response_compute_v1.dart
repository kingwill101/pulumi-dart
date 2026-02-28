// ignore_for_file: unused_element, unnecessary_cast


/// The policy describes the baseline against which Instance boot integrity is measured.
class ShieldedInstanceIntegrityPolicyResponseComputeV1 {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool updateAutoLearnPolicy;

  /// Creates a new [ShieldedInstanceIntegrityPolicyResponseComputeV1].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  ShieldedInstanceIntegrityPolicyResponseComputeV1({
    required this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateAutoLearnPolicy': updateAutoLearnPolicy,
    };
  }

  factory ShieldedInstanceIntegrityPolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceIntegrityPolicyResponseComputeV1(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] as bool,
    );
  }
}

