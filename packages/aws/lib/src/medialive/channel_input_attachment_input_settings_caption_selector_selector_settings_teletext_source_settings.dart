// ignore_for_file: unused_element, unnecessary_cast

import 'channel_input_attachment_input_settings_caption_selector_selector_settings_teletext_source_settings_output_rectangle.dart';

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings {
  /// Optionally defines a region where TTML style captions will be displayed. See Caption Rectangle for more details.
  final ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle?
  outputRectangle;

  /// Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no “0x” prefix.
  final String? pageNumber;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings].
  /// [outputRectangle] Optionally defines a region where TTML style captions will be displayed. See Caption Rectangle for more details.
  /// [pageNumber] Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no “0x” prefix.
  ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings({
    this.outputRectangle,
    this.pageNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputRectangle': ?outputRectangle == null
          ? null
          : outputRectangle!.toMap(),
      'pageNumber': ?pageNumber,
    };
  }

  factory ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings(
      outputRectangle: map['outputRectangle'] == null
          ? null
          : ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle.fromMap(
              (map['outputRectangle'] as Map).cast<String, dynamic>(),
            ),
      pageNumber: map['pageNumber'] == null
          ? null
          : map['pageNumber'] as String,
    );
  }
}
