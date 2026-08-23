/// Job Type to support polymorphic resource.
enum EdgeMachineJobType {
  collectLog("CollectLog"),
  remoteSupport("RemoteSupport"),
  provisionOs("ProvisionOs"),
  downloadOs("DownloadOs");

  const EdgeMachineJobType(this.wireValue);
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
