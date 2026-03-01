/// The type of identity used for the Batch Pool.
enum PoolIdentityType {
  userAssigned("UserAssigned"),
  none("None");

  const PoolIdentityType(this.value);
  final String value;

  static PoolIdentityType fromValue(String value) {
    for (final item in PoolIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PoolIdentityType value: $value');
  }
}

