import 'package:pulumi/pulumi.dart' as pulumi;

enum KnownWindowsEventLogDataSourceStreams implements pulumi.PulumiEnum<String> {
  valueMicrosoftWindowsEvent("Microsoft-WindowsEvent"),
  valueMicrosoftEvent("Microsoft-Event");

  const KnownWindowsEventLogDataSourceStreams(this.wireValue);
  @override
  final String wireValue;

  static KnownWindowsEventLogDataSourceStreams fromValue(String value) {
    for (final item in KnownWindowsEventLogDataSourceStreams.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownWindowsEventLogDataSourceStreams value: $value');
  }
}
