import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of scheduled query rule. The default is LogAlert.
enum Kind implements pulumi.PulumiEnum<String> {
  logAlert("LogAlert"),
  simpleLogAlert("SimpleLogAlert"),
  logToMetric("LogToMetric");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
