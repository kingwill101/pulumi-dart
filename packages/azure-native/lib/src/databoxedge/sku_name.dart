/// SKU name.
enum SkuName {
  valueGateway("Gateway"),
  valueEdge("Edge"),
  valueTEA1Node("TEA_1Node"),
  valueTEA1NodeUPS("TEA_1Node_UPS"),
  valueTEA1NodeHeater("TEA_1Node_Heater"),
  valueTEA1NodeUPSHeater("TEA_1Node_UPS_Heater"),
  valueTEA4NodeHeater("TEA_4Node_Heater"),
  valueTEA4NodeUPSHeater("TEA_4Node_UPS_Heater"),
  valueTMA("TMA"),
  valueTDC("TDC"),
  valueTCASmall("TCA_Small"),
  valueGPU("GPU"),
  valueTCALarge("TCA_Large"),
  valueEdgePBase("EdgeP_Base"),
  valueEdgePHigh("EdgeP_High"),
  valueEdgePRBase("EdgePR_Base"),
  valueEdgePRBaseUPS("EdgePR_Base_UPS"),
  valueEP2641VPUW("EP2_64_1VPU_W"),
  valueEP21281T4Mx1W("EP2_128_1T4_Mx1_W"),
  valueEP22562T4W("EP2_256_2T4_W"),
  valueEdgeMRMini("EdgeMR_Mini"),
  valueRCASmall("RCA_Small"),
  valueRCALarge("RCA_Large"),
  valueRDC("RDC"),
  valueManagement("Management"),
  valueEP264Mx1W("EP2_64_Mx1_W"),
  valueEP2128GPU1Mx1W("EP2_128_GPU1_Mx1_W"),
  valueEP2256GPU2Mx1("EP2_256_GPU2_Mx1"),
  valueEdgeMRTCP("EdgeMR_TCP");

  const SkuName(this.value);
  final String value;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}

