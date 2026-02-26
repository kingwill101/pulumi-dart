// ignore_for_file: unused_element, unnecessary_cast

/// Represents the intent to trigger programmatically rather than as a result of natural language processing.
class GoogleCloudDialogflowCxV3beta1IntentInputResponse {
  /// The unique identifier of the intent. Format: `projects//locations//agents//intents/`.
  final String intent;

  GoogleCloudDialogflowCxV3beta1IntentInputResponse({
    required this.intent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intent'] = intent;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1IntentInputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1IntentInputResponse(
      intent: map['intent'] as String,
    );
  }
}
