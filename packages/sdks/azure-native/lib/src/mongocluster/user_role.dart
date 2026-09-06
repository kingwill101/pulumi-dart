import 'package:pulumi/pulumi.dart' as pulumi;

/// The role that is assigned to the user on the database scope.
enum UserRole implements pulumi.PulumiEnum<String> {
  databaseOwner("dbOwner");

  const UserRole(this.wireValue);
  @override
  final String wireValue;

  static UserRole fromValue(String value) {
    for (final item in UserRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserRole value: $value');
  }
}
