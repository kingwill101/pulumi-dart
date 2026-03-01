/// Whether the task's elastic network interface receives a public IP address. The default value is ``DISABLED``.
enum AwsVpcConfigurationAssignPublicIp {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const AwsVpcConfigurationAssignPublicIp(this.value);
  final String value;

  static AwsVpcConfigurationAssignPublicIp fromValue(String value) {
    for (final item in AwsVpcConfigurationAssignPublicIp.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AwsVpcConfigurationAssignPublicIp value: $value');
  }
}

