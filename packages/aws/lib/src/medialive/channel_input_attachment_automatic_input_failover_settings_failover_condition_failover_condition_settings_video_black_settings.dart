// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings {
  /// A value used in calculating the threshold below which MediaLive considers a pixel to be 'black'. For the input to be considered black, every pixel in a frame must be below this threshold. The threshold is calculated as a percentage (expressed as a decimal) of white. Therefore .1 means 10% white (or 90% black). Note how the formula works for any color depth. For example, if you set this field to 0.1 in 10-bit color depth: (10230.1=102.3), which means a pixel value of 102 or less is 'black'. If you set this field to .1 in an 8-bit color depth: (2550.1=25.5), which means a pixel value of 25 or less is 'black'. The range is 0.0 to 1.0, with any number of decimal places.
  final double? blackDetectThreshold;

  /// The amount of time (in milliseconds) that the active input must be black before automatic input failover occurs.
  final int? videoBlackThresholdMsec;

  /// Creates a new [ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings].
  /// [blackDetectThreshold] A value used in calculating the threshold below which MediaLive considers a pixel to be 'black'. For the input to be considered black, every pixel in a frame must be below this threshold. The threshold is calculated as a percentage (expressed as a decimal) of white. Therefore .1 means 10% white (or 90% black). Note how the formula works for any color depth. For example, if you set this field to 0.1 in 10-bit color depth: (10230.1=102.3), which means a pixel value of 102 or less is 'black'. If you set this field to .1 in an 8-bit color depth: (2550.1=25.5), which means a pixel value of 25 or less is 'black'. The range is 0.0 to 1.0, with any number of decimal places.
  /// [videoBlackThresholdMsec] The amount of time (in milliseconds) that the active input must be black before automatic input failover occurs.
  ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings({
    this.blackDetectThreshold,
    this.videoBlackThresholdMsec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blackDetectThreshold': ?blackDetectThreshold,
      'videoBlackThresholdMsec': ?videoBlackThresholdMsec,
    };
  }

  factory ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentAutomaticInputFailoverSettingsFailoverConditionFailoverConditionSettingsVideoBlackSettings(
      blackDetectThreshold: map['blackDetectThreshold'] == null
          ? null
          : map['blackDetectThreshold'] as double,
      videoBlackThresholdMsec: map['videoBlackThresholdMsec'] == null
          ? null
          : map['videoBlackThresholdMsec'] as int,
    );
  }
}
