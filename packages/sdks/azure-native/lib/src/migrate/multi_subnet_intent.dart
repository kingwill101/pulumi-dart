import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets user preference indicating intent of multi-subnet configuration.
enum MultiSubnetIntent implements pulumi.PulumiEnum<String> {
  none("None"),
  highAvailability("HighAvailability"),
  disasterRecovery("DisasterRecovery");

  const MultiSubnetIntent(this.wireValue);
  @override
  final String wireValue;

  static MultiSubnetIntent fromValue(String value) {
    for (final item in MultiSubnetIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiSubnetIntent value: $value');
  }
}
