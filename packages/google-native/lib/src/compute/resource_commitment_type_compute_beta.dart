/// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
enum ResourceCommitmentTypeComputeBeta {
  accelerator("ACCELERATOR"),
  localSsd("LOCAL_SSD"),
  memory("MEMORY"),
  unspecified("UNSPECIFIED"),
  vcpu("VCPU");

  const ResourceCommitmentTypeComputeBeta(this.value);
  final String value;

  static ResourceCommitmentTypeComputeBeta fromValue(String value) {
    for (final item in ResourceCommitmentTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ResourceCommitmentTypeComputeBeta value: $value',
    );
  }
}
