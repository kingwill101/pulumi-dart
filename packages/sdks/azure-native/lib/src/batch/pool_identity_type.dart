import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of identity used for the Batch Pool.
enum PoolIdentityType implements pulumi.PulumiEnum<String> {
  userAssigned("UserAssigned"),
  none("None");

  const PoolIdentityType(this.wireValue);
  @override
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
