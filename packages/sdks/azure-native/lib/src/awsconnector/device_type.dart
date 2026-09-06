import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum DeviceType implements pulumi.PulumiEnum<String> {
  ebs("ebs"),
  instanceStore("instance-store");

  const DeviceType(this.wireValue);
  @override
  final String wireValue;

  static DeviceType fromValue(String value) {
    for (final item in DeviceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceType value: $value');
  }
}
