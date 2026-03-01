/// Required. The type of the training phrase.
enum GoogleCloudDialogflowV2beta1IntentTrainingPhraseType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  example("EXAMPLE"),
  template("TEMPLATE");

  const GoogleCloudDialogflowV2beta1IntentTrainingPhraseType(this.value);
  final String value;

  static GoogleCloudDialogflowV2beta1IntentTrainingPhraseType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudDialogflowV2beta1IntentTrainingPhraseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDialogflowV2beta1IntentTrainingPhraseType value: $value',
    );
  }
}
