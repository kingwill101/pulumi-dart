// ignore_for_file: unused_element, unnecessary_cast

import '../cx_page_entry_fulfillment_message_conversation_success/cx_page_entry_fulfillment_message_conversation_success.dart';
import '../cx_page_entry_fulfillment_message_live_agent_handoff/cx_page_entry_fulfillment_message_live_agent_handoff.dart';
import '../cx_page_entry_fulfillment_message_output_audio_text/cx_page_entry_fulfillment_message_output_audio_text.dart';
import '../cx_page_entry_fulfillment_message_play_audio/cx_page_entry_fulfillment_message_play_audio.dart';
import '../cx_page_entry_fulfillment_message_telephony_transfer_call/cx_page_entry_fulfillment_message_telephony_transfer_call.dart';
import '../cx_page_entry_fulfillment_message_text/cx_page_entry_fulfillment_message_text.dart';

class CxPageEntryFulfillmentMessage {
  /// The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.
  final String? channel;

  /// Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.
  /// Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess.
  /// You may set this, for example:
  /// * In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.
  /// * In a webhook response when you determine that you handled the customer issue.
  /// This field is part of a union field <span pulumi-lang-nodejs="`message`" pulumi-lang-dotnet="`Message`" pulumi-lang-go="`message`" pulumi-lang-python="`message`" pulumi-lang-yaml="`message`" pulumi-lang-java="`message`">`message`</span>: Only one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span>, <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span>, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxPageEntryFulfillmentMessageConversationSuccess? conversationSuccess;

  /// Indicates that the conversation should be handed off to a live agent.
  /// Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.
  /// You may set this, for example:
  /// * In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.
  /// * In a webhook response when you determine that the customer issue can only be handled by a human.
  /// This field is part of a union field <span pulumi-lang-nodejs="`message`" pulumi-lang-dotnet="`Message`" pulumi-lang-go="`message`" pulumi-lang-python="`message`" pulumi-lang-yaml="`message`" pulumi-lang-java="`message`">`message`</span>: Only one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span>, <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span>, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxPageEntryFulfillmentMessageLiveAgentHandoff? liveAgentHandoff;

  /// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
  /// This field is part of a union field <span pulumi-lang-nodejs="`message`" pulumi-lang-dotnet="`Message`" pulumi-lang-go="`message`" pulumi-lang-python="`message`" pulumi-lang-yaml="`message`" pulumi-lang-java="`message`">`message`</span>: Only one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span>, <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span>, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxPageEntryFulfillmentMessageOutputAudioText? outputAudioText;

  /// Returns a response containing a custom, platform-specific payload.
  /// This field is part of a union field <span pulumi-lang-nodejs="`message`" pulumi-lang-dotnet="`Message`" pulumi-lang-go="`message`" pulumi-lang-python="`message`" pulumi-lang-yaml="`message`" pulumi-lang-java="`message`">`message`</span>: Only one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span>, <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span>, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  final String? payload;

  /// Specifies an audio clip to be played by the client as part of the response.
  /// This field is part of a union field <span pulumi-lang-nodejs="`message`" pulumi-lang-dotnet="`Message`" pulumi-lang-go="`message`" pulumi-lang-python="`message`" pulumi-lang-yaml="`message`" pulumi-lang-java="`message`">`message`</span>: Only one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span>, <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span>, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxPageEntryFulfillmentMessagePlayAudio? playAudio;

  /// Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
  /// This field is part of a union field <span pulumi-lang-nodejs="`message`" pulumi-lang-dotnet="`Message`" pulumi-lang-go="`message`" pulumi-lang-python="`message`" pulumi-lang-yaml="`message`" pulumi-lang-java="`message`">`message`</span>: Only one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span>, <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span>, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxPageEntryFulfillmentMessageTelephonyTransferCall?
      telephonyTransferCall;

  /// The text response message.
  /// This field is part of a union field <span pulumi-lang-nodejs="`message`" pulumi-lang-dotnet="`Message`" pulumi-lang-go="`message`" pulumi-lang-python="`message`" pulumi-lang-yaml="`message`" pulumi-lang-java="`message`">`message`</span>: Only one of <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span>, <span pulumi-lang-nodejs="`payload`" pulumi-lang-dotnet="`Payload`" pulumi-lang-go="`payload`" pulumi-lang-python="`payload`" pulumi-lang-yaml="`payload`" pulumi-lang-java="`payload`">`payload`</span>, `conversationSuccess`, `outputAudioText`, `liveAgentHandoff`, `endInteraction`, `playAudio`, `mixedAudio`, `telephonyTransferCall`, or `knowledgeInfoCard` may be set.
  /// Structure is documented below.
  final CxPageEntryFulfillmentMessageText? text;

  CxPageEntryFulfillmentMessage({
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
    final map = <String, dynamic>{};
    final channelValue = channel;
    if (channelValue != null) {
      map['channel'] = channelValue;
    }
    final conversationSuccessValue = conversationSuccess;
    if (conversationSuccessValue != null) {
      map['conversationSuccess'] = conversationSuccessValue.toMap();
    }
    final liveAgentHandoffValue = liveAgentHandoff;
    if (liveAgentHandoffValue != null) {
      map['liveAgentHandoff'] = liveAgentHandoffValue.toMap();
    }
    final outputAudioTextValue = outputAudioText;
    if (outputAudioTextValue != null) {
      map['outputAudioText'] = outputAudioTextValue.toMap();
    }
    final payloadValue = payload;
    if (payloadValue != null) {
      map['payload'] = payloadValue;
    }
    final playAudioValue = playAudio;
    if (playAudioValue != null) {
      map['playAudio'] = playAudioValue.toMap();
    }
    final telephonyTransferCallValue = telephonyTransferCall;
    if (telephonyTransferCallValue != null) {
      map['telephonyTransferCall'] = telephonyTransferCallValue.toMap();
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue.toMap();
    }
    return map;
  }

  factory CxPageEntryFulfillmentMessage.fromMap(Map<String, dynamic> map) {
    return CxPageEntryFulfillmentMessage(
      channel: map['channel'] == null ? null : map['channel'] as String,
      conversationSuccess: map['conversationSuccess'] == null
          ? null
          : CxPageEntryFulfillmentMessageConversationSuccess.fromMap(
              (map['conversationSuccess'] as Map).cast<String, dynamic>()),
      liveAgentHandoff: map['liveAgentHandoff'] == null
          ? null
          : CxPageEntryFulfillmentMessageLiveAgentHandoff.fromMap(
              (map['liveAgentHandoff'] as Map).cast<String, dynamic>()),
      outputAudioText: map['outputAudioText'] == null
          ? null
          : CxPageEntryFulfillmentMessageOutputAudioText.fromMap(
              (map['outputAudioText'] as Map).cast<String, dynamic>()),
      payload: map['payload'] == null ? null : map['payload'] as String,
      playAudio: map['playAudio'] == null
          ? null
          : CxPageEntryFulfillmentMessagePlayAudio.fromMap(
              (map['playAudio'] as Map).cast<String, dynamic>()),
      telephonyTransferCall: map['telephonyTransferCall'] == null
          ? null
          : CxPageEntryFulfillmentMessageTelephonyTransferCall.fromMap(
              (map['telephonyTransferCall'] as Map).cast<String, dynamic>()),
      text: map['text'] == null
          ? null
          : CxPageEntryFulfillmentMessageText.fromMap(
              (map['text'] as Map).cast<String, dynamic>()),
    );
  }
}
