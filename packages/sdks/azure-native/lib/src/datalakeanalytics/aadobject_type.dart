import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of AAD object the object identifier refers to.
enum AADObjectType implements pulumi.PulumiEnum<String> {
  valueUser("User"),
  valueGroup("Group"),
  valueServicePrincipal("ServicePrincipal");

  const AADObjectType(this.wireValue);
  @override
  final String wireValue;

  static AADObjectType fromValue(String value) {
    for (final item in AADObjectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AADObjectType value: $value');
  }
}
