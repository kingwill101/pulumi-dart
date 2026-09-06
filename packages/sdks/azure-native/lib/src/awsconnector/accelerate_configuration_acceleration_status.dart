import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the transfer acceleration status of the bucket.
enum AccelerateConfigurationAccelerationStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  suspended("Suspended");

  const AccelerateConfigurationAccelerationStatus(this.wireValue);
  @override
  final String wireValue;

  static AccelerateConfigurationAccelerationStatus fromValue(String value) {
    for (final item in AccelerateConfigurationAccelerationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccelerateConfigurationAccelerationStatus value: $value');
  }
}
