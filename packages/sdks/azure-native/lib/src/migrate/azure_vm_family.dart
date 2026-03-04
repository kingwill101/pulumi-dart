/// Azure VM Family
enum AzureVmFamily {
  unknown("Unknown"),
  basicA0A4("Basic_A0_A4"),
  standardA0A7("Standard_A0_A7"),
  standardA8A11("Standard_A8_A11"),
  av2Series("Av2_series"),
  dSeries("D_series"),
  dv2Series("Dv2_series"),
  dSSeries("DS_series"),
  dSv2Series("DSv2_series"),
  fSeries("F_series"),
  fsSeries("Fs_series"),
  gSeries("G_series"),
  gSSeries("GS_series"),
  hSeries("H_series"),
  lsSeries("Ls_series"),
  dsv3Series("Dsv3_series"),
  dv3Series("Dv3_series"),
  fsv2Series("Fsv2_series"),
  ev3Series("Ev3_series"),
  esv3Series("Esv3_series"),
  mSeries("M_series"),
  dCSeries("DC_Series"),
  lsv2Series("Lsv2_series"),
  ev4Series("Ev4_series"),
  esv4Series("Esv4_series"),
  edv4Series("Edv4_series"),
  edsv4Series("Edsv4_series"),
  dv4Series("Dv4_series"),
  dsv4Series("Dsv4_series"),
  ddv4Series("Ddv4_series"),
  ddsv4Series("Ddsv4_series"),
  easv4Series("Easv4_series"),
  dasv4Series("Dasv4_series"),
  mv2Series("Mv2_series"),
  eav4Series("Eav4_series"),
  dav4Series("Dav4_series"),
  msv2Series("Msv2_series"),
  mdsv2Series("Mdsv2_series"),
  dv5Series("Dv5_series"),
  dsv5Series("Dsv5_series"),
  ddv5Series("Ddv5_series"),
  ddsv5Series("Ddsv5_series"),
  dasv5Series("Dasv5_series"),
  dadsv5Series("Dadsv5_series"),
  ev5Series("Ev5_series"),
  esv5Series("Esv5_series"),
  edv5Series("Edv5_series"),
  edsv5Series("Edsv5_series"),
  easv5Series("Easv5_series"),
  eadsv5Series("Eadsv5_series"),
  ebsv5Series("Ebsv5_series"),
  ebdsv5Series("Ebdsv5_series");

  const AzureVmFamily(this.wireValue);
  final String wireValue;

  static AzureVmFamily fromValue(String value) {
    for (final item in AzureVmFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureVmFamily value: $value');
  }
}
