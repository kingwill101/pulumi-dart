/// A type of subnet within a VPC.
enum SubnetType {
  valuePublic("Public"),
  valuePrivate("Private"),
  valueIsolated("Isolated"),
  valueUnused("Unused");

  const SubnetType(this.wireValue);
  final String wireValue;

  static SubnetType fromValue(String value) {
    for (final item in SubnetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetType value: $value');
  }
}

