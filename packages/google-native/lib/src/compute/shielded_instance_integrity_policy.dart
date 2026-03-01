// ignore_for_file: unused_element, unnecessary_cast

/// The policy describes the baseline against which Instance boot integrity is measured.
class ShieldedInstanceIntegrityPolicy {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool? updateAutoLearnPolicy;

  /// Creates a new [ShieldedInstanceIntegrityPolicy].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  ShieldedInstanceIntegrityPolicy({this.updateAutoLearnPolicy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'updateAutoLearnPolicy': ?updateAutoLearnPolicy};
  }

  factory ShieldedInstanceIntegrityPolicy.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceIntegrityPolicy(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] == null
          ? null
          : map['updateAutoLearnPolicy'] as bool,
    );
  }
}
