// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings {
  /// Specifies behavior of last resort when input video os lost.
  final String? inputLossAction;

  /// Indicates ID3 frame that has the timecode.
  final String? timedMetadataId3Frame;
  final int? timedMetadataId3Period;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings].
  /// [inputLossAction] Specifies behavior of last resort when input video os lost.
  /// [timedMetadataId3Frame] Indicates ID3 frame that has the timecode.
  /// [timedMetadataId3Period] Optional.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings({
    this.inputLossAction,
    this.timedMetadataId3Frame,
    this.timedMetadataId3Period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputLossAction': ?inputLossAction,
      'timedMetadataId3Frame': ?timedMetadataId3Frame,
      'timedMetadataId3Period': ?timedMetadataId3Period,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsUdpGroupSettings(
      inputLossAction: map['inputLossAction'] == null
          ? null
          : map['inputLossAction'] as String,
      timedMetadataId3Frame: map['timedMetadataId3Frame'] == null
          ? null
          : map['timedMetadataId3Frame'] as String,
      timedMetadataId3Period: map['timedMetadataId3Period'] == null
          ? null
          : map['timedMetadataId3Period'] as int,
    );
  }
}
