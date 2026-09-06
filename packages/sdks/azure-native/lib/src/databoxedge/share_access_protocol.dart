import 'package:pulumi/pulumi.dart' as pulumi;

/// Access protocol to be used by the share.
enum ShareAccessProtocol implements pulumi.PulumiEnum<String> {
  valueSMB("SMB"),
  valueNFS("NFS");

  const ShareAccessProtocol(this.wireValue);
  @override
  final String wireValue;

  static ShareAccessProtocol fromValue(String value) {
    for (final item in ShareAccessProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareAccessProtocol value: $value');
  }
}
