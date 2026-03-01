// ignore_for_file: unused_element, unnecessary_cast

/// Represents a part of a training phrase.
class GoogleCloudDialogflowCxV3IntentTrainingPhrasePart {
  /// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  final String? parameterId;

  /// The text for this part.
  final String text;

  /// Creates a new [GoogleCloudDialogflowCxV3IntentTrainingPhrasePart].
  /// [parameterId] The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  /// [text] The text for this part.
  GoogleCloudDialogflowCxV3IntentTrainingPhrasePart({
    this.parameterId,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parameterId': ?parameterId, 'text': text};
  }

  factory GoogleCloudDialogflowCxV3IntentTrainingPhrasePart.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3IntentTrainingPhrasePart(
      parameterId: map['parameterId'] == null
          ? null
          : map['parameterId'] as String,
      text: map['text'] as String,
    );
  }
}
