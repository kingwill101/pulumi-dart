import 'package:pulumi/pulumi.dart' as pulumi;

/// Job Type to support polymorphic resource.
enum EdgeMachineJobType implements pulumi.PulumiEnum<String> {
  collectLog("CollectLog"),
  remoteSupport("RemoteSupport"),
  provisionOs("ProvisionOs"),
  downloadOs("DownloadOs");

  const EdgeMachineJobType(this.wireValue);
  @override
  final String wireValue;

  static EdgeMachineJobType fromValue(String value) {
    for (final item in EdgeMachineJobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeMachineJobType value: $value');
  }
}
