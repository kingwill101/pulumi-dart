enum IntentDefaultResponsePlatformsItem {
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

  const IntentDefaultResponsePlatformsItem(this.value);
  final String value;

  static IntentDefaultResponsePlatformsItem fromValue(String value) {
    for (final item in IntentDefaultResponsePlatformsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown IntentDefaultResponsePlatformsItem value: $value');
  }
}
