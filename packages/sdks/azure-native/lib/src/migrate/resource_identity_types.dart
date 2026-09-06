import 'package:pulumi/pulumi.dart' as pulumi;

enum ResourceIdentityTypes implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const ResourceIdentityTypes(this.wireValue);
  @override
  final String wireValue;

  static ResourceIdentityTypes fromValue(String value) {
    for (final item in ResourceIdentityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityTypes value: $value');
  }
}
