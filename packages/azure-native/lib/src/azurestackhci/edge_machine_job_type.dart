/// Job Type to support polymorphic resource.
enum EdgeMachineJobType {
  collectLog("CollectLog"),
  remoteSupport("RemoteSupport"),
  provisionOs("ProvisionOs"),
  downloadOs("DownloadOs");

  const EdgeMachineJobType(this.value);
  final String value;

  static EdgeMachineJobType fromValue(String value) {
    for (final item in EdgeMachineJobType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeMachineJobType value: $value');
  }
}

