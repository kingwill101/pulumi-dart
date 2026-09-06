import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the Azure offer code.
enum AzureOffer implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  msazr0003P("MSAZR0003P"),
  msazr0023P("MSAZR0023P"),
  msmcazr0044P("MSMCAZR0044P"),
  msmcazr0059P("MSMCAZR0059P"),
  msmcazr0060P("MSMCAZR0060P"),
  msmcazr0063P("MSMCAZR0063P"),
  msazrusgov0003P("MSAZRUSGOV0003P"),
  eA("EA"),
  savingsPlan1Year("SavingsPlan1Year"),
  savingsPlan3Year("SavingsPlan3Year");

  const AzureOffer(this.wireValue);
  @override
  final String wireValue;

  static AzureOffer fromValue(String value) {
    for (final item in AzureOffer.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureOffer value: $value');
  }
}
