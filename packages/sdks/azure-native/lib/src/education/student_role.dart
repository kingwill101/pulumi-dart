import 'package:pulumi/pulumi.dart' as pulumi;

/// Student Role
enum StudentRole implements pulumi.PulumiEnum<String> {
  student("Student"),
  admin("Admin");

  const StudentRole(this.wireValue);
  @override
  final String wireValue;

  static StudentRole fromValue(String value) {
    for (final item in StudentRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StudentRole value: $value');
  }
}
