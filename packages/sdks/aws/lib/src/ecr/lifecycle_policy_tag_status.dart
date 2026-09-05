import 'package:pulumi/pulumi.dart' as pulumi;

/// The tag status of the image.
enum LifecyclePolicyTagStatus implements pulumi.PulumiEnum<String> {
  tagged("tagged"),
  untagged("untagged"),
  any("any");

  const LifecyclePolicyTagStatus(this.wireValue);
  @override
  final String wireValue;

  static LifecyclePolicyTagStatus fromValue(String value) {
    for (final item in LifecyclePolicyTagStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecyclePolicyTagStatus value: $value');
  }
}
