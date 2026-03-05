/// Indicates which kind of Arc machine placement on-premises, such as HCI, SCVMM or VMware etc.
enum ArcKindEnum {
  valueAVS("AVS"),
  valueHCI("HCI"),
  valueSCVMM("SCVMM"),
  valueVMware("VMware"),
  valueEPS("EPS"),
  valueGCP("GCP"),
  valueAWS("AWS");

  const ArcKindEnum(this.wireValue);
  final String wireValue;

  static ArcKindEnum fromValue(String value) {
    for (final item in ArcKindEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArcKindEnum value: $value');
  }
}

