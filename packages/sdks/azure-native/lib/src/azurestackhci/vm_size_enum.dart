/// Enum of VM Sizes
enum VmSizeEnum {
  default_("Default"),
  standardA2V2("Standard_A2_v2"),
  standardA4V2("Standard_A4_v2"),
  standardD2sV3("Standard_D2s_v3"),
  standardD4sV3("Standard_D4s_v3"),
  standardD8sV3("Standard_D8s_v3"),
  standardD16sV3("Standard_D16s_v3"),
  standardD32sV3("Standard_D32s_v3"),
  standardDS2V2("Standard_DS2_v2"),
  standardDS3V2("Standard_DS3_v2"),
  standardDS4V2("Standard_DS4_v2"),
  standardDS5V2("Standard_DS5_v2"),
  standardDS13V2("Standard_DS13_v2"),
  standardK8SV1("Standard_K8S_v1"),
  standardK8S2V1("Standard_K8S2_v1"),
  standardK8S3V1("Standard_K8S3_v1"),
  standardK8S4V1("Standard_K8S4_v1"),
  standardNK6("Standard_NK6"),
  standardNK12("Standard_NK12"),
  standardNV6("Standard_NV6"),
  standardNV12("Standard_NV12"),
  standardK8S5V1("Standard_K8S5_v1"),
  custom("Custom");

  const VmSizeEnum(this.wireValue);
  final String wireValue;

  static VmSizeEnum fromValue(String value) {
    for (final item in VmSizeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmSizeEnum value: $value');
  }
}
