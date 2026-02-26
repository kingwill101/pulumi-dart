// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings {
  /// Complete this field if you want to include the name of the copyright holder in the copyright tag in the captions metadata.
  final String? copyrightHolder;

  /// Specifies how to handle the gap between the lines (in multi-line captions). - enabled: Fill with the captions background color (as specified in the input captions). - disabled: Leave the gap unfilled.
  final String? fillLineGap;

  /// Specifies the font family to include in the font data attached to the EBU-TT captions. Valid only if styleControl is set to include. If you leave this field empty, the font family is set to “monospaced”. (If styleControl is set to exclude, the font family is always set to “monospaced”.) You specify only the font family. All other style information (color, bold, position and so on) is copied from the input captions. The size is always set to 100% to allow the downstream player to choose the size. - Enter a list of font families, as a comma-separated list of font names, in order of preference. The name can be a font family (such as “Arial”), or a generic font family (such as “serif”), or “default” (to let the downstream player choose the font). - Leave blank to set the family to “monospace”.
  final String? fontFamily;

  /// Specifies the style information (font color, font position, and so on) to include in the font data that is attached to the EBU-TT captions. - include: Take the style information (font color, font position, and so on) from the source captions and include that information in the font data attached to the EBU-TT captions. This option is valid only if the source captions are Embedded or Teletext. - exclude: In the font data attached to the EBU-TT captions, set the font family to “monospaced”. Do not include any other style information.
  final String? styleControl;

  ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings({
    this.copyrightHolder,
    this.fillLineGap,
    this.fontFamily,
    this.styleControl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final copyrightHolderValue = copyrightHolder;
    if (copyrightHolderValue != null) {
      map['copyrightHolder'] = copyrightHolderValue;
    }
    final fillLineGapValue = fillLineGap;
    if (fillLineGapValue != null) {
      map['fillLineGap'] = fillLineGapValue;
    }
    final fontFamilyValue = fontFamily;
    if (fontFamilyValue != null) {
      map['fontFamily'] = fontFamilyValue;
    }
    final styleControlValue = styleControl;
    if (styleControlValue != null) {
      map['styleControl'] = styleControlValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsEbuTtDDestinationSettings(
      copyrightHolder: map['copyrightHolder'] == null
          ? null
          : map['copyrightHolder'] as String,
      fillLineGap:
          map['fillLineGap'] == null ? null : map['fillLineGap'] as String,
      fontFamily:
          map['fontFamily'] == null ? null : map['fontFamily'] as String,
      styleControl:
          map['styleControl'] == null ? null : map['styleControl'] as String,
    );
  }
}
