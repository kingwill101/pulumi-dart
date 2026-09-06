import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity type.
enum ManagedIdentityTypes implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned");

  const ManagedIdentityTypes(this.wireValue);
  @override
  final String wireValue;

  static ManagedIdentityTypes fromValue(String value) {
    for (final item in ManagedIdentityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityTypes value: $value');
  }
}
