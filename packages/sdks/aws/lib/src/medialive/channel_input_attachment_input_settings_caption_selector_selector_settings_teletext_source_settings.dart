// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_caption_selector_selector_settings_teletext_source_settings_output_rectangle.dart';

class ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings {
  /// Optionally defines a region where TTML style captions will be displayed. See Caption Rectangle for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettingsOutputRectangle>? outputRectangle;
  /// Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no “0x” prefix.
  final pulumi.Input<String>? pageNumber;

  /// Creates a new [ChannelInputAttachmentInputSettingsCaptionSelectorSelectorSettingsTeletextSourceSettings].
  /// [outputRectangle] Optionally defines a region where TTML style captions will be displayed. See Caption Rectangle for more details.
  /// [pageNumber] Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no “0x” prefix.
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

