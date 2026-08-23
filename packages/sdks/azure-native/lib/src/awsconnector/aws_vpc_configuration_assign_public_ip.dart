/// Whether the task's elastic network interface receives a public IP address. The default value is ``DISABLED``.
enum AwsVpcConfigurationAssignPublicIp {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const AwsVpcConfigurationAssignPublicIp(this.wireValue);
  final String wireValue;

  static AwsVpcConfigurationAssignPublicIp fromValue(String value) {
    for (final item in AwsVpcConfigurationAssignPublicIp.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AwsVpcConfigurationAssignPublicIp value: $value');
  }
}
