/// Optional. The platform that this message is intended for.
enum GoogleCloudDialogflowV2IntentMessagePlatform {
  platformUnspecified("PLATFORM_UNSPECIFIED"),
  facebook("FACEBOOK"),
  slack("SLACK"),
  telegram("TELEGRAM"),
  kik("KIK"),
  skype("SKYPE"),
  line("LINE"),
  viber("VIBER"),
  actionsOnGoogle("ACTIONS_ON_GOOGLE"),
  googleHangouts("GOOGLE_HANGOUTS");

  const GoogleCloudDialogflowV2IntentMessagePlatform(this.value);
  final String value;

  static GoogleCloudDialogflowV2IntentMessagePlatform fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2IntentMessagePlatform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowV2IntentMessagePlatform value: $value');
  }
}
