/// Optional. The platform that this message is intended for.
enum GoogleCloudDialogflowV2beta1IntentMessagePlatform {
  platformUnspecified("PLATFORM_UNSPECIFIED"),
  facebook("FACEBOOK"),
  slack("SLACK"),
  telegram("TELEGRAM"),
  kik("KIK"),
  skype("SKYPE"),
  line("LINE"),
  viber("VIBER"),
  actionsOnGoogle("ACTIONS_ON_GOOGLE"),
  telephony("TELEPHONY"),
  googleHangouts("GOOGLE_HANGOUTS");

  const GoogleCloudDialogflowV2beta1IntentMessagePlatform(this.value);
  final String value;

  static GoogleCloudDialogflowV2beta1IntentMessagePlatform fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1IntentMessagePlatform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1IntentMessagePlatform value: $value');
  }
}

