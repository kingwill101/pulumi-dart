/// The auth mode used for accessing the system datastores of the workspace.
enum SystemDatastoresAuthMode {
  valueAccessKey("AccessKey"),
  valueIdentity("Identity"),
  valueUserDelegationSAS("UserDelegationSAS");

  const SystemDatastoresAuthMode(this.value);
  final String value;

  static SystemDatastoresAuthMode fromValue(String value) {
    for (final item in SystemDatastoresAuthMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SystemDatastoresAuthMode value: $value');
  }
}

