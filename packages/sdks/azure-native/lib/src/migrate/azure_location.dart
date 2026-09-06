import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the Azure Location or Azure region where to which the machines
/// will be migrated.
enum AzureLocation implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  eastAsia("EastAsia"),
  southeastAsia("SoutheastAsia"),
  australiaEast("AustraliaEast"),
  australiaSoutheast("AustraliaSoutheast"),
  brazilSouth("BrazilSouth"),
  canadaCentral("CanadaCentral"),
  canadaEast("CanadaEast"),
  westEurope("WestEurope"),
  northEurope("NorthEurope"),
  centralIndia("CentralIndia"),
  southIndia("SouthIndia"),
  westIndia("WestIndia"),
  japanEast("JapanEast"),
  japanWest("JapanWest"),
  koreaCentral("KoreaCentral"),
  koreaSouth("KoreaSouth"),
  ukWest("UkWest"),
  ukSouth("UkSouth"),
  northCentralUs("NorthCentralUs"),
  eastUs("EastUs"),
  westUs2("WestUs2"),
  southCentralUs("SouthCentralUs"),
  centralUs("CentralUs"),
  eastUs2("EastUs2"),
  westUs("WestUs"),
  westCentralUs("WestCentralUs"),
  germanyCentral("GermanyCentral"),
  germanyNortheast("GermanyNortheast"),
  chinaNorth("ChinaNorth"),
  chinaEast("ChinaEast"),
  uSGovArizona("USGovArizona"),
  uSGovTexas("USGovTexas"),
  uSGovIowa("USGovIowa"),
  uSGovVirginia("USGovVirginia"),
  uSDoDCentral("USDoDCentral"),
  uSDoDEast("USDoDEast"),
  franceCentral("FranceCentral"),
  australiaCentral("AustraliaCentral"),
  southAfricaNorth("SouthAfricaNorth"),
  franceSouth("FranceSouth"),
  australiaCentral2("AustraliaCentral2"),
  southAfricaWest("SouthAfricaWest"),
  germanyNorth("GermanyNorth"),
  germanyWestCentral("GermanyWestCentral"),
  norwayEast("NorwayEast"),
  norwayWest("NorwayWest"),
  chinaEast2("ChinaEast2"),
  chinaNorth2("ChinaNorth2"),
  switzerlandNorth("SwitzerlandNorth"),
  switzerlandWest("SwitzerlandWest"),
  uAENorth("UAENorth"),
  uAECentral("UAECentral"),
  usNatEast("UsNatEast"),
  usNatWest("UsNatWest"),
  usSecEast("UsSecEast"),
  usSecCentral("UsSecCentral"),
  usSecWest("UsSecWest"),
  swedenCentral("SwedenCentral"),
  qatarCentral("QatarCentral"),
  jioIndiaWest("JioIndiaWest"),
  italyNorth("ItalyNorth"),
  polandCentral("PolandCentral"),
  israelCentral("IsraelCentral"),
  mexicoCentral("MexicoCentral"),
  newZealandNorth("NewZealandNorth"),
  spainCentral("SpainCentral");

  const AzureLocation(this.wireValue);
  @override
  final String wireValue;

  static AzureLocation fromValue(String value) {
    for (final item in AzureLocation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureLocation value: $value');
  }
}
