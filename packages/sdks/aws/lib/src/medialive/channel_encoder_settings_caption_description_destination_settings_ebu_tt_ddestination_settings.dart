// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings {
  /// Name of the copyright holder to include in the copyright tag in the captions metadata.
  final pulumi.Input<String?>? copyrightHolder;
  /// How to handle the gap between the lines in multi-line captions. `enabled` fills the gap with the captions background color as specified in the input captions; `disabled` leaves the gap unfilled.
  final pulumi.Input<String?>? fillLineGap;
  /// Font family to include in the font data attached to the EBU-TT captions. Valid only if `styleControl` is set to `include`. If you leave this field empty, the font family is set to monospaced. You specify only the font family; all other style information (color, bold, position, and so on) is copied from the input captions, and the size is always set to 100% to allow the downstream player to choose the size. Enter a comma-separated list of font names in order of preference, a generic font family such as serif, or default to let the downstream player choose the font.
  final pulumi.Input<String?>? fontFamily;
  /// Style information to include in the font data that is attached to the EBU-TT captions. `include` takes the style information from the source captions and includes it in the font data, valid only if the source captions are Embedded or Teletext. `exclude` sets the font family to monospaced and does not include any other style information.
  final pulumi.Input<String?>? styleControl;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings].
  /// [copyrightHolder] Name of the copyright holder to include in the copyright tag in the captions metadata.
  /// [fillLineGap] How to handle the gap between the lines in multi-line captions. `enabled` fills the gap with the captions background color as specified in the input captions; `disabled` leaves the gap unfilled.
  /// [fontFamily] Font family to include in the font data attached to the EBU-TT captions. Valid only if `styleControl` is set to `include`. If you leave this field empty, the font family is set to monospaced. You specify only the font family; all other style information (color, bold, position, and so on) is copied from the input captions, and the size is always set to 100% to allow the downstream player to choose the size. Enter a comma-separated list of font names in order of preference, a generic font family such as serif, or default to let the downstream player choose the font.
  /// [styleControl] Style information to include in the font data that is attached to the EBU-TT captions. `include` takes the style information from the source captions and includes it in the font data, valid only if the source captions are Embedded or Teletext. `exclude` sets the font family to monospaced and does not include any other style information.
  const ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings({
    this.copyrightHolder,
    this.fillLineGap,
    this.fontFamily,
    this.styleControl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyrightHolder': ?copyrightHolder,
      'fillLineGap': ?fillLineGap,
      'fontFamily': ?fontFamily,
      'styleControl': ?styleControl,
    };
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings(
      copyrightHolder: (() { final guardedValue = map['copyrightHolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fillLineGap: (() { final guardedValue = map['fillLineGap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fontFamily: (() { final guardedValue = map['fontFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      styleControl: (() { final guardedValue = map['styleControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
