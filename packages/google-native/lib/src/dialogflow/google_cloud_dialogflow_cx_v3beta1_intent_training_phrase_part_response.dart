// ignore_for_file: unused_element, unnecessary_cast

/// Represents a part of a training phrase.
class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse {
  /// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  final String parameterId;

  /// The text for this part.
  final String text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse].
  /// [parameterId] The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  /// [text] The text for this part.
  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse({
    required this.parameterId,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parameterId': parameterId, 'text': text};
  }

  factory GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse(
      parameterId: map['parameterId'] as String,
      text: map['text'] as String,
    );
  }
}
