// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_automatic_input_failover_settings.dart';
import 'channel_input_attachment_input_settings.dart';

class ChannelInputAttachment {
  /// Settings that define the conditions for declaring the input unhealthy and failing over to a different input. See `automaticInputFailoverSettings` Block for details.
  final pulumi.Input<ChannelInputAttachmentAutomaticInputFailoverSettings?>? automaticInputFailoverSettings;
  /// User-specified name for the attachment.
  final pulumi.Input<String> inputAttachmentName;
  /// ID of the input.
  final pulumi.Input<String> inputId;
  /// Settings of an input. See `inputSettings` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettings?>? inputSettings;

  /// Creates a new [ChannelInputAttachment].
  /// [automaticInputFailoverSettings] Settings that define the conditions for declaring the input unhealthy and failing over to a different input. See `automaticInputFailoverSettings` Block for details.
  /// [inputAttachmentName] User-specified name for the attachment.
  /// [inputId] ID of the input.
  /// [inputSettings] Settings of an input. See `inputSettings` Block for details.
  const ChannelInputAttachment({
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
      automaticInputFailoverSettings: (() { final guardedValue = map['automaticInputFailoverSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentAutomaticInputFailoverSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputAttachmentName: pulumi.Input.fromValue(map['inputAttachmentName'] as String),
      inputId: pulumi.Input.fromValue(map['inputId'] as String),
      inputSettings: (() { final guardedValue = map['inputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
