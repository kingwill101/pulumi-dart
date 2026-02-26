// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_caption_description_destination_settings_burn_in_destination_settings_font/channel_encoder_settings_caption_description_destination_settings_burn_in_destination_settings_font.dart';

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings {
  /// If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting “smart” justification will left-justify live subtitles and center-justify pre-recorded subtitles. All burn-in and DVB-Sub font settings must match.
  final String? alignment;

  /// Specifies the color of the rectangle behind the captions. All burn-in and DVB-Sub font settings must match.
  final String? backgroundColor;

  /// Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  final int? backgroundOpacity;

  /// External font file used for caption burn-in. File extension must be ‘ttf’ or ‘tte’. Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts. All burn-in and DVB-Sub font settings must match. See Font for more details.
  final ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont?
      font;

  /// Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final String? fontColor;

  /// Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent. All burn-in and DVB-Sub font settings must match.
  final int? fontOpacity;

  /// Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in and DVB-Sub font settings must match.
  final int? fontResolution;

  /// When set to ‘auto’ fontSize will scale depending on the size of the output. Giving a positive integer will specify the exact font size in points. All burn-in and DVB-Sub font settings must match.
  final String? fontSize;

  /// Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final String outlineColor;

  /// Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final int? outlineSize;

  /// Specifies the color of the shadow cast by the captions. All burn-in and DVB-Sub font settings must match.
  final String? shadowColor;

  /// Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  final int? shadowOpacity;

  /// Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
  final int? shadowXOffset;

  /// Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
  final int? shadowYOffset;

  /// Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
  final String teletextGridControl;

  /// Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter. All burn-in and DVB-Sub font settings must match.
  final int? xPosition;

  /// Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output. All burn-in and DVB-Sub font settings must match.
  final int? yPosition;

  ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings({
    this.alignment,
    this.backgroundColor,
    this.backgroundOpacity,
    this.font,
    this.fontColor,
    this.fontOpacity,
    this.fontResolution,
    this.fontSize,
    required this.outlineColor,
    this.outlineSize,
    this.shadowColor,
    this.shadowOpacity,
    this.shadowXOffset,
    this.shadowYOffset,
    required this.teletextGridControl,
    this.xPosition,
    this.yPosition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alignmentValue = alignment;
    if (alignmentValue != null) {
      map['alignment'] = alignmentValue;
    }
    final backgroundColorValue = backgroundColor;
    if (backgroundColorValue != null) {
      map['backgroundColor'] = backgroundColorValue;
    }
    final backgroundOpacityValue = backgroundOpacity;
    if (backgroundOpacityValue != null) {
      map['backgroundOpacity'] = backgroundOpacityValue;
    }
    final fontValue = font;
    if (fontValue != null) {
      map['font'] = fontValue.toMap();
    }
    final fontColorValue = fontColor;
    if (fontColorValue != null) {
      map['fontColor'] = fontColorValue;
    }
    final fontOpacityValue = fontOpacity;
    if (fontOpacityValue != null) {
      map['fontOpacity'] = fontOpacityValue;
    }
    final fontResolutionValue = fontResolution;
    if (fontResolutionValue != null) {
      map['fontResolution'] = fontResolutionValue;
    }
    final fontSizeValue = fontSize;
    if (fontSizeValue != null) {
      map['fontSize'] = fontSizeValue;
    }
    map['outlineColor'] = outlineColor;
    final outlineSizeValue = outlineSize;
    if (outlineSizeValue != null) {
      map['outlineSize'] = outlineSizeValue;
    }
    final shadowColorValue = shadowColor;
    if (shadowColorValue != null) {
      map['shadowColor'] = shadowColorValue;
    }
    final shadowOpacityValue = shadowOpacity;
    if (shadowOpacityValue != null) {
      map['shadowOpacity'] = shadowOpacityValue;
    }
    final shadowXOffsetValue = shadowXOffset;
    if (shadowXOffsetValue != null) {
      map['shadowXOffset'] = shadowXOffsetValue;
    }
    final shadowYOffsetValue = shadowYOffset;
    if (shadowYOffsetValue != null) {
      map['shadowYOffset'] = shadowYOffsetValue;
    }
    map['teletextGridControl'] = teletextGridControl;
    final xPositionValue = xPosition;
    if (xPositionValue != null) {
      map['xPosition'] = xPositionValue;
    }
    final yPositionValue = yPosition;
    if (yPositionValue != null) {
      map['yPosition'] = yPositionValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings(
      alignment: map['alignment'] == null ? null : map['alignment'] as String,
      backgroundColor: map['backgroundColor'] == null
          ? null
          : map['backgroundColor'] as String,
      backgroundOpacity: map['backgroundOpacity'] == null
          ? null
          : map['backgroundOpacity'] as int,
      font: map['font'] == null
          ? null
          : ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont
              .fromMap((map['font'] as Map).cast<String, dynamic>()),
      fontColor: map['fontColor'] == null ? null : map['fontColor'] as String,
      fontOpacity:
          map['fontOpacity'] == null ? null : map['fontOpacity'] as int,
      fontResolution:
          map['fontResolution'] == null ? null : map['fontResolution'] as int,
      fontSize: map['fontSize'] == null ? null : map['fontSize'] as String,
      outlineColor: map['outlineColor'] as String,
      outlineSize:
          map['outlineSize'] == null ? null : map['outlineSize'] as int,
      shadowColor:
          map['shadowColor'] == null ? null : map['shadowColor'] as String,
      shadowOpacity:
          map['shadowOpacity'] == null ? null : map['shadowOpacity'] as int,
      shadowXOffset:
          map['shadowXOffset'] == null ? null : map['shadowXOffset'] as int,
      shadowYOffset:
          map['shadowYOffset'] == null ? null : map['shadowYOffset'] as int,
      teletextGridControl: map['teletextGridControl'] as String,
      xPosition: map['xPosition'] == null ? null : map['xPosition'] as int,
      yPosition: map['yPosition'] == null ? null : map['yPosition'] as int,
    );
  }
}
