/// Optional. The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement. If a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
enum GoogleCloudDialogflowV2VoiceSelectionParamsSsmlGender {
  ssmlVoiceGenderUnspecified("SSML_VOICE_GENDER_UNSPECIFIED"),
  ssmlVoiceGenderMale("SSML_VOICE_GENDER_MALE"),
  ssmlVoiceGenderFemale("SSML_VOICE_GENDER_FEMALE"),
  ssmlVoiceGenderNeutral("SSML_VOICE_GENDER_NEUTRAL");

  const GoogleCloudDialogflowV2VoiceSelectionParamsSsmlGender(this.value);
  final String value;

  static GoogleCloudDialogflowV2VoiceSelectionParamsSsmlGender fromValue(
      String value) {
    for (final item
        in GoogleCloudDialogflowV2VoiceSelectionParamsSsmlGender.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowV2VoiceSelectionParamsSsmlGender value: $value');
  }
}
