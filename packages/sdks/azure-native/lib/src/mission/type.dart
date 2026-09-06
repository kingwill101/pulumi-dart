import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the object id. We currently allow users, groups, and service principals
enum Type implements pulumi.PulumiEnum<String> {
  valueUser("User"),
  valueGroup("Group"),
  valueServicePrincipal("ServicePrincipal");

  const Type(this.wireValue);
  @override
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}
