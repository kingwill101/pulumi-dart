enum IntentDefaultResponsePlatformsItemDialogflowV2beta1 {
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

  const IntentDefaultResponsePlatformsItemDialogflowV2beta1(this.value);
  final String value;

  static IntentDefaultResponsePlatformsItemDialogflowV2beta1 fromValue(String value) {
    for (final item in IntentDefaultResponsePlatformsItemDialogflowV2beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntentDefaultResponsePlatformsItemDialogflowV2beta1 value: $value');
  }
}

