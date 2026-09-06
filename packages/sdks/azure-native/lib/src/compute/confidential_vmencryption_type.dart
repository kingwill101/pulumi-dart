import 'package:pulumi/pulumi.dart' as pulumi;

/// confidential VM encryption types
enum ConfidentialVMEncryptionType implements pulumi.PulumiEnum<String> {
  encryptedVMGuestStateOnlyWithPmk("EncryptedVMGuestStateOnlyWithPmk"),
  encryptedWithPmk("EncryptedWithPmk"),
  encryptedWithCmk("EncryptedWithCmk"),
  nonPersistedTPM("NonPersistedTPM");

  const ConfidentialVMEncryptionType(this.wireValue);
  @override
  final String wireValue;

  static ConfidentialVMEncryptionType fromValue(String value) {
    for (final item in ConfidentialVMEncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidentialVMEncryptionType value: $value');
  }
}
