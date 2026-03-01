/// The type of EKS optimized Operating System to use for node groups.
///
/// See for more details:
/// https://docs.aws.amazon.com/eks/latest/userguide/eks-optimized-amis.html
enum OperatingSystem {
  aL2("AL2"),
  aL2023("AL2023"),
  bottlerocket("Bottlerocket"),
  rECOMMENDED("AL2023");

  const OperatingSystem(this.value);
  final String value;

  static OperatingSystem fromValue(String value) {
    for (final item in OperatingSystem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystem value: $value');
  }
}

