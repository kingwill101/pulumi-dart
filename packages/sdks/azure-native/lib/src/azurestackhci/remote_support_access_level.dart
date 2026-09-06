import 'package:pulumi/pulumi.dart' as pulumi;

/// Remote support access level.
enum RemoteSupportAccessLevel implements pulumi.PulumiEnum<String> {
  none("None"),
  diagnostics("Diagnostics"),
  diagnosticsAndRepair("DiagnosticsAndRepair");

  const RemoteSupportAccessLevel(this.wireValue);
  @override
  final String wireValue;

  static RemoteSupportAccessLevel fromValue(String value) {
    for (final item in RemoteSupportAccessLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteSupportAccessLevel value: $value');
  }
}
