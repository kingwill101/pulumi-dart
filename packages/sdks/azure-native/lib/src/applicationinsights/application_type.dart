import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of application being monitored.
enum ApplicationType implements pulumi.PulumiEnum<String> {
  web("web"),
  other("other");

  const ApplicationType(this.wireValue);
  @override
  final String wireValue;

  static ApplicationType fromValue(String value) {
    for (final item in ApplicationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationType value: $value');
  }
}
