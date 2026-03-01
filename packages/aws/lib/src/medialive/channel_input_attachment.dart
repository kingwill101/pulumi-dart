// ignore_for_file: unused_element, unnecessary_cast

import 'channel_input_attachment_automatic_input_failover_settings.dart';
import 'channel_input_attachment_input_settings.dart';

class ChannelInputAttachment {
  /// User-specified settings for defining what the conditions are for declaring the input unhealthy and failing over to a different input. See Automatic Input Failover Settings for more details.
  final ChannelInputAttachmentAutomaticInputFailoverSettings?
  automaticInputFailoverSettings;

  /// User-specified name for the attachment.
  final String inputAttachmentName;

  /// The ID of the input.
  final String inputId;

  /// Settings of an input. See Input Settings for more details.
  final ChannelInputAttachmentInputSettings? inputSettings;

  /// Creates a new [ChannelInputAttachment].
  /// [automaticInputFailoverSettings] User-specified settings for defining what the conditions are for declaring the input unhealthy and failing over to a different input. See Automatic Input Failover Settings for more details.
  /// [inputAttachmentName] User-specified name for the attachment.
  /// [inputId] The ID of the input.
  /// [inputSettings] Settings of an input. See Input Settings for more details.
  ChannelInputAttachment({
    this.automaticInputFailoverSettings,
    required this.inputAttachmentName,
    required this.inputId,
    this.inputSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticInputFailoverSettings': ?automaticInputFailoverSettings == null
          ? null
          : automaticInputFailoverSettings!.toMap(),
      'inputAttachmentName': inputAttachmentName,
      'inputId': inputId,
      'inputSettings': ?inputSettings == null ? null : inputSettings!.toMap(),
    };
  }

  factory ChannelInputAttachment.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachment(
      automaticInputFailoverSettings:
          map['automaticInputFailoverSettings'] == null
          ? null
          : ChannelInputAttachmentAutomaticInputFailoverSettings.fromMap(
              (map['automaticInputFailoverSettings'] as Map)
                  .cast<String, dynamic>(),
            ),
      inputAttachmentName: map['inputAttachmentName'] as String,
      inputId: map['inputId'] as String,
      inputSettings: map['inputSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettings.fromMap(
              (map['inputSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
