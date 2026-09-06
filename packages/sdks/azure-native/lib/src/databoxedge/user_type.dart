import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the user.
enum UserType implements pulumi.PulumiEnum<String> {
  valueShare("Share"),
  valueLocalManagement("LocalManagement"),
  valueARM("ARM");

  const UserType(this.wireValue);
  @override
  final String wireValue;

  static UserType fromValue(String value) {
    for (final item in UserType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserType value: $value');
  }
}
