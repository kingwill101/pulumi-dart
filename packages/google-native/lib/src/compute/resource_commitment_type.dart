/// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
enum ResourceCommitmentType {
  accelerator("ACCELERATOR"),
  localSsd("LOCAL_SSD"),
  memory("MEMORY"),
  unspecified("UNSPECIFIED"),
  vcpu("VCPU");

  const ResourceCommitmentType(this.value);
  final String value;

  static ResourceCommitmentType fromValue(String value) {
    for (final item in ResourceCommitmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceCommitmentType value: $value');
  }
}
