// ignore_for_file: unused_element, unnecessary_cast

class CxIntentTrainingPhrasePart {
  /// The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.
  final String? parameterId;

  /// The text for this part.
  final String text;

  CxIntentTrainingPhrasePart({
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

  factory CxIntentTrainingPhrasePart.fromMap(Map<String, dynamic> map) {
    return CxIntentTrainingPhrasePart(
      parameterId:
          map['parameterId'] == null ? null : map['parameterId'] as String,
      text: map['text'] as String,
    );
  }
}
