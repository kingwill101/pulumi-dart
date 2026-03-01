// ignore_for_file: unused_element, unnecessary_cast

import 'cx_flow_event_handler_trigger_fulfillment_message_conversation_success.dart';
import 'cx_flow_event_handler_trigger_fulfillment_message_live_agent_handoff.dart';
import 'cx_flow_event_handler_trigger_fulfillment_message_output_audio_text.dart';
import 'cx_flow_event_handler_trigger_fulfillment_message_play_audio.dart';
import 'cx_flow_event_handler_trigger_fulfillment_message_telephony_transfer_call.dart';
import 'cx_flow_event_handler_trigger_fulfillment_message_text.dart';

class CxFlowEventHandlerTriggerFulfillmentMessage {
  /// The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  final String? channel;

  /// Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
  /// Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
  /// You may set this, for example:
  /// * In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
  /// * In a webhook response when you determine that you handled the customer issue.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccess?
  conversationSuccess;

  /// Indicates that the conversation should be handed off to a live agent.
  /// Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
  /// You may set this, for example:
  /// * In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
  /// * In a webhook response when you determine that the customer issue can only be handled by a human.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoff?
  liveAgentHandoff;

  /// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioText?
  outputAudioText;

  /// Returns a response containing a custom, platform-specific payload.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  final String? payload;

  /// Specifies an audio clip to be played by the client as part of the response.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio? playAudio;

  /// Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall?
  telephonyTransferCall;

  /// The text response message.
  /// This field is part of a union field `message`: Only one of `text`, `payload`, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxFlowEventHandlerTriggerFulfillmentMessageText? text;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentMessage].
  /// [channel] The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  /// [conversationSuccess] Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
  /// [liveAgentHandoff] Indicates that the conversation should be handed off to a live agent.
  /// [outputAudioText] A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  /// [payload] Returns a response containing a custom, platform-specific payload.
  /// [playAudio] Specifies an audio clip to be played by the client as part of the response.
  /// [telephonyTransferCall] Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
  /// [text] The text response message.
  CxFlowEventHandlerTriggerFulfillmentMessage({
    this.channel,
    this.conversationSuccess,
    this.liveAgentHandoff,
    this.outputAudioText,
    this.payload,
    this.playAudio,
    this.telephonyTransferCall,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
      'conversationSuccess': ?conversationSuccess == null
          ? null
          : conversationSuccess!.toMap(),
      'liveAgentHandoff': ?liveAgentHandoff == null
          ? null
          : liveAgentHandoff!.toMap(),
      'outputAudioText': ?outputAudioText == null
          ? null
          : outputAudioText!.toMap(),
      'payload': ?payload,
      'playAudio': ?playAudio == null ? null : playAudio!.toMap(),
      'telephonyTransferCall': ?telephonyTransferCall == null
          ? null
          : telephonyTransferCall!.toMap(),
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory CxFlowEventHandlerTriggerFulfillmentMessage.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowEventHandlerTriggerFulfillmentMessage(
      channel: map['channel'] == null ? null : map['channel'] as String,
      conversationSuccess: map['conversationSuccess'] == null
          ? null
          : CxFlowEventHandlerTriggerFulfillmentMessageConversationSuccess.fromMap(
              (map['conversationSuccess'] as Map).cast<String, dynamic>(),
            ),
      liveAgentHandoff: map['liveAgentHandoff'] == null
          ? null
          : CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoff.fromMap(
              (map['liveAgentHandoff'] as Map).cast<String, dynamic>(),
            ),
      outputAudioText: map['outputAudioText'] == null
          ? null
          : CxFlowEventHandlerTriggerFulfillmentMessageOutputAudioText.fromMap(
              (map['outputAudioText'] as Map).cast<String, dynamic>(),
            ),
      payload: map['payload'] == null ? null : map['payload'] as String,
      playAudio: map['playAudio'] == null
          ? null
          : CxFlowEventHandlerTriggerFulfillmentMessagePlayAudio.fromMap(
              (map['playAudio'] as Map).cast<String, dynamic>(),
            ),
      telephonyTransferCall: map['telephonyTransferCall'] == null
          ? null
          : CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall.fromMap(
              (map['telephonyTransferCall'] as Map).cast<String, dynamic>(),
            ),
      text: map['text'] == null
          ? null
          : CxFlowEventHandlerTriggerFulfillmentMessageText.fromMap(
              (map['text'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
