// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_audio_input.dart';
import 'google_cloud_dialogflow_cx_v3beta1_dtmf_input.dart';
import 'google_cloud_dialogflow_cx_v3beta1_event_input.dart';
import 'google_cloud_dialogflow_cx_v3beta1_intent_input.dart';
import 'google_cloud_dialogflow_cx_v3beta1_text_input.dart';

/// Represents the query input. It can contain one of: 1. A conversational query in the form of text. 2. An intent query that specifies which intent to trigger. 3. Natural language speech audio to be processed. 4. An event to be triggered. 5. DTMF digits to invoke an intent and fill in parameter value.
class GoogleCloudDialogflowCxV3beta1QueryInput {
  /// The natural language speech audio to be processed.
  final GoogleCloudDialogflowCxV3beta1AudioInput? audio;

  /// The DTMF event to be handled.
  final GoogleCloudDialogflowCxV3beta1DtmfInput? dtmf;

  /// The event to be triggered.
  final GoogleCloudDialogflowCxV3beta1EventInput? event;

  /// The intent to be triggered.
  final GoogleCloudDialogflowCxV3beta1IntentInput? intent;

  /// The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.
  final String languageCode;

  /// The natural language text to be processed.
  final GoogleCloudDialogflowCxV3beta1TextInput? text;

  GoogleCloudDialogflowCxV3beta1QueryInput({
    this.audio,
    this.dtmf,
    this.event,
    this.intent,
    required this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioValue = audio;
    if (audioValue != null) {
      map['audio'] = audioValue.toMap();
    }
    final dtmfValue = dtmf;
    if (dtmfValue != null) {
      map['dtmf'] = dtmfValue.toMap();
    }
    final eventValue = event;
    if (eventValue != null) {
      map['event'] = eventValue.toMap();
    }
    final intentValue = intent;
    if (intentValue != null) {
      map['intent'] = intentValue.toMap();
    }
    map['languageCode'] = languageCode;
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1QueryInput.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1QueryInput(
      audio: map['audio'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1AudioInput.fromMap(
              (map['audio'] as Map).cast<String, dynamic>()),
      dtmf: map['dtmf'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1DtmfInput.fromMap(
              (map['dtmf'] as Map).cast<String, dynamic>()),
      event: map['event'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1EventInput.fromMap(
              (map['event'] as Map).cast<String, dynamic>()),
      intent: map['intent'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1IntentInput.fromMap(
              (map['intent'] as Map).cast<String, dynamic>()),
      languageCode: map['languageCode'] as String,
      text: map['text'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1TextInput.fromMap(
              (map['text'] as Map).cast<String, dynamic>()),
    );
  }
}
