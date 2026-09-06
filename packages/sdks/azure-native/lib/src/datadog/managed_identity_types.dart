import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'.
enum ManagedIdentityTypes implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

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
