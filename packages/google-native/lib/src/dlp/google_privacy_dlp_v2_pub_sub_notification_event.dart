/// The type of event that triggers a Pub/Sub. At most one `PubSubNotification` per EventType is permitted.
enum GooglePrivacyDlpV2PubSubNotificationEvent {
  eventTypeUnspecified("EVENT_TYPE_UNSPECIFIED"),
  newProfile("NEW_PROFILE"),
  changedProfile("CHANGED_PROFILE"),
  scoreIncreased("SCORE_INCREASED"),
  errorChanged("ERROR_CHANGED");

  const GooglePrivacyDlpV2PubSubNotificationEvent(this.value);
  final String value;

  static GooglePrivacyDlpV2PubSubNotificationEvent fromValue(String value) {
    for (final item in GooglePrivacyDlpV2PubSubNotificationEvent.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GooglePrivacyDlpV2PubSubNotificationEvent value: $value',
    );
  }
}
