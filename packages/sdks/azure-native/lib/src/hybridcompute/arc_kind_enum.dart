import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates which kind of Arc machine placement on-premises, such as HCI, SCVMM or VMware etc.
enum ArcKindEnum implements pulumi.PulumiEnum<String> {
  valueAVS("AVS"),
  valueHCI("HCI"),
  valueSCVMM("SCVMM"),
  valueVMware("VMware"),
  valueEPS("EPS"),
  valueGCP("GCP"),
  valueAWS("AWS");

  const ArcKindEnum(this.wireValue);
  @override
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
