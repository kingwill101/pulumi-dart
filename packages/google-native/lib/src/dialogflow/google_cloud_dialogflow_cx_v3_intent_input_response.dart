// ignore_for_file: unused_element, unnecessary_cast

/// Represents the intent to trigger programmatically rather than as a result of natural language processing.
class GoogleCloudDialogflowCxV3IntentInputResponse {
  /// The unique identifier of the intent. Format: `projects//locations//agents//intents/`.
  final String intent;

  /// Creates a new [GoogleCloudDialogflowCxV3IntentInputResponse].
  /// [intent] The unique identifier of the intent. Format: `projects//locations//agents//intents/`.
  GoogleCloudDialogflowCxV3IntentInputResponse({
    required this.intent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intent'] = intent;
    return map;
  }

  factory GoogleCloudDialogflowCxV3IntentInputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3IntentInputResponse(
      intent: map['intent'] as String,
    );
  }
}
