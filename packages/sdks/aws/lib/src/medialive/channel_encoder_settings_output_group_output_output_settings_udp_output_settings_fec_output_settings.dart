// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings {
  /// The height of the FEC protection matrix.
  final pulumi.Input<int>? columnDepth;
  /// Enables column only or column and row based FEC.
  final pulumi.Input<String>? includeFec;
  /// The width of the FEC protection matrix.
  final pulumi.Input<int>? rowLength;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings].
  /// [columnDepth] The height of the FEC protection matrix.
  /// [includeFec] Enables column only or column and row based FEC.
  /// [rowLength] The width of the FEC protection matrix.
  ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings({
    this.columnDepth,
    this.includeFec,
    this.rowLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnDepth': ?columnDepth,
      'includeFec': ?includeFec,
      'rowLength': ?rowLength,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputOutputSettingsUdpOutputSettingsFecOutputSettings(
      columnDepth: map['columnDepth'] == null ? null : (map['columnDepth'] as int).input(),
      includeFec: map['includeFec'] == null ? null : (map['includeFec'] as String).input(),
      rowLength: map['rowLength'] == null ? null : (map['rowLength'] as int).input(),
    );
  }
}

