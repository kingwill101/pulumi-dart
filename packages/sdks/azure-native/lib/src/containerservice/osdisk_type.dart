import 'package:pulumi/pulumi.dart' as pulumi;

/// The OS disk type to be used for machines in the agent pool. The default is 'Ephemeral' if the VM supports it and has a cache disk larger than the requested OSDiskSizeGB. Otherwise, defaults to 'Managed'. May not be changed after creation. For more information see [Ephemeral OS](https://docs.microsoft.com/azure/aks/cluster-configuration#ephemeral-os).
enum OSDiskType implements pulumi.PulumiEnum<String> {
  valueManaged("Managed"),
  valueEphemeral("Ephemeral");

  const OSDiskType(this.wireValue);
  @override
  final String wireValue;

  static OSDiskType fromValue(String value) {
    for (final item in OSDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSDiskType value: $value');
  }
}
