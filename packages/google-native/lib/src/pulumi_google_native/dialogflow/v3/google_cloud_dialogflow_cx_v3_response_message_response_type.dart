/// Response type.
enum GoogleCloudDialogflowCxV3ResponseMessageResponseType {
  responseTypeUnspecified("RESPONSE_TYPE_UNSPECIFIED"),
  entryPrompt("ENTRY_PROMPT"),
  parameterPrompt("PARAMETER_PROMPT"),
  handlerPrompt("HANDLER_PROMPT");

  const GoogleCloudDialogflowCxV3ResponseMessageResponseType(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3ResponseMessageResponseType fromValue(
      String value) {
    for (final item
        in GoogleCloudDialogflowCxV3ResponseMessageResponseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowCxV3ResponseMessageResponseType value: $value');
  }
}
