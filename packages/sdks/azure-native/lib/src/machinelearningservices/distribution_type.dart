/// [Required] Specifies the type of distribution framework.
enum DistributionType {
  pyTorch("PyTorch"),
  tensorFlow("TensorFlow"),
  mpi("Mpi");

  const DistributionType(this.wireValue);
  final String wireValue;

  static DistributionType fromValue(String value) {
    for (final item in DistributionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionType value: $value');
  }
}
