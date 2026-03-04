/// Determines the placement of emptyDir volumes, container runtime data root, and Kubelet ephemeral storage.
enum KubeletDiskType {
  valueOS("OS"),
  valueTemporary("Temporary");

  const KubeletDiskType(this.wireValue);
  final String wireValue;

  static KubeletDiskType fromValue(String value) {
    for (final item in KubeletDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KubeletDiskType value: $value');
  }
}
