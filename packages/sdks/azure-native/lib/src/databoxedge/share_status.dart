import 'package:pulumi/pulumi.dart' as pulumi;

/// Current status of the share.
enum ShareStatus implements pulumi.PulumiEnum<String> {
  valueOffline("Offline"),
  valueUnknown("Unknown"),
  valueOK("OK"),
  valueUpdating("Updating"),
  valueNeedsAttention("NeedsAttention");

  const ShareStatus(this.wireValue);
  @override
  final String wireValue;

  static ShareStatus fromValue(String value) {
    for (final item in ShareStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareStatus value: $value');
  }
}
