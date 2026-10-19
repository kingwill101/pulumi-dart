// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_caption_description_destination_settings_burn_in_destination_settings_font.dart';

class ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings {
  /// Justification of the caption text. When no explicit `xPosition` or `yPosition` is provided, `centered` places the captions at the bottom center of the output and `left` aligns captions to the bottom left. If `xPosition` and `yPosition` are given with the alignment parameter, the font is justified (left or centered) relative to those coordinates. Selecting `smart` justification left-justifies live subtitles and center-justifies pre-recorded subtitles.
  final pulumi.Input<String?>? alignment;
  /// Color of the rectangle behind the captions.
  final pulumi.Input<String?>? backgroundColor;
  /// Opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).
  final pulumi.Input<int?>? backgroundOpacity;
  /// External font file used for caption burn-in. File extension must be `ttf` or `tte`. Although you can select output fonts for many different types of input captions, embedded, STL, and teletext sources use a strict grid system; using external fonts with these caption sources could cause unexpected display of proportional fonts. See `font` Block for details.
  final pulumi.Input<ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont?>? font;
  /// Color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded, or teletext. These source settings are already pre-defined by the caption stream.
  final pulumi.Input<String?>? fontColor;
  /// Opacity of the burned-in captions. 255 is opaque; 0 is transparent.
  final pulumi.Input<int?>? fontOpacity;
  /// Font resolution in DPI (dots per inch). Default is 96 dpi.
  final pulumi.Input<int?>? fontResolution;
  /// When set to `auto`, font size scales depending on the size of the output. A positive integer sets the exact font size in points.
  final pulumi.Input<String?>? fontSize;
  /// Font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream.
  final pulumi.Input<String> outlineColor;
  /// Font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream.
  final pulumi.Input<int?>? outlineSize;
  /// Color of the shadow cast by the captions.
  final pulumi.Input<String?>? shadowColor;
  /// Opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).
  final pulumi.Input<int?>? shadowOpacity;
  /// Horizontal offset, in pixels, of the shadow relative to the captions. A value of -2 results in a shadow offset 2 pixels to the left.
  final pulumi.Input<int?>? shadowXOffset;
  /// Vertical offset, in pixels, of the shadow relative to the captions. A value of -2 results in a shadow offset 2 pixels above the text.
  final pulumi.Input<int?>? shadowYOffset;
  /// Whether a fixed grid size is used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
  final pulumi.Input<String> teletextGridControl;
  /// Horizontal position, in pixels, of the caption relative to the left side of the output. A value of 10 results in the captions starting 10 pixels from the left of the output. If no explicit `xPosition` is provided, the horizontal caption position is determined by the alignment parameter.
  final pulumi.Input<int?>? xPosition;
  /// Vertical position, in pixels, of the caption relative to the top of the output. A value of 10 results in the captions starting 10 pixels from the top of the output. If no explicit `yPosition` is provided, the caption is positioned towards the bottom of the output.
  final pulumi.Input<int?>? yPosition;

  /// Creates a new [ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettings].
  /// [alignment] Justification of the caption text. When no explicit `xPosition` or `yPosition` is provided, `centered` places the captions at the bottom center of the output and `left` aligns captions to the bottom left. If `xPosition` and `yPosition` are given with the alignment parameter, the font is justified (left or centered) relative to those coordinates. Selecting `smart` justification left-justifies live subtitles and center-justifies pre-recorded subtitles.
  /// [backgroundColor] Color of the rectangle behind the captions.
  /// [backgroundOpacity] Opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).
  /// [font] External font file used for caption burn-in. File extension must be `ttf` or `tte`. Although you can select output fonts for many different types of input captions, embedded, STL, and teletext sources use a strict grid system; using external fonts with these caption sources could cause unexpected display of proportional fonts. See `font` Block for details.
  /// [fontColor] Color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded, or teletext. These source settings are already pre-defined by the caption stream.
  /// [fontOpacity] Opacity of the burned-in captions. 255 is opaque; 0 is transparent.
  /// [fontResolution] Font resolution in DPI (dots per inch). Default is 96 dpi.
  /// [fontSize] When set to `auto`, font size scales depending on the size of the output. A positive integer sets the exact font size in points.
  /// [outlineColor] Font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream.
  /// [outlineSize] Font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream.
  /// [shadowColor] Color of the shadow cast by the captions.
  /// [shadowOpacity] Opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).
  /// [shadowXOffset] Horizontal offset, in pixels, of the shadow relative to the captions. A value of -2 results in a shadow offset 2 pixels to the left.
  /// [shadowYOffset] Vertical offset, in pixels, of the shadow relative to the captions. A value of -2 results in a shadow offset 2 pixels above the text.
  /// [teletextGridControl] Whether a fixed grid size is used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
  /// [xPosition] Horizontal position, in pixels, of the caption relative to the left side of the output. A value of 10 results in the captions starting 10 pixels from the left of the output. If no explicit `xPosition` is provided, the horizontal caption position is determined by the alignment parameter.
  /// [yPosition] Vertical position, in pixels, of the caption relative to the top of the output. A value of 10 results in the captions starting 10 pixels from the top of the output. If no explicit `yPosition` is provided, the caption is positioned towards the bottom of the output.
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
      backgroundOpacity: (() { final guardedValue = map['backgroundOpacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      font: (() { final guardedValue = map['font']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsCaptionDescriptionDestinationSettingsBurnInDestinationSettingsFont.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fontColor: (() { final guardedValue = map['fontColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fontOpacity: (() { final guardedValue = map['fontOpacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      fontResolution: (() { final guardedValue = map['fontResolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      fontSize: (() { final guardedValue = map['fontSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outlineColor: pulumi.Input.fromValue(map['outlineColor'] as String),
      outlineSize: (() { final guardedValue = map['outlineSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      shadowColor: (() { final guardedValue = map['shadowColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shadowOpacity: (() { final guardedValue = map['shadowOpacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      shadowXOffset: (() { final guardedValue = map['shadowXOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      shadowYOffset: (() { final guardedValue = map['shadowYOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      teletextGridControl: pulumi.Input.fromValue(map['teletextGridControl'] as String),
      xPosition: (() { final guardedValue = map['xPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      yPosition: (() { final guardedValue = map['yPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
