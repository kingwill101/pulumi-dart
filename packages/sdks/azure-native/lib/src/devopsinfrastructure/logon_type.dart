import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines how the service should be run. By default, this will be set to Service.
enum LogonType implements pulumi.PulumiEnum<String> {
  service("Service"),
  interactive("Interactive");

  const LogonType(this.wireValue);
  @override
  final String wireValue;

  static LogonType fromValue(String value) {
    for (final item in LogonType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogonType value: $value');
  }
}
