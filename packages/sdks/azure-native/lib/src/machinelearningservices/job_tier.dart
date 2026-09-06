import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum to determine the job tier.
enum JobTier implements pulumi.PulumiEnum<String> {
  null_("Null"),
  spot("Spot"),
  basic("Basic"),
  standard("Standard"),
  premium("Premium");

  const JobTier(this.wireValue);
  @override
  final String wireValue;

  static JobTier fromValue(String value) {
    for (final item in JobTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobTier value: $value');
  }
}
