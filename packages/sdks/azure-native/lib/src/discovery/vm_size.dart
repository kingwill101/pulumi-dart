/// The size of the underlying Azure VM.
enum VmSize {
  standardNC24adsA100V4("Standard_NC24ads_A100_v4"),
  standardNC48adsA100V4("Standard_NC48ads_A100_v4"),
  standardNC96adsA100V4("Standard_NC96ads_A100_v4"),
  standardNC4asT4V3("Standard_NC4as_T4_v3"),
  standardNC8asT4V3("Standard_NC8as_T4_v3"),
  standardNC16asT4V3("Standard_NC16as_T4_v3"),
  standardNC64asT4V3("Standard_NC64as_T4_v3"),
  standardNV6adsA10V5("Standard_NV6ads_A10_v5"),
  standardNV12adsA10V5("Standard_NV12ads_A10_v5"),
  standardNV24adsA10V5("Standard_NV24ads_A10_v5"),
  standardNV36adsA10V5("Standard_NV36ads_A10_v5"),
  standardNV36admsA10V5("Standard_NV36adms_A10_v5"),
  standardNV72adsA10V5("Standard_NV72ads_A10_v5"),
  standardND40rsV2("Standard_ND40rs_v2");

  const VmSize(this.wireValue);
  final String wireValue;

  static VmSize fromValue(String value) {
    for (final item in VmSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmSize value: $value');
  }
}
