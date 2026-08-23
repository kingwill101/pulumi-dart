// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_caption_description_destination_settings_burn_in_destination_settings_font.dart';

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings {
  /// If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting “smart” justification will left-justify live subtitles and center-justify pre-recorded subtitles. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? alignment;
  /// Specifies the color of the rectangle behind the captions. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? backgroundColor;
  /// Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? backgroundOpacity;
  /// External font file used for caption burn-in. File extension must be ‘ttf’ or ‘tte’. Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts. All burn-in and DVB-Sub font settings must match. See Font for more details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont>? font;
  /// Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? fontColor;
  /// Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? fontOpacity;
  /// Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? fontResolution;
  /// When set to ‘auto’ fontSize will scale depending on the size of the output. Giving a positive integer will specify the exact font size in points. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? fontSize;
  /// Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String> outlineColor;
  /// Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? outlineSize;
  /// Specifies the color of the shadow cast by the captions. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<String>? shadowColor;
  /// Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? shadowOpacity;
  /// Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? shadowXOffset;
  /// Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? shadowYOffset;
  /// Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
  final pulumi.Input<String> teletextGridControl;
  /// Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? xPosition;
  /// Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output. All burn-in and DVB-Sub font settings must match.
  final pulumi.Input<int>? yPosition;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings].
  /// [alignment] If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting “smart” justification will left-justify live subtitles and center-justify pre-recorded subtitles. All burn-in and DVB-Sub font settings must match.
  /// [backgroundColor] Specifies the color of the rectangle behind the captions. All burn-in and DVB-Sub font settings must match.
  /// [backgroundOpacity] Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  /// [font] External font file used for caption burn-in. File extension must be ‘ttf’ or ‘tte’. Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts. All burn-in and DVB-Sub font settings must match. See Font for more details.
  /// [fontColor] Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  /// [fontOpacity] Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent. All burn-in and DVB-Sub font settings must match.
  /// [fontResolution] Font resolution in DPI (dots per inch); default is 96 dpi. All burn-in and DVB-Sub font settings must match.
  /// [fontSize] When set to ‘auto’ fontSize will scale depending on the size of the output. Giving a positive integer will specify the exact font size in points. All burn-in and DVB-Sub font settings must match.
  /// [outlineColor] Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  /// [outlineSize] Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
  /// [shadowColor] Specifies the color of the shadow cast by the captions. All burn-in and DVB-Sub font settings must match.
  /// [shadowOpacity] Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
  /// [shadowXOffset] Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
  /// [shadowYOffset] Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
  /// [teletextGridControl] Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
  /// [xPosition] Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter. All burn-in and DVB-Sub font settings must match.
  /// [yPosition] Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output. All burn-in and DVB-Sub font settings must match.
  const ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings({
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
    return <String, dynamic>{
      'alignment': ?alignment,
      'backgroundColor': ?backgroundColor,
      'backgroundOpacity': ?backgroundOpacity,
      'font': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont, Map<String, dynamic>>(font, (value) => value.toMap()),
      'fontColor': ?fontColor,
      'fontOpacity': ?fontOpacity,
      'fontResolution': ?fontResolution,
      'fontSize': ?fontSize,
      'outlineColor': outlineColor,
      'outlineSize': ?outlineSize,
      'shadowColor': ?shadowColor,
      'shadowOpacity': ?shadowOpacity,
      'shadowXOffset': ?shadowXOffset,
      'shadowYOffset': ?shadowYOffset,
      'teletextGridControl': teletextGridControl,
      'xPosition': ?xPosition,
      'yPosition': ?yPosition,
    };
  }

  factory ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings(
      alignment: (() { final guardedValue = map['alignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backgroundColor: (() { final guardedValue = map['backgroundColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backgroundOpacity: (() { final guardedValue = map['backgroundOpacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      font: (() { final guardedValue = map['font']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fontColor: (() { final guardedValue = map['fontColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fontOpacity: (() { final guardedValue = map['fontOpacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fontResolution: (() { final guardedValue = map['fontResolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fontSize: (() { final guardedValue = map['fontSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outlineColor: pulumi.Input.fromValue(map['outlineColor'] as String),
      outlineSize: (() { final guardedValue = map['outlineSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shadowColor: (() { final guardedValue = map['shadowColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shadowOpacity: (() { final guardedValue = map['shadowOpacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shadowXOffset: (() { final guardedValue = map['shadowXOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shadowYOffset: (() { final guardedValue = map['shadowYOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      teletextGridControl: pulumi.Input.fromValue(map['teletextGridControl'] as String),
      xPosition: (() { final guardedValue = map['xPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      yPosition: (() { final guardedValue = map['yPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
