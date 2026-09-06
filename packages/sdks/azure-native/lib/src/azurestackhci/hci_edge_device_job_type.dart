import 'package:pulumi/pulumi.dart' as pulumi;

/// Job Type to support polymorphic resource.
enum HciEdgeDeviceJobType implements pulumi.PulumiEnum<String> {
  collectLog("CollectLog"),
  remoteSupport("RemoteSupport");

  const HciEdgeDeviceJobType(this.wireValue);
  @override
  final String wireValue;

  static HciEdgeDeviceJobType fromValue(String value) {
    for (final item in HciEdgeDeviceJobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HciEdgeDeviceJobType value: $value');
  }
}
