import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the service.
enum ServiceName implements pulumi.PulumiEnum<String> {
  valueWAC("WAC");

  const ServiceName(this.wireValue);
  @override
  final String wireValue;

  static ServiceName fromValue(String value) {
    for (final item in ServiceName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceName value: $value');
  }
}
