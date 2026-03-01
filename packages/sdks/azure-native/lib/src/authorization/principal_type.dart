/// The principal type of the assigned principal ID.
enum PrincipalType {
  valueUser("User"),
  valueGroup("Group"),
  valueServicePrincipal("ServicePrincipal"),
  valueForeignGroup("ForeignGroup"),
  valueDevice("Device");

  const PrincipalType(this.value);
  final String value;

  static PrincipalType fromValue(String value) {
    for (final item in PrincipalType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrincipalType value: $value');
  }
}

