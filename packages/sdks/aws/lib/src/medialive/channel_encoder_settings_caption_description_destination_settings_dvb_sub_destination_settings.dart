// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_caption_description_destination_settings_dvb_sub_destination_settings_font.dart';

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings {
  /// If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting “smart” justification will left-justify live subtitles and center-justify pre-recorded subtitles. This option is not valid for source captions that are STL or 608/embedded. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? alignment;
  /// Specifies the color of the rectangle behind the captions. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? backgroundColor;
  /// Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? backgroundOpacity;
  /// External font file used for caption burn-in. File extension must be ‘ttf’ or ‘tte’. Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts. All burn-in and DVB-Sub font settings must match. See Font for more details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettingsFont>? font;
  /// Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? fontColor;
  /// Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? fontOpacity;
  /// Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? fontResolution;
  /// When set to auto fontSize will scale depending on the size of the output. Giving a positive integer will specify the exact font size in points. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? fontSize;
  /// Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? outlineColor;
  /// Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? outlineSize;
  /// Specifies the color of the shadow cast by the captions. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? shadowColor;
  /// Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? shadowOpacity;
  /// Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? shadowXOffset;
  /// Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? shadowYOffset;
  /// Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
  final pulumi.Input<String>? teletextGridControl;
  /// Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? xPosition;
  /// Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? yPosition;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings].
  /// [alignment] If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting “smart” justification will left-justify live subtitles and center-justify pre-recorded subtitles. This option is not valid for source captions that are STL or 608/embedded. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  /// [backgroundColor] Specifies the color of the rectangle behind the captions. All burn-in and DVB-Sub font settings must match.
  /// [backgroundOpacity] Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  /// [font] External font file used for caption burn-in. File extension must be ‘ttf’ or ‘tte’. Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts. All burn-in and DVB-Sub font settings must match. See Font for more details.
  /// [fontColor] Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  /// [fontOpacity] Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent. All burn-in and DVB-Sub font settings must match.
  /// [fontResolution] Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in and DVB-Sub font settings must match.
  /// [fontSize] When set to auto fontSize will scale depending on the size of the output. Giving a positive integer will specify the exact font size in points. All burn-in and DVB-Sub font settings must match.
  /// [outlineColor] Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  /// [outlineSize] Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  /// [shadowColor] Specifies the color of the shadow cast by the captions. All burn-in and DVB-Sub font settings must match.
  /// [shadowOpacity] Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  /// [shadowXOffset] Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
  /// [shadowYOffset] Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
  /// [teletextGridControl] Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
  /// [xPosition] Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  /// [yPosition] Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings({
    this.alignment,
    this.backgroundColor,
    this.backgroundOpacity,
    this.font,
    this.fontColor,
    this.fontOpacity,
    this.fontResolution,
    this.fontSize,
    this.outlineColor,
    this.outlineSize,
    this.shadowColor,
    this.shadowOpacity,
    this.shadowXOffset,
    this.shadowYOffset,
    this.teletextGridControl,
    this.xPosition,
    this.yPosition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alignment': ?alignment,
      'backgroundColor': ?backgroundColor,
      'backgroundOpacity': ?backgroundOpacity,
      'font': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettingsFont, Map<String, dynamic>>(font, (value) => value.toMap()),
      'fontColor': ?fontColor,
      'fontOpacity': ?fontOpacity,
      'fontResolution': ?fontResolution,
      'fontSize': ?fontSize,
      'outlineColor': ?outlineColor,
      'outlineSize': ?outlineSize,
      'shadowColor': ?shadowColor,
      'shadowOpacity': ?shadowOpacity,
      'shadowXOffset': ?shadowXOffset,
      'shadowYOffset': ?shadowYOffset,
      'teletextGridControl': ?teletextGridControl,
      'xPosition': ?xPosition,
      'yPosition': ?yPosition,
    };
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettings(
      alignment: map['alignment'] == null ? null : (map['alignment'] as String).input(),
      backgroundColor: map['backgroundColor'] == null ? null : (map['backgroundColor'] as String).input(),
      backgroundOpacity: map['backgroundOpacity'] == null ? null : (map['backgroundOpacity'] as int).input(),
      font: map['font'] == null ? null : (ChannelEncoderSettingsCaptionDescriptionDestinationSettingsDvbSubDestinationSettingsFont.fromMap((map['font'] as Map).cast<String, dynamic>())).input(),
      fontColor: map['fontColor'] == null ? null : (map['fontColor'] as String).input(),
      fontOpacity: map['fontOpacity'] == null ? null : (map['fontOpacity'] as int).input(),
      fontResolution: map['fontResolution'] == null ? null : (map['fontResolution'] as int).input(),
      fontSize: map['fontSize'] == null ? null : (map['fontSize'] as String).input(),
      outlineColor: map['outlineColor'] == null ? null : (map['outlineColor'] as String).input(),
      outlineSize: map['outlineSize'] == null ? null : (map['outlineSize'] as int).input(),
      shadowColor: map['shadowColor'] == null ? null : (map['shadowColor'] as String).input(),
      shadowOpacity: map['shadowOpacity'] == null ? null : (map['shadowOpacity'] as int).input(),
      shadowXOffset: map['shadowXOffset'] == null ? null : (map['shadowXOffset'] as int).input(),
      shadowYOffset: map['shadowYOffset'] == null ? null : (map['shadowYOffset'] as int).input(),
      teletextGridControl: map['teletextGridControl'] == null ? null : (map['teletextGridControl'] as String).input(),
      xPosition: map['xPosition'] == null ? null : (map['xPosition'] as int).input(),
      yPosition: map['yPosition'] == null ? null : (map['yPosition'] as int).input(),
    );
  }
}

