import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the EncryptionType of the managed disk. It is set to VMGuestStateOnly for encryption of just the VMGuestState blob, and NonPersistedTPM for not persisting firmware state in the VMGuestState blob. **Note**: It can be set for only Confidential VMs and required when using Confidential VMs.
enum SecurityEncryptionTypes implements pulumi.PulumiEnum<String> {
  nonPersistedTPM("NonPersistedTPM"),
  vMGuestStateOnly("VMGuestStateOnly");

  const SecurityEncryptionTypes(this.wireValue);
  @override
  final String wireValue;

  static SecurityEncryptionTypes fromValue(String value) {
    for (final item in SecurityEncryptionTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityEncryptionTypes value: $value');
  }
}
