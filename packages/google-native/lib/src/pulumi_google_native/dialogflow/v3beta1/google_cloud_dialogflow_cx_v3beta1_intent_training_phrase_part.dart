// ignore_for_file: unused_element, unnecessary_cast

/// Represents a part of a training phrase.
class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart {
  /// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  final String? parameterId;

  /// The text for this part.
  final String text;

  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart({
    this.parameterId,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parameterIdValue = parameterId;
    if (parameterIdValue != null) {
      map['parameterId'] = parameterIdValue;
    }
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart(
      parameterId:
          map['parameterId'] == null ? null : map['parameterId'] as String,
      text: map['text'] as String,
    );
  }
}
