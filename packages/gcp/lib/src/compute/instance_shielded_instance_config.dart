// ignore_for_file: unused_element, unnecessary_cast

class InstanceShieldedInstanceConfig {
  /// - Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail results depending on whether they match or not. Defaults to true.
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  final bool? enableIntegrityMonitoring;

  /// - Verify the digital signature of all boot components, and halt the boot process if signature verification fails. Defaults to false.
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  final bool? enableSecureBoot;

  /// - Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates. Defaults to true.
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  final bool? enableVtpm;

  /// Creates a new [InstanceShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] - Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail results depending on whether they match or not. Defaults to true.
  /// [enableSecureBoot] - Verify the digital signature of all boot components, and halt the boot process if signature verification fails. Defaults to false.
  /// [enableVtpm] - Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates. Defaults to true.
  InstanceShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': ?enableIntegrityMonitoring,
      'enableSecureBoot': ?enableSecureBoot,
      'enableVtpm': ?enableVtpm,
    };
  }

  factory InstanceShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null
          ? null
          : map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] == null
          ? null
          : map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] == null ? null : map['enableVtpm'] as bool,
    );
  }
}
