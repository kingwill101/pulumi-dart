import 'package:pulumi/pulumi.dart' as pulumi;

enum LifecycleTagStatus implements pulumi.PulumiEnum<String> {
  any("any"),
  untagged("untagged"),
  tagged("tagged");

  const LifecycleTagStatus(this.wireValue);
  @override
  final String wireValue;

  static LifecycleTagStatus fromValue(String value) {
    for (final item in LifecycleTagStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecycleTagStatus value: $value');
  }
}
