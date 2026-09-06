import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of this capability host.
enum CapabilityHostKind implements pulumi.PulumiEnum<String> {
  valueAgents("Agents");

  const CapabilityHostKind(this.wireValue);
  @override
  final String wireValue;

  static CapabilityHostKind fromValue(String value) {
    for (final item in CapabilityHostKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapabilityHostKind value: $value');
  }
}
