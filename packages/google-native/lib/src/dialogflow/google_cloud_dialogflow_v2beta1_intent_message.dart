// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_carousel_select.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_link_out_suggestion.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_list_select.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_media_content.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_platform.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_quick_replies.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_carousel_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_standalone_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_text.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_simple_responses.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_suggestions.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_table_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_play_audio.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_synthesize_speech.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_transfer_call.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_text.dart';

/// Corresponds to the `Response` field in the Dialogflow console.
class GoogleCloudDialogflowV2beta1IntentMessage {
  /// Displays a basic card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageBasicCard? basicCard;
  /// Browse carousel card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard? browseCarouselCard;
  /// Displays a card.
  final GoogleCloudDialogflowV2beta1IntentMessageCard? card;
  /// Displays a carousel card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect? carouselSelect;
  /// Displays an image.
  final GoogleCloudDialogflowV2beta1IntentMessageImage? image;
  /// Displays a link out suggestion chip for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion? linkOutSuggestion;
  /// Displays a list card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageListSelect? listSelect;
  /// The media content card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageMediaContent? mediaContent;
  /// A custom platform-specific response.
  final Map<String, String>? payload;
  /// Optional. The platform that this message is intended for.
  final GoogleCloudDialogflowV2beta1IntentMessagePlatform? platform;
  /// Displays quick replies.
  final GoogleCloudDialogflowV2beta1IntentMessageQuickReplies? quickReplies;
  /// Rich Business Messaging (RBM) carousel rich card response.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard? rbmCarouselRichCard;
  /// Standalone Rich Business Messaging (RBM) rich card response.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard? rbmStandaloneRichCard;
  /// Rich Business Messaging (RBM) text response. RBM allows businesses to send enriched and branded versions of SMS. See https://jibe.google.com/business-messaging.
  final GoogleCloudDialogflowV2beta1IntentMessageRbmText? rbmText;
  /// Returns a voice or text-only response for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses? simpleResponses;
  /// Displays suggestion chips for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageSuggestions? suggestions;
  /// Table card for Actions on Google.
  final GoogleCloudDialogflowV2beta1IntentMessageTableCard? tableCard;
  /// Plays audio from a file in Telephony Gateway.
  final GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio? telephonyPlayAudio;
  /// Synthesizes speech in Telephony Gateway.
  final GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech? telephonySynthesizeSpeech;
  /// Transfers the call in Telephony Gateway.
  final GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall? telephonyTransferCall;
  /// Returns a text response.
  final GoogleCloudDialogflowV2beta1IntentMessageText? text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessage].
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
  GoogleCloudDialogflowV2beta1IntentMessage({
    this.basicCard,
    this.browseCarouselCard,
    this.card,
    this.carouselSelect,
    this.image,
    this.linkOutSuggestion,
    this.listSelect,
    this.mediaContent,
    this.payload,
    this.platform,
    this.quickReplies,
    this.rbmCarouselRichCard,
    this.rbmStandaloneRichCard,
    this.rbmText,
    this.simpleResponses,
    this.suggestions,
    this.tableCard,
    this.telephonyPlayAudio,
    this.telephonySynthesizeSpeech,
    this.telephonyTransferCall,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicCard': ?basicCard == null ? null : basicCard!.toMap(),
      'browseCarouselCard': ?browseCarouselCard == null ? null : browseCarouselCard!.toMap(),
      'card': ?card == null ? null : card!.toMap(),
      'carouselSelect': ?carouselSelect == null ? null : carouselSelect!.toMap(),
      'image': ?image == null ? null : image!.toMap(),
      'linkOutSuggestion': ?linkOutSuggestion == null ? null : linkOutSuggestion!.toMap(),
      'listSelect': ?listSelect == null ? null : listSelect!.toMap(),
      'mediaContent': ?mediaContent == null ? null : mediaContent!.toMap(),
      'payload': ?payload,
      'platform': ?platform == null ? null : platform!.value,
      'quickReplies': ?quickReplies == null ? null : quickReplies!.toMap(),
      'rbmCarouselRichCard': ?rbmCarouselRichCard == null ? null : rbmCarouselRichCard!.toMap(),
      'rbmStandaloneRichCard': ?rbmStandaloneRichCard == null ? null : rbmStandaloneRichCard!.toMap(),
      'rbmText': ?rbmText == null ? null : rbmText!.toMap(),
      'simpleResponses': ?simpleResponses == null ? null : simpleResponses!.toMap(),
      'suggestions': ?suggestions == null ? null : suggestions!.toMap(),
      'tableCard': ?tableCard == null ? null : tableCard!.toMap(),
      'telephonyPlayAudio': ?telephonyPlayAudio == null ? null : telephonyPlayAudio!.toMap(),
      'telephonySynthesizeSpeech': ?telephonySynthesizeSpeech == null ? null : telephonySynthesizeSpeech!.toMap(),
      'telephonyTransferCall': ?telephonyTransferCall == null ? null : telephonyTransferCall!.toMap(),
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessage(
      basicCard: map['basicCard'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromMap((map['basicCard'] as Map).cast<String, dynamic>()),
      browseCarouselCard: map['browseCarouselCard'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard.fromMap((map['browseCarouselCard'] as Map).cast<String, dynamic>()),
      card: map['card'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageCard.fromMap((map['card'] as Map).cast<String, dynamic>()),
      carouselSelect: map['carouselSelect'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromMap((map['carouselSelect'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      linkOutSuggestion: map['linkOutSuggestion'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.fromMap((map['linkOutSuggestion'] as Map).cast<String, dynamic>()),
      listSelect: map['listSelect'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromMap((map['listSelect'] as Map).cast<String, dynamic>()),
      mediaContent: map['mediaContent'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageMediaContent.fromMap((map['mediaContent'] as Map).cast<String, dynamic>()),
      payload: map['payload'] == null ? null : (map['payload'] as Map).cast<String, String>(),
      platform: map['platform'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessagePlatform.fromValue(map['platform'] as String),
      quickReplies: map['quickReplies'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromMap((map['quickReplies'] as Map).cast<String, dynamic>()),
      rbmCarouselRichCard: map['rbmCarouselRichCard'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromMap((map['rbmCarouselRichCard'] as Map).cast<String, dynamic>()),
      rbmStandaloneRichCard: map['rbmStandaloneRichCard'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromMap((map['rbmStandaloneRichCard'] as Map).cast<String, dynamic>()),
      rbmText: map['rbmText'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromMap((map['rbmText'] as Map).cast<String, dynamic>()),
      simpleResponses: map['simpleResponses'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromMap((map['simpleResponses'] as Map).cast<String, dynamic>()),
      suggestions: map['suggestions'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromMap((map['suggestions'] as Map).cast<String, dynamic>()),
      tableCard: map['tableCard'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromMap((map['tableCard'] as Map).cast<String, dynamic>()),
      telephonyPlayAudio: map['telephonyPlayAudio'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromMap((map['telephonyPlayAudio'] as Map).cast<String, dynamic>()),
      telephonySynthesizeSpeech: map['telephonySynthesizeSpeech'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromMap((map['telephonySynthesizeSpeech'] as Map).cast<String, dynamic>()),
      telephonyTransferCall: map['telephonyTransferCall'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromMap((map['telephonyTransferCall'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : GoogleCloudDialogflowV2beta1IntentMessageText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

