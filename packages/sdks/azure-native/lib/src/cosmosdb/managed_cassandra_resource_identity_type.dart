/// The type of the resource.
enum ManagedCassandraResourceIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueNone("None");

  const ManagedCassandraResourceIdentityType(this.wireValue);
  final String wireValue;

  static ManagedCassandraResourceIdentityType fromValue(String value) {
    for (final item in ManagedCassandraResourceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ManagedCassandraResourceIdentityType value: $value',
    );
  }
}
