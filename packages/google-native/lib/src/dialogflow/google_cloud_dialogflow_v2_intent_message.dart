// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_intent_message_basic_card.dart';
import 'google_cloud_dialogflow_v2_intent_message_browse_carousel_card.dart';
import 'google_cloud_dialogflow_v2_intent_message_card.dart';
import 'google_cloud_dialogflow_v2_intent_message_carousel_select.dart';
import 'google_cloud_dialogflow_v2_intent_message_image.dart';
import 'google_cloud_dialogflow_v2_intent_message_link_out_suggestion.dart';
import 'google_cloud_dialogflow_v2_intent_message_list_select.dart';
import 'google_cloud_dialogflow_v2_intent_message_media_content.dart';
import 'google_cloud_dialogflow_v2_intent_message_platform.dart';
import 'google_cloud_dialogflow_v2_intent_message_quick_replies.dart';
import 'google_cloud_dialogflow_v2_intent_message_simple_responses.dart';
import 'google_cloud_dialogflow_v2_intent_message_suggestions.dart';
import 'google_cloud_dialogflow_v2_intent_message_table_card.dart';
import 'google_cloud_dialogflow_v2_intent_message_text.dart';

/// A rich response message. Corresponds to the intent `Response` field in the Dialogflow console. For more information, see [Rich response messages](https://cloud.google.com/dialogflow/docs/intents-rich-messages).
class GoogleCloudDialogflowV2IntentMessage {
  /// The basic card response for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageBasicCard? basicCard;
  /// Browse carousel card for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard? browseCarouselCard;
  /// The card response.
  final GoogleCloudDialogflowV2IntentMessageCard? card;
  /// The carousel card response for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageCarouselSelect? carouselSelect;
  /// The image response.
  final GoogleCloudDialogflowV2IntentMessageImage? image;
  /// The link out suggestion chip for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion? linkOutSuggestion;
  /// The list card response for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageListSelect? listSelect;
  /// The media content card for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageMediaContent? mediaContent;
  /// A custom platform-specific response.
  final Map<String, String>? payload;
  /// Optional. The platform that this message is intended for.
  final GoogleCloudDialogflowV2IntentMessagePlatform? platform;
  /// The quick replies response.
  final GoogleCloudDialogflowV2IntentMessageQuickReplies? quickReplies;
  /// The voice and text-only responses for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageSimpleResponses? simpleResponses;
  /// The suggestion chips for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageSuggestions? suggestions;
  /// Table card for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageTableCard? tableCard;
  /// The text response.
  final GoogleCloudDialogflowV2IntentMessageText? text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessage].
  /// [basicCard] The basic card response for Actions on Google.
  /// [browseCarouselCard] Browse carousel card for Actions on Google.
  /// [card] The card response.
  /// [carouselSelect] The carousel card response for Actions on Google.
  /// [image] The image response.
  /// [linkOutSuggestion] The link out suggestion chip for Actions on Google.
  /// [listSelect] The list card response for Actions on Google.
  /// [mediaContent] The media content card for Actions on Google.
  /// [payload] A custom platform-specific response.
  /// [platform] Optional. The platform that this message is intended for.
  /// [quickReplies] The quick replies response.
  /// [simpleResponses] The voice and text-only responses for Actions on Google.
  /// [suggestions] The suggestion chips for Actions on Google.
  /// [tableCard] Table card for Actions on Google.
  /// [text] The text response.
  GoogleCloudDialogflowV2IntentMessage({
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
    this.simpleResponses,
    this.suggestions,
    this.tableCard,
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
      'simpleResponses': ?simpleResponses == null ? null : simpleResponses!.toMap(),
      'suggestions': ?suggestions == null ? null : suggestions!.toMap(),
      'tableCard': ?tableCard == null ? null : tableCard!.toMap(),
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessage(
      basicCard: map['basicCard'] == null ? null : GoogleCloudDialogflowV2IntentMessageBasicCard.fromMap((map['basicCard'] as Map).cast<String, dynamic>()),
      browseCarouselCard: map['browseCarouselCard'] == null ? null : GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromMap((map['browseCarouselCard'] as Map).cast<String, dynamic>()),
      card: map['card'] == null ? null : GoogleCloudDialogflowV2IntentMessageCard.fromMap((map['card'] as Map).cast<String, dynamic>()),
      carouselSelect: map['carouselSelect'] == null ? null : GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromMap((map['carouselSelect'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : GoogleCloudDialogflowV2IntentMessageImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      linkOutSuggestion: map['linkOutSuggestion'] == null ? null : GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromMap((map['linkOutSuggestion'] as Map).cast<String, dynamic>()),
      listSelect: map['listSelect'] == null ? null : GoogleCloudDialogflowV2IntentMessageListSelect.fromMap((map['listSelect'] as Map).cast<String, dynamic>()),
      mediaContent: map['mediaContent'] == null ? null : GoogleCloudDialogflowV2IntentMessageMediaContent.fromMap((map['mediaContent'] as Map).cast<String, dynamic>()),
      payload: map['payload'] == null ? null : (map['payload'] as Map).cast<String, String>(),
      platform: map['platform'] == null ? null : GoogleCloudDialogflowV2IntentMessagePlatform.fromValue(map['platform'] as String),
      quickReplies: map['quickReplies'] == null ? null : GoogleCloudDialogflowV2IntentMessageQuickReplies.fromMap((map['quickReplies'] as Map).cast<String, dynamic>()),
      simpleResponses: map['simpleResponses'] == null ? null : GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromMap((map['simpleResponses'] as Map).cast<String, dynamic>()),
      suggestions: map['suggestions'] == null ? null : GoogleCloudDialogflowV2IntentMessageSuggestions.fromMap((map['suggestions'] as Map).cast<String, dynamic>()),
      tableCard: map['tableCard'] == null ? null : GoogleCloudDialogflowV2IntentMessageTableCard.fromMap((map['tableCard'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : GoogleCloudDialogflowV2IntentMessageText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

