import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Offer Code.
enum AzureOfferCode implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  msazr0003P("MSAZR0003P"),
  msazr0044P("MSAZR0044P"),
  msazr0059P("MSAZR0059P"),
  msazr0060P("MSAZR0060P"),
  msazr0062P("MSAZR0062P"),
  msazr0063P("MSAZR0063P"),
  msazr0064P("MSAZR0064P"),
  msazr0029P("MSAZR0029P"),
  msazr0022P("MSAZR0022P"),
  msazr0023P("MSAZR0023P"),
  msazr0148P("MSAZR0148P"),
  msazr0025P("MSAZR0025P"),
  msazr0036P("MSAZR0036P"),
  msazr0120P("MSAZR0120P"),
  msazr0121P("MSAZR0121P"),
  msazr0122P("MSAZR0122P"),
  msazr0123P("MSAZR0123P"),
  msazr0124P("MSAZR0124P"),
  msazr0125P("MSAZR0125P"),
  msazr0126P("MSAZR0126P"),
  msazr0127P("MSAZR0127P"),
  msazr0128P("MSAZR0128P"),
  msazr0129P("MSAZR0129P"),
  msazr0130P("MSAZR0130P"),
  msazr0111P("MSAZR0111P"),
  msazr0144P("MSAZR0144P"),
  msazr0149P("MSAZR0149P"),
  msmcazr0044P("MSMCAZR0044P"),
  msmcazr0059P("MSMCAZR0059P"),
  msmcazr0060P("MSMCAZR0060P"),
  msmcazr0063P("MSMCAZR0063P"),
  msmcazr0120P("MSMCAZR0120P"),
  msmcazr0121P("MSMCAZR0121P"),
  msmcazr0125P("MSMCAZR0125P"),
  msmcazr0128P("MSMCAZR0128P"),
  msazrde0003P("MSAZRDE0003P"),
  msazrde0044P("MSAZRDE0044P"),
  msazrusgov0003P("MSAZRUSGOV0003P"),
  eA("EA"),
  msazr0243P("MSAZR0243P"),
  savingsPlan1Year("SavingsPlan1Year"),
  savingsPlan3Year("SavingsPlan3Year");

  const AzureOfferCode(this.wireValue);
  @override
  final String wireValue;

  static AzureOfferCode fromValue(String value) {
    for (final item in AzureOfferCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureOfferCode value: $value');
  }
}
