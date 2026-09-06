import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity type. 'SystemAssigned' and 'UserAssigned' are mutually exclusive. 'SystemAssigned' will use implicitly created managed identity.
enum IdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const IdentityType(this.wireValue);
  @override
  final String wireValue;

  static IdentityType fromValue(String value) {
    for (final item in IdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityType value: $value');
  }
}
