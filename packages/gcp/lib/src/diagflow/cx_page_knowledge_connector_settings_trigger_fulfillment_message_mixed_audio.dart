// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_knowledge_connector_settings_trigger_fulfillment_message_mixed_audio_segment.dart';

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio {
  /// Segments this audio response is composed of.
  final List<
          CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment>?
      segments;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio].
  /// [segments] Segments this audio response is composed of.
  CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio({
    this.segments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final segmentsValue = segments;
    if (segmentsValue != null) {
      map['segments'] = pulumi.Input.encodeList<
          CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment,
          Map<String, dynamic>>(segmentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio.fromMap(
      Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio(
      segments: map['segments'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment>(
              map['segments'],
              (value) =>
                  CxPageKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
