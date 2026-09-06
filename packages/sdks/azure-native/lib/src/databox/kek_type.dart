import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of encryption key used for key encryption.
enum KekType implements pulumi.PulumiEnum<String> {
  valueMicrosoftManaged("MicrosoftManaged"),
  valueCustomerManaged("CustomerManaged");

  const KekType(this.wireValue);
  @override
  final String wireValue;

  static KekType fromValue(String value) {
    for (final item in KekType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KekType value: $value');
  }
}
