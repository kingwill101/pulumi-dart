/// Gets or sets user preference indicating intent of multi-subnet configuration.
enum MultiSubnetIntent {
  none("None"),
  highAvailability("HighAvailability"),
  disasterRecovery("DisasterRecovery");

  const MultiSubnetIntent(this.wireValue);
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
