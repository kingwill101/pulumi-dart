// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle {
  /// Height of the rectangle as a percentage of the underlying frame height. The `topOffset` and rectangle height must add up to 100% or less. This field corresponds to `tts:extent` - Y in the TTML standard.
  final pulumi.Input<double> height;
  /// Position of the left edge of the rectangle as a percentage of the underlying frame width, relative to the left edge of the frame. Applies only if you plan to convert these source captions to EBU-TT-D or TTML in an output. You can define a display rectangle smaller than the underlying video frame; if you specify a value for one of the offset or dimension fields, you must specify a value for all of them. This field corresponds to `tts:origin` - X in the TTML standard.
  final pulumi.Input<double> leftOffset;
  /// Position of the top edge of the rectangle as a percentage of the underlying frame height, relative to the top edge of the frame. This field corresponds to `tts:origin` - Y in the TTML standard.
  final pulumi.Input<double> topOffset;
  /// Width of the rectangle as a percentage of the underlying frame width. The `leftOffset` and rectangle width must add up to 100% or less. This field corresponds to `tts:extent` - X in the TTML standard.
  final pulumi.Input<double> width;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle].
  /// [height] Height of the rectangle as a percentage of the underlying frame height. The `topOffset` and rectangle height must add up to 100% or less. This field corresponds to `tts:extent` - Y in the TTML standard.
  /// [leftOffset] Position of the left edge of the rectangle as a percentage of the underlying frame width, relative to the left edge of the frame. Applies only if you plan to convert these source captions to EBU-TT-D or TTML in an output. You can define a display rectangle smaller than the underlying video frame; if you specify a value for one of the offset or dimension fields, you must specify a value for all of them. This field corresponds to `tts:origin` - X in the TTML standard.
  /// [topOffset] Position of the top edge of the rectangle as a percentage of the underlying frame height, relative to the top edge of the frame. This field corresponds to `tts:origin` - Y in the TTML standard.
  /// [width] Width of the rectangle as a percentage of the underlying frame width. The `leftOffset` and rectangle width must add up to 100% or less. This field corresponds to `tts:extent` - X in the TTML standard.
  const ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle({
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

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle(
      height: pulumi.Input.fromValue((map['height'] as num).toDouble()),
      leftOffset: pulumi.Input.fromValue((map['leftOffset'] as num).toDouble()),
      topOffset: pulumi.Input.fromValue((map['topOffset'] as num).toDouble()),
      width: pulumi.Input.fromValue((map['width'] as num).toDouble()),
    );
  }
}
