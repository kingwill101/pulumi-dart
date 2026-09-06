import 'package:pulumi/pulumi.dart' as pulumi;

/// LogType enum
enum LogType implements pulumi.PulumiEnum<String> {
  api("api"),
  audit("audit"),
  authenticator("authenticator"),
  controllerManager("controllerManager"),
  scheduler("scheduler");

  const LogType(this.wireValue);
  @override
  final String wireValue;

  static LogType fromValue(String value) {
    for (final item in LogType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogType value: $value');
  }
}
