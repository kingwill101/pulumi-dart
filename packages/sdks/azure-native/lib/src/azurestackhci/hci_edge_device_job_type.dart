/// Job Type to support polymorphic resource.
enum HciEdgeDeviceJobType {
  collectLog("CollectLog"),
  remoteSupport("RemoteSupport");

  const HciEdgeDeviceJobType(this.wireValue);
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

