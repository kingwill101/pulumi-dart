// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings {
  /// The height of the FEC protection matrix.
  final int? columnDepth;

  /// Enables column only or column and row based FEC.
  final String? includeFec;

  /// The width of the FEC protection matrix.
  final int? rowLength;

  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings({
    this.columnDepth,
    this.includeFec,
    this.rowLength,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnDepthValue = columnDepth;
    if (columnDepthValue != null) {
      map['columnDepth'] = columnDepthValue;
    }
    final includeFecValue = includeFec;
    if (includeFecValue != null) {
      map['includeFec'] = includeFecValue;
    }
    final rowLengthValue = rowLength;
    if (rowLengthValue != null) {
      map['rowLength'] = rowLengthValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings(
      columnDepth:
          map['columnDepth'] == null ? null : map['columnDepth'] as int,
      includeFec:
          map['includeFec'] == null ? null : map['includeFec'] as String,
      rowLength: map['rowLength'] == null ? null : map['rowLength'] as int,
    );
  }
}
