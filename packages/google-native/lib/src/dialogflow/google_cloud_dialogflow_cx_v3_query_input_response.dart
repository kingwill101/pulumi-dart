// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_audio_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_dtmf_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_event_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_intent_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_text_input_response.dart';

/// Represents the query input. It can contain one of: 1. A conversational query in the form of text. 2. An intent query that specifies which intent to trigger. 3. Natural language speech audio to be processed. 4. An event to be triggered. 5. DTMF digits to invoke an intent and fill in parameter value.
class GoogleCloudDialogflowCxV3QueryInputResponse {
  /// The natural language speech audio to be processed.
  final GoogleCloudDialogflowCxV3AudioInputResponse audio;

  /// The DTMF event to be handled.
  final GoogleCloudDialogflowCxV3DtmfInputResponse dtmf;

  /// The event to be triggered.
  final GoogleCloudDialogflowCxV3EventInputResponse event;

  /// The intent to be triggered.
  final GoogleCloudDialogflowCxV3IntentInputResponse intent;

  /// The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  final String languageCode;

  /// The natural language text to be processed.
  final GoogleCloudDialogflowCxV3TextInputResponse text;

  /// Creates a new [GoogleCloudDialogflowCxV3QueryInputResponse].
  /// [audio] The natural language speech audio to be processed.
  /// [dtmf] The DTMF event to be handled.
  /// [event] The event to be triggered.
  /// [intent] The intent to be triggered.
  /// [languageCode] The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  /// [text] The natural language text to be processed.
  GoogleCloudDialogflowCxV3QueryInputResponse({
    required this.audio,
    required this.dtmf,
    required this.event,
    required this.intent,
    required this.languageCode,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': audio.toMap(),
      'dtmf': dtmf.toMap(),
      'event': event.toMap(),
      'intent': intent.toMap(),
      'languageCode': languageCode,
      'text': text.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3QueryInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3QueryInputResponse(
      audio: GoogleCloudDialogflowCxV3AudioInputResponse.fromMap(
        (map['audio'] as Map).cast<String, dynamic>(),
      ),
      dtmf: GoogleCloudDialogflowCxV3DtmfInputResponse.fromMap(
        (map['dtmf'] as Map).cast<String, dynamic>(),
      ),
      event: GoogleCloudDialogflowCxV3EventInputResponse.fromMap(
        (map['event'] as Map).cast<String, dynamic>(),
      ),
      intent: GoogleCloudDialogflowCxV3IntentInputResponse.fromMap(
        (map['intent'] as Map).cast<String, dynamic>(),
      ),
      languageCode: map['languageCode'] as String,
      text: GoogleCloudDialogflowCxV3TextInputResponse.fromMap(
        (map['text'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
