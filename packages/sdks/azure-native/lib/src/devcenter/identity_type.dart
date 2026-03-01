/// Values can be systemAssignedIdentity or userAssignedIdentity
enum IdentityType {
  valueSystemAssignedIdentity("systemAssignedIdentity"),
  valueUserAssignedIdentity("userAssignedIdentity"),
  valueDelegatedResourceIdentity("delegatedResourceIdentity");

  const IdentityType(this.value);
  final String value;

  static IdentityType fromValue(String value) {
    for (final item in IdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityType value: $value');
  }
}

