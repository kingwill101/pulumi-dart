import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the azure SQL compute tier.
enum ComputeTier implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  automatic("Automatic"),
  provisioned("Provisioned"),
  serverless("Serverless");

  const ComputeTier(this.wireValue);
  @override
  final String wireValue;

  static ComputeTier fromValue(String value) {
    for (final item in ComputeTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeTier value: $value');
  }
}
