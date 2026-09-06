import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the AWS account that you are acting from. By default, SELF is specified. For self-managed permissions, specify SELF; for service-managed permissions, if you are signed in to the organization's management account, specify SELF. If you are signed in to a delegated administrator account, specify DELEGATED_ADMIN.
enum CallAs implements pulumi.PulumiEnum<String> {
  dELEGATEDADMIN("DELEGATED_ADMIN"),
  sELF("SELF");

  const CallAs(this.wireValue);
  @override
  final String wireValue;

  static CallAs fromValue(String value) {
    for (final item in CallAs.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CallAs value: $value');
  }
}
