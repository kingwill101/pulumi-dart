import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum HypervisorType implements pulumi.PulumiEnum<String> {
  ovm("ovm"),
  xen("xen");

  const HypervisorType(this.wireValue);
  @override
  final String wireValue;

  static HypervisorType fromValue(String value) {
    for (final item in HypervisorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HypervisorType value: $value');
  }
}
