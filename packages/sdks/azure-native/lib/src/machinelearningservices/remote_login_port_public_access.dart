import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on all nodes of the cluster. Enabled - Indicates that the public ssh port is open on all nodes of the cluster. NotSpecified - Indicates that the public ssh port is closed on all nodes of the cluster if VNet is defined, else is open all public nodes. It can be default only during cluster creation time, after creation it will be either enabled or disabled.
enum RemoteLoginPortPublicAccess implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled"),
  notSpecified("NotSpecified");

  const RemoteLoginPortPublicAccess(this.wireValue);
  @override
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
