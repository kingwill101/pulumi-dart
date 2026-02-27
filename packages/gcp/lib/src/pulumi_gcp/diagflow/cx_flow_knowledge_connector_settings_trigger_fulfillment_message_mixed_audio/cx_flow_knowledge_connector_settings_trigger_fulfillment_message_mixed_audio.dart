// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_flow_knowledge_connector_settings_trigger_fulfillment_message_mixed_audio_segment/cx_flow_knowledge_connector_settings_trigger_fulfillment_message_mixed_audio_segment.dart';

class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio {
  /// Segments this audio response is composed of.
  final List<
          CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment>?
      segments;

  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio({
    this.segments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final segmentsValue = segments;
    if (segmentsValue != null) {
      map['segments'] = pulumi.Input.encodeList<
          CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment,
          Map<String, dynamic>>(segmentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio.fromMap(
      Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudio(
      segments: map['segments'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment>(
              map['segments'],
              (value) =>
                  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageMixedAudioSegment
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
