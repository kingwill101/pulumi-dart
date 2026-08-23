/// Strategy for the AWS `Name` tag applied to the subnets generated for each availability zone. Does not affect Pulumi logical resource names or URNs.
enum SubnetNameTagStrategy {
  valueLegacy("Legacy"),
  valueAvailabilityZone("AvailabilityZone");

  const SubnetNameTagStrategy(this.wireValue);
  final String wireValue;

  static SubnetNameTagStrategy fromValue(String value) {
    for (final item in SubnetNameTagStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetNameTagStrategy value: $value');
  }
}
