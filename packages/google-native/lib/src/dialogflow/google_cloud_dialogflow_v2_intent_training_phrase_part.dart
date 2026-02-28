// ignore_for_file: unused_element, unnecessary_cast

/// Represents a part of a training phrase.
class GoogleCloudDialogflowV2IntentTrainingPhrasePart {
  /// Optional. The parameter name for the value extracted from the annotated part of the example. This field is required for annotated parts of the training phrase.
  final String? alias;

  /// Optional. The entity type name prefixed with `@`. This field is required for annotated parts of the training phrase.
  final String? entityType;

  /// The text for this part.
  final String text;

  /// Optional. Indicates whether the text was manually annotated. This field is set to true when the Dialogflow Console is used to manually annotate the part. When creating an annotated part with the API, you must set this to true.
  final bool? userDefined;

  /// Creates a new [GoogleCloudDialogflowV2IntentTrainingPhrasePart].
  /// [alias] Optional. The parameter name for the value extracted from the annotated part of the example. This field is required for annotated parts of the training phrase.
  /// [entityType] Optional. The entity type name prefixed with `@`. This field is required for annotated parts of the training phrase.
  /// [text] The text for this part.
  /// [userDefined] Optional. Indicates whether the text was manually annotated. This field is set to true when the Dialogflow Console is used to manually annotate the part. When creating an annotated part with the API, you must set this to true.
  GoogleCloudDialogflowV2IntentTrainingPhrasePart({
    this.alias,
    this.entityType,
    required this.text,
    this.userDefined,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasValue = alias;
    if (aliasValue != null) {
      map['alias'] = aliasValue;
    }
    final entityTypeValue = entityType;
    if (entityTypeValue != null) {
      map['entityType'] = entityTypeValue;
    }
    map['text'] = text;
    final userDefinedValue = userDefined;
    if (userDefinedValue != null) {
      map['userDefined'] = userDefinedValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentTrainingPhrasePart(
      alias: map['alias'] == null ? null : map['alias'] as String,
      entityType:
          map['entityType'] == null ? null : map['entityType'] as String,
      text: map['text'] as String,
      userDefined:
          map['userDefined'] == null ? null : map['userDefined'] as bool,
    );
  }
}
