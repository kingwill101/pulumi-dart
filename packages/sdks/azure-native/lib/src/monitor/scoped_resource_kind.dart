import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of scoped Azure monitor resource.
enum ScopedResourceKind implements pulumi.PulumiEnum<String> {
  resource("Resource"),
  metrics("Metrics");

  const ScopedResourceKind(this.wireValue);
  @override
  final String wireValue;

  static ScopedResourceKind fromValue(String value) {
    for (final item in ScopedResourceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopedResourceKind value: $value');
  }
}
