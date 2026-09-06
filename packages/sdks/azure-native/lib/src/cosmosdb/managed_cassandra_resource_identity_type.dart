import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the resource.
enum ManagedCassandraResourceIdentityType implements pulumi.PulumiEnum<String> {
  systemAssigned("SystemAssigned"),
  none("None");

  const ManagedCassandraResourceIdentityType(this.wireValue);
  @override
  final String wireValue;

  static ManagedCassandraResourceIdentityType fromValue(String value) {
    for (final item in ManagedCassandraResourceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedCassandraResourceIdentityType value: $value');
  }
}
