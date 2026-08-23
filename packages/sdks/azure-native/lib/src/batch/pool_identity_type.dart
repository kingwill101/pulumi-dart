/// The type of identity used for the Batch Pool.
enum PoolIdentityType {
  userAssigned("UserAssigned"),
  none("None");

  const PoolIdentityType(this.wireValue);
  final String wireValue;

  static PoolIdentityType fromValue(String value) {
    for (final item in PoolIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PoolIdentityType value: $value');
  }
}
