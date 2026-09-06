import 'package:pulumi/pulumi.dart' as pulumi;

/// The write behavior for the operation.
enum DynamicsSinkWriteBehavior implements pulumi.PulumiEnum<String> {
  upsert("Upsert");

  const DynamicsSinkWriteBehavior(this.wireValue);
  @override
  final String wireValue;

  static DynamicsSinkWriteBehavior fromValue(String value) {
    for (final item in DynamicsSinkWriteBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicsSinkWriteBehavior value: $value');
  }
}
