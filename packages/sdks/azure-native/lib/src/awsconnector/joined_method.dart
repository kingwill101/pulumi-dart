import 'package:pulumi/pulumi.dart' as pulumi;

/// The method by which the account joined the organization.
enum JoinedMethod implements pulumi.PulumiEnum<String> {
  cREATED("CREATED"),
  iNVITED("INVITED");

  const JoinedMethod(this.wireValue);
  @override
  final String wireValue;

  static JoinedMethod fromValue(String value) {
    for (final item in JoinedMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JoinedMethod value: $value');
  }
}
