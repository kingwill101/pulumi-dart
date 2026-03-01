/// The type of the resource.
enum ManagedCassandraResourceIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueNone("None");

  const ManagedCassandraResourceIdentityType(this.value);
  final String value;

  static ManagedCassandraResourceIdentityType fromValue(String value) {
    for (final item in ManagedCassandraResourceIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedCassandraResourceIdentityType value: $value');
  }
}

