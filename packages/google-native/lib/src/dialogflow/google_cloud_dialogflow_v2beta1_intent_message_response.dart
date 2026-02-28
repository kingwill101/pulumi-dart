// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_carousel_select_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_link_out_suggestion_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_list_select_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_media_content_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_quick_replies_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_carousel_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_standalone_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_text_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_simple_responses_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_suggestions_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_table_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_play_audio_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_synthesize_speech_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_transfer_call_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_text_response.dart';

/// Corresponds to the `Response` field in the Dialogflow console.
class GoogleCloudDialogflowV2beta1IntentMessageResponse {
  /// Displays a basic card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse basicCard;

  /// Browse carousel card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse
      browseCarouselCard;

  /// Displays a card.
  final GoogleCloudDialogflowV2beta1IntentMessageCardResponse card;

  /// Displays a carousel card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse
      carouselSelect;

  /// Displays an image.
  final GoogleCloudDialogflowV2beta1IntentMessageImageResponse image;

  /// Displays a link out suggestion chip for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse
      linkOutSuggestion;

  /// Displays a list card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse listSelect;

  /// The media content card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponse
      mediaContent;

  /// A custom platform-specific response.
  final Map<String, String> payload;

  /// Optional. The platform that this message is intended for.
  final String platform;

  /// Displays quick replies.
  final GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse
      quickReplies;

  /// Rich Business Messaging (RBM) carousel rich card response.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse
      rbmCarouselRichCard;

  /// Standalone Rich Business Messaging (RBM) rich card response.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse
      rbmStandaloneRichCard;

  /// Rich Business Messaging (RBM) text response. RBM allows businesses to send enriched and branded versions of SMS. See https://jibe.google.com/business-messaging.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse rbmText;

  /// Returns a voice or text-only response for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse
      simpleResponses;

  /// Displays suggestion chips for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse
      suggestions;

  /// Table card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse tableCard;

  /// Plays audio from a file in Telephony Gateway.
  final GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudioResponse
      telephonyPlayAudio;

  /// Synthesizes speech in Telephony Gateway.
  final GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeechResponse
      telephonySynthesizeSpeech;

  /// Transfers the call in Telephony Gateway.
  final GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse
      telephonyTransferCall;

  /// Returns a text response.
  final GoogleCloudDialogflowV2beta1IntentMessageTextResponse text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageResponse].
  /// [basicCard] Displays a basic card for Actions on Google.
  /// [browseCarouselCard] Browse carousel card for Actions on Google.
  /// [card] Displays a card.
  /// [carouselSelect] Displays a carousel card for Actions on Google.
  /// [image] Displays an image.
  /// [linkOutSuggestion] Displays a link out suggestion chip for Actions on Google.
  /// [listSelect] Displays a list card for Actions on Google.
  /// [mediaContent] The media content card for Actions on Google.
  /// [payload] A custom platform-specific response.
  /// [platform] Optional. The platform that this message is intended for.
  /// [quickReplies] Displays quick replies.
  /// [rbmCarouselRichCard] Rich Business Messaging (RBM) carousel rich card response.
  /// [rbmStandaloneRichCard] Standalone Rich Business Messaging (RBM) rich card response.
  /// [rbmText] Rich Business Messaging (RBM) text response. RBM allows businesses to send enriched and branded versions of SMS. See https://jibe.google.com/business-messaging.
  /// [simpleResponses] Returns a voice or text-only response for Actions on Google.
  /// [suggestions] Displays suggestion chips for Actions on Google.
  /// [tableCard] Table card for Actions on Google.
  /// [telephonyPlayAudio] Plays audio from a file in Telephony Gateway.
  /// [telephonySynthesizeSpeech] Synthesizes speech in Telephony Gateway.
  /// [telephonyTransferCall] Transfers the call in Telephony Gateway.
  /// [text] Returns a text response.
  GoogleCloudDialogflowV2beta1IntentMessageResponse({
    required this.basicCard,
    required this.browseCarouselCard,
    required this.card,
    required this.carouselSelect,
    required this.image,
    required this.linkOutSuggestion,
    required this.listSelect,
    required this.mediaContent,
    required this.payload,
    required this.platform,
    required this.quickReplies,
    required this.rbmCarouselRichCard,
    required this.rbmStandaloneRichCard,
    required this.rbmText,
    required this.simpleResponses,
    required this.suggestions,
    required this.tableCard,
    required this.telephonyPlayAudio,
    required this.telephonySynthesizeSpeech,
    required this.telephonyTransferCall,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['basicCard'] = basicCard.toMap();
    map['browseCarouselCard'] = browseCarouselCard.toMap();
    map['card'] = card.toMap();
    map['carouselSelect'] = carouselSelect.toMap();
    map['image'] = image.toMap();
    map['linkOutSuggestion'] = linkOutSuggestion.toMap();
    map['listSelect'] = listSelect.toMap();
    map['mediaContent'] = mediaContent.toMap();
    map['payload'] = payload;
    map['platform'] = platform;
    map['quickReplies'] = quickReplies.toMap();
    map['rbmCarouselRichCard'] = rbmCarouselRichCard.toMap();
    map['rbmStandaloneRichCard'] = rbmStandaloneRichCard.toMap();
    map['rbmText'] = rbmText.toMap();
    map['simpleResponses'] = simpleResponses.toMap();
    map['suggestions'] = suggestions.toMap();
    map['tableCard'] = tableCard.toMap();
    map['telephonyPlayAudio'] = telephonyPlayAudio.toMap();
    map['telephonySynthesizeSpeech'] = telephonySynthesizeSpeech.toMap();
    map['telephonyTransferCall'] = telephonyTransferCall.toMap();
    map['text'] = text.toMap();
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageResponse(
      basicCard:
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse.fromMap(
              (map['basicCard'] as Map).cast<String, dynamic>()),
      browseCarouselCard:
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse
              .fromMap(
                  (map['browseCarouselCard'] as Map).cast<String, dynamic>()),
      card: GoogleCloudDialogflowV2beta1IntentMessageCardResponse.fromMap(
          (map['card'] as Map).cast<String, dynamic>()),
      carouselSelect:
          GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse
              .fromMap((map['carouselSelect'] as Map).cast<String, dynamic>()),
      image: GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
      linkOutSuggestion:
          GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse
              .fromMap(
                  (map['linkOutSuggestion'] as Map).cast<String, dynamic>()),
      listSelect:
          GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse.fromMap(
              (map['listSelect'] as Map).cast<String, dynamic>()),
      mediaContent:
          GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponse.fromMap(
              (map['mediaContent'] as Map).cast<String, dynamic>()),
      payload: (map['payload'] as Map).cast<String, String>(),
      platform: map['platform'] as String,
      quickReplies:
          GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse.fromMap(
              (map['quickReplies'] as Map).cast<String, dynamic>()),
      rbmCarouselRichCard:
          GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse
              .fromMap(
                  (map['rbmCarouselRichCard'] as Map).cast<String, dynamic>()),
      rbmStandaloneRichCard:
          GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse
              .fromMap((map['rbmStandaloneRichCard'] as Map)
                  .cast<String, dynamic>()),
      rbmText: GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse.fromMap(
          (map['rbmText'] as Map).cast<String, dynamic>()),
      simpleResponses:
          GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse
              .fromMap((map['simpleResponses'] as Map).cast<String, dynamic>()),
      suggestions:
          GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse.fromMap(
              (map['suggestions'] as Map).cast<String, dynamic>()),
      tableCard:
          GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse.fromMap(
              (map['tableCard'] as Map).cast<String, dynamic>()),
      telephonyPlayAudio:
          GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudioResponse
              .fromMap(
                  (map['telephonyPlayAudio'] as Map).cast<String, dynamic>()),
      telephonySynthesizeSpeech:
          GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeechResponse
              .fromMap((map['telephonySynthesizeSpeech'] as Map)
                  .cast<String, dynamic>()),
      telephonyTransferCall:
          GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse
              .fromMap((map['telephonyTransferCall'] as Map)
                  .cast<String, dynamic>()),
      text: GoogleCloudDialogflowV2beta1IntentMessageTextResponse.fromMap(
          (map['text'] as Map).cast<String, dynamic>()),
    );
  }
}
