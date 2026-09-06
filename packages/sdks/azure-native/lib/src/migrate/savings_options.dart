import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the savings options.
enum SavingsOptions implements pulumi.PulumiEnum<String> {
  none("None"),
  rI1Year("RI1Year"),
  rI3Year("RI3Year"),
  savingsPlan1Year("SavingsPlan1Year"),
  savingsPlan3Year("SavingsPlan3Year"),
  customAzureOfferCode("CustomAzureOfferCode");

  const SavingsOptions(this.wireValue);
  @override
  final String wireValue;

  static SavingsOptions fromValue(String value) {
    for (final item in SavingsOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SavingsOptions value: $value');
  }
}
