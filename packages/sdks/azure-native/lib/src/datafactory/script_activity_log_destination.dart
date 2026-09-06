import 'package:pulumi/pulumi.dart' as pulumi;

/// The destination of logs. Type: string.
enum ScriptActivityLogDestination implements pulumi.PulumiEnum<String> {
  activityOutput("ActivityOutput"),
  externalStore("ExternalStore");

  const ScriptActivityLogDestination(this.wireValue);
  @override
  final String wireValue;

  static ScriptActivityLogDestination fromValue(String value) {
    for (final item in ScriptActivityLogDestination.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptActivityLogDestination value: $value');
  }
}
