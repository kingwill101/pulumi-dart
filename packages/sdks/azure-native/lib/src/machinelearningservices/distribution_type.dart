import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of distribution framework.
enum DistributionType implements pulumi.PulumiEnum<String> {
  pyTorch("PyTorch"),
  tensorFlow("TensorFlow"),
  mpi("Mpi");

  const DistributionType(this.wireValue);
  @override
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
