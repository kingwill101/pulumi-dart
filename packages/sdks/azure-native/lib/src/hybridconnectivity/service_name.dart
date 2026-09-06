import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the service. It is an optional property, if not provided, service configuration tokens issue code would be by passed.
enum ServiceName implements pulumi.PulumiEnum<String> {
  sSH("SSH"),
  wAC("WAC");

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
