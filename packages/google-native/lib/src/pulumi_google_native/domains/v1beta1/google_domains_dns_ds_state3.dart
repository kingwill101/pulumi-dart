/// Required. The state of DS records for this domain. Used to enable or disable automatic DNSSEC.
enum GoogleDomainsDnsDsState3 {
  dsStateUnspecified("DS_STATE_UNSPECIFIED"),
  dsRecordsUnpublished("DS_RECORDS_UNPUBLISHED"),
  dsRecordsPublished("DS_RECORDS_PUBLISHED");

  const GoogleDomainsDnsDsState3(this.value);
  final String value;

  static GoogleDomainsDnsDsState3 fromValue(String value) {
    for (final item in GoogleDomainsDnsDsState3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleDomainsDnsDsState3 value: $value');
  }
}
