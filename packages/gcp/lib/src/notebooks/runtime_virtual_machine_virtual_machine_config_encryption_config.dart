// ignore_for_file: unused_element, unnecessary_cast

class RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig {
  /// The Cloud KMS resource identifier of the customer-managed
  /// encryption key used to protect a resource, such as a disks.
  /// It has the following format:
  /// `projects/{PROJECT_ID}/locations/{REGION}/keyRings/
  /// {KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
  final String? kmsKey;

  /// Creates a new [RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig].
  /// [kmsKey] The Cloud KMS resource identifier of the customer-managed
  RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    return map;
  }

  factory RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig.fromMap(
      Map<String, dynamic> map) {
    return RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig(
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}
