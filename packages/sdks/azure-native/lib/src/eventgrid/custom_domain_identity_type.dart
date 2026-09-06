import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
enum CustomDomainIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const CustomDomainIdentityType(this.wireValue);
  @override
  final String wireValue;

  static CustomDomainIdentityType fromValue(String value) {
    for (final item in CustomDomainIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomDomainIdentityType value: $value');
  }
}
