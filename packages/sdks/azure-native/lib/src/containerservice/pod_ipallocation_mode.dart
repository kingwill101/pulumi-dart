import 'package:pulumi/pulumi.dart' as pulumi;

/// Pod IP Allocation Mode. The IP allocation mode for pods in the agent pool. Must be used with podSubnetId. The default is 'DynamicIndividual'.
enum PodIPAllocationMode implements pulumi.PulumiEnum<String> {
  valueDynamicIndividual("DynamicIndividual"),
  valueStaticBlock("StaticBlock");

  const PodIPAllocationMode(this.wireValue);
  @override
  final String wireValue;

  static PodIPAllocationMode fromValue(String value) {
    for (final item in PodIPAllocationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PodIPAllocationMode value: $value');
  }
}
