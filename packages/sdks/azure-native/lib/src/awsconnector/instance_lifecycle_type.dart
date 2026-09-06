import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum InstanceLifecycleType implements pulumi.PulumiEnum<String> {
  capacityBlock("capacity-block"),
  scheduled("scheduled"),
  spot("spot");

  const InstanceLifecycleType(this.wireValue);
  @override
  final String wireValue;

  static InstanceLifecycleType fromValue(String value) {
    for (final item in InstanceLifecycleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceLifecycleType value: $value');
  }
}
