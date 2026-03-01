/// Job Type to support polymorphic resource.
enum HciEdgeDeviceJobType {
  collectLog("CollectLog"),
  remoteSupport("RemoteSupport");

  const HciEdgeDeviceJobType(this.value);
  final String value;

  static HciEdgeDeviceJobType fromValue(String value) {
    for (final item in HciEdgeDeviceJobType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HciEdgeDeviceJobType value: $value');
  }
}

