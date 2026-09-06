import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU name.
enum AzureSkuName implements pulumi.PulumiEnum<String> {
  valueDevNoSLAStandardD11V2("Dev(No SLA)_Standard_D11_v2"),
  valueDevNoSLAStandardE2aV4("Dev(No SLA)_Standard_E2a_v4"),
  valueStandardD11V2("Standard_D11_v2"),
  valueStandardD12V2("Standard_D12_v2"),
  valueStandardD13V2("Standard_D13_v2"),
  valueStandardD14V2("Standard_D14_v2"),
  valueStandardD32dV4("Standard_D32d_v4"),
  valueStandardD16dV5("Standard_D16d_v5"),
  valueStandardD32dV5("Standard_D32d_v5"),
  valueStandardDS13V21TBPS("Standard_DS13_v2+1TB_PS"),
  valueStandardDS13V22TBPS("Standard_DS13_v2+2TB_PS"),
  valueStandardDS14V23TBPS("Standard_DS14_v2+3TB_PS"),
  valueStandardDS14V24TBPS("Standard_DS14_v2+4TB_PS"),
  valueStandardL4s("Standard_L4s"),
  valueStandardL8s("Standard_L8s"),
  valueStandardL16s("Standard_L16s"),
  valueStandardL8sV2("Standard_L8s_v2"),
  valueStandardL16sV2("Standard_L16s_v2"),
  valueStandardL8sV3("Standard_L8s_v3"),
  valueStandardL16sV3("Standard_L16s_v3"),
  valueStandardL32sV3("Standard_L32s_v3"),
  valueStandardL8asV3("Standard_L8as_v3"),
  valueStandardL16asV3("Standard_L16as_v3"),
  valueStandardL32asV3("Standard_L32as_v3"),
  valueStandardE64iV3("Standard_E64i_v3"),
  valueStandardE80idsV4("Standard_E80ids_v4"),
  valueStandardE2aV4("Standard_E2a_v4"),
  valueStandardE4aV4("Standard_E4a_v4"),
  valueStandardE8aV4("Standard_E8a_v4"),
  valueStandardE16aV4("Standard_E16a_v4"),
  valueStandardE8asV41TBPS("Standard_E8as_v4+1TB_PS"),
  valueStandardE8asV42TBPS("Standard_E8as_v4+2TB_PS"),
  valueStandardE16asV43TBPS("Standard_E16as_v4+3TB_PS"),
  valueStandardE16asV44TBPS("Standard_E16as_v4+4TB_PS"),
  valueStandardE8asV51TBPS("Standard_E8as_v5+1TB_PS"),
  valueStandardE8asV52TBPS("Standard_E8as_v5+2TB_PS"),
  valueStandardE16asV53TBPS("Standard_E16as_v5+3TB_PS"),
  valueStandardE16asV54TBPS("Standard_E16as_v5+4TB_PS"),
  valueStandardE2adsV5("Standard_E2ads_v5"),
  valueStandardE4adsV5("Standard_E4ads_v5"),
  valueStandardE8adsV5("Standard_E8ads_v5"),
  valueStandardE16adsV5("Standard_E16ads_v5"),
  valueStandardEC8asV51TBPS("Standard_EC8as_v5+1TB_PS"),
  valueStandardEC8asV52TBPS("Standard_EC8as_v5+2TB_PS"),
  valueStandardEC16asV53TBPS("Standard_EC16as_v5+3TB_PS"),
  valueStandardEC16asV54TBPS("Standard_EC16as_v5+4TB_PS"),
  valueStandardEC8adsV5("Standard_EC8ads_v5"),
  valueStandardEC16adsV5("Standard_EC16ads_v5"),
  valueStandardE8sV41TBPS("Standard_E8s_v4+1TB_PS"),
  valueStandardE8sV42TBPS("Standard_E8s_v4+2TB_PS"),
  valueStandardE16sV43TBPS("Standard_E16s_v4+3TB_PS"),
  valueStandardE16sV44TBPS("Standard_E16s_v4+4TB_PS"),
  valueStandardE8sV51TBPS("Standard_E8s_v5+1TB_PS"),
  valueStandardE8sV52TBPS("Standard_E8s_v5+2TB_PS"),
  valueStandardE16sV53TBPS("Standard_E16s_v5+3TB_PS"),
  valueStandardE16sV54TBPS("Standard_E16s_v5+4TB_PS"),
  valueStandardE2dV4("Standard_E2d_v4"),
  valueStandardE4dV4("Standard_E4d_v4"),
  valueStandardE8dV4("Standard_E8d_v4"),
  valueStandardE16dV4("Standard_E16d_v4"),
  valueStandardE2dV5("Standard_E2d_v5"),
  valueStandardE4dV5("Standard_E4d_v5"),
  valueStandardE8dV5("Standard_E8d_v5"),
  valueStandardE16dV5("Standard_E16d_v5");

  const AzureSkuName(this.wireValue);
  @override
  final String wireValue;

  static AzureSkuName fromValue(String value) {
    for (final item in AzureSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSkuName value: $value');
  }
}
