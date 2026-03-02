// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_automatic_input_failover_settings.dart';
import 'channel_input_attachment_input_settings.dart';

class ChannelInputAttachment {
  /// User-specified settings for defining what the conditions are for declaring the input unhealthy and failing over to a different input. See Automatic Input Failover Settings for more details.
  final pulumi.Input<ChannelInputAttachmentAutomaticInputFailoverSettings>? automaticInputFailoverSettings;
  /// User-specified name for the attachment.
  final pulumi.Input<String> inputAttachmentName;
  /// The ID of the input.
  final pulumi.Input<String> inputId;
  /// Settings of an input. See Input Settings for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettings>? inputSettings;

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
      'automaticInputFailoverSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentAutomaticInputFailoverSettings, Map<String, dynamic>>(automaticInputFailoverSettings, (value) => value.toMap()),
      'inputAttachmentName': inputAttachmentName,
      'inputId': inputId,
      'inputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettings, Map<String, dynamic>>(inputSettings, (value) => value.toMap()),
    };
  }

  factory ChannelInputAttachment.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachment(
      automaticInputFailoverSettings: map['automaticInputFailoverSettings'] == null ? null : ((ChannelInputAttachmentAutomaticInputFailoverSettings.fromMap((map['automaticInputFailoverSettings']! as Map).cast<String, dynamic>())).input()).input(),
      inputAttachmentName: (map['inputAttachmentName'] as String).input(),
      inputId: (map['inputId'] as String).input(),
      inputSettings: map['inputSettings'] == null ? null : ((ChannelInputAttachmentInputSettings.fromMap((map['inputSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

