/// [Required] Specifies the type of distribution framework.
enum DistributionType {
  valuePyTorch("PyTorch"),
  valueTensorFlow("TensorFlow"),
  valueMpi("Mpi");

  const DistributionType(this.value);
  final String value;

  static DistributionType fromValue(String value) {
    for (final item in DistributionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionType value: $value');
  }
}

