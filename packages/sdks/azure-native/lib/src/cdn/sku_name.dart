/// Name of the pricing tier.
enum SkuName {
  standardVerizon("Standard_Verizon"),
  premiumVerizon("Premium_Verizon"),
  customVerizon("Custom_Verizon"),
  standardAkamai("Standard_Akamai"),
  standardChinaCdn("Standard_ChinaCdn"),
  standardMicrosoft("Standard_Microsoft"),
  standardAzureFrontDoor("Standard_AzureFrontDoor"),
  premiumAzureFrontDoor("Premium_AzureFrontDoor"),
  standard955BandWidthChinaCdn("Standard_955BandWidth_ChinaCdn"),
  standardAvgBandWidthChinaCdn("Standard_AvgBandWidth_ChinaCdn"),
  standardPlusChinaCdn("StandardPlus_ChinaCdn"),
  standardPlus955BandWidthChinaCdn("StandardPlus_955BandWidth_ChinaCdn"),
  standardPlusAvgBandWidthChinaCdn("StandardPlus_AvgBandWidth_ChinaCdn");

  const SkuName(this.wireValue);
  final String wireValue;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}

