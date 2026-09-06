import 'package:pulumi/pulumi.dart' as pulumi;

/// Current lifecycle stage of the API.
enum LifecycleStage implements pulumi.PulumiEnum<String> {
  design("design"),
  development("development"),
  testing("testing"),
  preview("preview"),
  production("production"),
  deprecated("deprecated"),
  retired("retired");

  const LifecycleStage(this.wireValue);
  @override
  final String wireValue;

  static LifecycleStage fromValue(String value) {
    for (final item in LifecycleStage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecycleStage value: $value');
  }
}
