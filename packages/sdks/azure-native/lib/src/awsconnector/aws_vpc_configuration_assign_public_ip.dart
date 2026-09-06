import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether the task's elastic network interface receives a public IP address. The default value is ``DISABLED``.
enum AwsVpcConfigurationAssignPublicIp implements pulumi.PulumiEnum<String> {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const AwsVpcConfigurationAssignPublicIp(this.wireValue);
  @override
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
