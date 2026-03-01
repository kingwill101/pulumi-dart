// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle {
  final double height;

  /// Applies only if you plan to convert these source captions to EBU-TT-D or TTML in an output. (Make sure to leave the default if you don’t have either of these formats in the output.) You can define a display rectangle for the captions that is smaller than the underlying video frame. You define the rectangle by specifying the position of the left edge, top edge, bottom edge, and right edge of the rectangle, all within the underlying video frame. The units for the measurements are percentages. If you specify a value for one of these fields, you must specify a value for all of them. For leftOffset, specify the position of the left edge of the rectangle, as a percentage of the underlying frame width, and relative to the left edge of the frame. For example, "10" means the measurement is 10% of the underlying frame width. The rectangle left edge starts at that position from the left edge of the frame. This field corresponds to tts:origin - X in the TTML standard.
  final double leftOffset;

  /// See the description in left\_offset. For top\_offset, specify the position of the top edge of the rectangle, as a percentage of the underlying frame height, and relative to the top edge of the frame. For example, "10" means the measurement is 10% of the underlying frame height. The rectangle top edge starts at that position from the top edge of the frame. This field corresponds to tts:origin - Y in the TTML standard.
  final double topOffset;
  final double width;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle].
  /// [height] Required.
  /// [leftOffset] Applies only if you plan to convert these source captions to EBU-TT-D or TTML in an output. (Make sure to leave the default if you don’t have either of these formats in the output.) You can define a display rectangle for the captions that is smaller than the underlying video frame. You define the rectangle by specifying the position of the left edge, top edge, bottom edge, and right edge of the rectangle, all within the underlying video frame. The units for the measurements are percentages. If you specify a value for one of these fields, you must specify a value for all of them. For leftOffset, specify the position of the left edge of the rectangle, as a percentage of the underlying frame width, and relative to the left edge of the frame. For example, "10" means the measurement is 10% of the underlying frame width. The rectangle left edge starts at that position from the left edge of the frame. This field corresponds to tts:origin - X in the TTML standard.
  /// [topOffset] See the description in left\_offset. For top\_offset, specify the position of the top edge of the rectangle, as a percentage of the underlying frame height, and relative to the top edge of the frame. For example, "10" means the measurement is 10% of the underlying frame height. The rectangle top edge starts at that position from the top edge of the frame. This field corresponds to tts:origin - Y in the TTML standard.
  /// [width] Required.
  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle({
    required this.height,
    required this.leftOffset,
    required this.topOffset,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'leftOffset': leftOffset,
      'topOffset': topOffset,
      'width': width,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle(
      height: map['height'] as double,
      leftOffset: map['leftOffset'] as double,
      topOffset: map['topOffset'] as double,
      width: map['width'] as double,
    );
  }
}
