import 'package:pulumi/pulumi.dart' as pulumi;

/// A type of subnet within a VPC.
enum SubnetType implements pulumi.PulumiEnum<String> {
  valuePublic("Public"),
  valuePrivate("Private"),
  valueIsolated("Isolated"),
  valueUnused("Unused");

  const SubnetType(this.wireValue);
  @override
  final String wireValue;

  static SubnetType fromValue(String value) {
    for (final item in SubnetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetType value: $value');
  }
}
