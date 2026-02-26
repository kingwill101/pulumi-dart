enum FilterEventTypeItem2 {
  eventTypeUnspecified("EVENT_TYPE_UNSPECIFIED"),
  upgradeAvailableEvent("UPGRADE_AVAILABLE_EVENT"),
  upgradeEvent("UPGRADE_EVENT"),
  securityBulletinEvent("SECURITY_BULLETIN_EVENT");

  const FilterEventTypeItem2(this.value);
  final String value;

  static FilterEventTypeItem2 fromValue(String value) {
    for (final item in FilterEventTypeItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterEventTypeItem2 value: $value');
  }
}
