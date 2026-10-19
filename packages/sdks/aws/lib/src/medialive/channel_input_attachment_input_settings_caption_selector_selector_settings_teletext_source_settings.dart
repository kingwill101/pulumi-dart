// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_teletext_source_settings_output_rectangle.dart';

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings {
  /// Region where TTML style captions are displayed. See `outputRectangle` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle?>? outputRectangle;
  /// Teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303), specified as a hexadecimal string with no `0x` prefix. Unused for passthrough.
  final pulumi.Input<String?>? pageNumber;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings].
  /// [outputRectangle] Region where TTML style captions are displayed. See `outputRectangle` Block for details.
  /// [pageNumber] Teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303), specified as a hexadecimal string with no `0x` prefix. Unused for passthrough.
  const ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings({
    this.outputRectangle,
    this.pageNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputRectangle': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle, Map<String, dynamic>>(outputRectangle, (value) => value.toMap()),
      'pageNumber': ?pageNumber,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings(
      outputRectangle: (() { final guardedValue = map['outputRectangle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
