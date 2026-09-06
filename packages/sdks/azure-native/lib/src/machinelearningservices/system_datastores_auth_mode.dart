import 'package:pulumi/pulumi.dart' as pulumi;

/// The auth mode used for accessing the system datastores of the workspace.
enum SystemDatastoresAuthMode implements pulumi.PulumiEnum<String> {
  accessKey("AccessKey"),
  identity("Identity"),
  userDelegationSAS("UserDelegationSAS");

  const SystemDatastoresAuthMode(this.wireValue);
  @override
  final String wireValue;

  static SystemDatastoresAuthMode fromValue(String value) {
    for (final item in SystemDatastoresAuthMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SystemDatastoresAuthMode value: $value');
  }
}
