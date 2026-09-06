import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of kek encryption key
enum EncryptionKekType implements pulumi.PulumiEnum<String> {
  valueMicrosoftManaged("MicrosoftManaged"),
  valueCustomerManaged("CustomerManaged");

  const EncryptionKekType(this.wireValue);
  @override
  final String wireValue;

  static EncryptionKekType fromValue(String value) {
    for (final item in EncryptionKekType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKekType value: $value');
  }
}
