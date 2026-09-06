import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource Origin.
enum ResourceOrigin implements pulumi.PulumiEnum<String> {
  azure("Azure"),
  aWS("AWS"),
  gCP("GCP");

  const ResourceOrigin(this.wireValue);
  @override
  final String wireValue;

  static ResourceOrigin fromValue(String value) {
    for (final item in ResourceOrigin.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceOrigin value: $value');
  }
}
