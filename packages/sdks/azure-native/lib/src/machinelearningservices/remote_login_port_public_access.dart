/// State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on all nodes of the cluster. Enabled - Indicates that the public ssh port is open on all nodes of the cluster. NotSpecified - Indicates that the public ssh port is closed on all nodes of the cluster if VNet is defined, else is open all public nodes. It can be default only during cluster creation time, after creation it will be either enabled or disabled.
enum RemoteLoginPortPublicAccess {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueNotSpecified("NotSpecified");

  const RemoteLoginPortPublicAccess(this.wireValue);
  final String wireValue;

  static RemoteLoginPortPublicAccess fromValue(String value) {
    for (final item in RemoteLoginPortPublicAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteLoginPortPublicAccess value: $value');
  }
}
