import 'package:pulumi/pulumi.dart' as pulumi;

/// Instance type for the service.
enum ServiceSize implements pulumi.PulumiEnum<String> {
  valueCosmosD4s("Cosmos.D4s"),
  valueCosmosD8s("Cosmos.D8s"),
  valueCosmosD16s("Cosmos.D16s");

  const ServiceSize(this.wireValue);
  @override
  final String wireValue;

  static ServiceSize fromValue(String value) {
    for (final item in ServiceSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceSize value: $value');
  }
}
