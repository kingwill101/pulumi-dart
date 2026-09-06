import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines whether to use encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be turned on if Amazon EFS IAM authorization is used. If this parameter is omitted, the default value of ``DISABLED`` is used. For more information, see [Encrypting data in transit](https://docs.aws.amazon.com/efs/latest/ug/encryption-in-transit.html) in the *Amazon Elastic File System User Guide*.
enum EFSVolumeConfigurationTransitEncryption implements pulumi.PulumiEnum<String> {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const EFSVolumeConfigurationTransitEncryption(this.wireValue);
  @override
  final String wireValue;

  static EFSVolumeConfigurationTransitEncryption fromValue(String value) {
    for (final item in EFSVolumeConfigurationTransitEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EFSVolumeConfigurationTransitEncryption value: $value');
  }
}
