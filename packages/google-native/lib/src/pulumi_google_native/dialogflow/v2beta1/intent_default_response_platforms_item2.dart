enum IntentDefaultResponsePlatformsItem2 {
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

  const IntentDefaultResponsePlatformsItem2(this.value);
  final String value;

  static IntentDefaultResponsePlatformsItem2 fromValue(String value) {
    for (final item in IntentDefaultResponsePlatformsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown IntentDefaultResponsePlatformsItem2 value: $value');
  }
}
