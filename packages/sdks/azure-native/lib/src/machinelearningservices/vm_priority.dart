import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Machine priority
enum VmPriority implements pulumi.PulumiEnum<String> {
  dedicated("Dedicated"),
  lowPriority("LowPriority");

  const VmPriority(this.wireValue);
  @override
  final String wireValue;

  static VmPriority fromValue(String value) {
    for (final item in VmPriority.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmPriority value: $value');
  }
}
