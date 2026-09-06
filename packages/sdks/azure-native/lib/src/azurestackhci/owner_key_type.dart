import 'package:pulumi/pulumi.dart' as pulumi;

/// Owner key type
enum OwnerKeyType implements pulumi.PulumiEnum<String> {
  microsoftManaged("MicrosoftManaged");

  const OwnerKeyType(this.wireValue);
  @override
  final String wireValue;

  static OwnerKeyType fromValue(String value) {
    for (final item in OwnerKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwnerKeyType value: $value');
  }
}
