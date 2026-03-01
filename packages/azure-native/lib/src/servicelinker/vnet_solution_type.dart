/// Type of VNet solution.
enum VNetSolutionType {
  valueServiceEndpoint("serviceEndpoint"),
  valuePrivateLink("privateLink");

  const VNetSolutionType(this.value);
  final String value;

  static VNetSolutionType fromValue(String value) {
    for (final item in VNetSolutionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VNetSolutionType value: $value');
  }
}

