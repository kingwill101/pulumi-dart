import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity type.
enum AKSIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const AKSIdentityType(this.wireValue);
  @override
  final String wireValue;

  static AKSIdentityType fromValue(String value) {
    for (final item in AKSIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AKSIdentityType value: $value');
  }
}
