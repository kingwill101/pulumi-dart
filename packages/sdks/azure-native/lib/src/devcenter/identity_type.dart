import 'package:pulumi/pulumi.dart' as pulumi;

/// Values can be systemAssignedIdentity or userAssignedIdentity
enum IdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssignedIdentity("systemAssignedIdentity"),
  valueUserAssignedIdentity("userAssignedIdentity"),
  valueDelegatedResourceIdentity("delegatedResourceIdentity");

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
