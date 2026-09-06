import 'package:pulumi/pulumi.dart' as pulumi;

/// Addon type.
enum AddonType implements pulumi.PulumiEnum<String> {
  valueIotEdge("IotEdge"),
  valueArcForKubernetes("ArcForKubernetes");

  const AddonType(this.wireValue);
  @override
  final String wireValue;

  static AddonType fromValue(String value) {
    for (final item in AddonType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddonType value: $value');
  }
}
