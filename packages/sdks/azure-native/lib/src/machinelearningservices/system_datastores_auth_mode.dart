/// The auth mode used for accessing the system datastores of the workspace.
enum SystemDatastoresAuthMode {
  valueAccessKey("AccessKey"),
  valueIdentity("Identity"),
  valueUserDelegationSAS("UserDelegationSAS");

  const SystemDatastoresAuthMode(this.wireValue);
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
