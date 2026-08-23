// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings {
  /// Complete this field if you want to include the name of the copyright holder in the copyright tag in the captions metadata.
  final pulumi.Input<String>? copyrightHolder;
  /// Specifies how to handle the gap between the lines (in multi-line captions). - enabled: Fill with the captions background color (as specified in the input captions). - disabled: Leave the gap unfilled.
  final pulumi.Input<String>? fillLineGap;
  /// Specifies the font family to include in the font data attached to the EBU-TT captions. Valid only if styleControl is set to include. If you leave this field empty, the font family is set to “monospaced”. (If styleControl is set to exclude, the font family is always set to “monospaced”.) You specify only the font family. All other style information (color, bold, position and so on) is copied from the input captions. The size is always set to 100% to allow the downstream player to choose the size. - Enter a list of font families, as a comma-separated list of font names, in order of preference. The name can be a font family (such as “Arial”), or a generic font family (such as “serif”), or “default” (to let the downstream player choose the font). - Leave blank to set the family to “monospace”.
  final pulumi.Input<String>? fontFamily;
  /// Specifies the style information (font color, font position, and so on) to include in the font data that is attached to the EBU-TT captions. - include: Take the style information (font color, font position, and so on) from the source captions and include that information in the font data attached to the EBU-TT captions. This option is valid only if the source captions are Embedded or Teletext. - exclude: In the font data attached to the EBU-TT captions, set the font family to “monospaced”. Do not include any other style information.
  final pulumi.Input<String>? styleControl;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings].
  /// [copyrightHolder] Complete this field if you want to include the name of the copyright holder in the copyright tag in the captions metadata.
  /// [fillLineGap] Specifies how to handle the gap between the lines (in multi-line captions). - enabled: Fill with the captions background color (as specified in the input captions). - disabled: Leave the gap unfilled.
  /// [fontFamily] Specifies the font family to include in the font data attached to the EBU-TT captions. Valid only if styleControl is set to include. If you leave this field empty, the font family is set to “monospaced”. (If styleControl is set to exclude, the font family is always set to “monospaced”.) You specify only the font family. All other style information (color, bold, position and so on) is copied from the input captions. The size is always set to 100% to allow the downstream player to choose the size. - Enter a list of font families, as a comma-separated list of font names, in order of preference. The name can be a font family (such as “Arial”), or a generic font family (such as “serif”), or “default” (to let the downstream player choose the font). - Leave blank to set the family to “monospace”.
  /// [styleControl] Specifies the style information (font color, font position, and so on) to include in the font data that is attached to the EBU-TT captions. - include: Take the style information (font color, font position, and so on) from the source captions and include that information in the font data attached to the EBU-TT captions. This option is valid only if the source captions are Embedded or Teletext. - exclude: In the font data attached to the EBU-TT captions, set the font family to “monospaced”. Do not include any other style information.
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
