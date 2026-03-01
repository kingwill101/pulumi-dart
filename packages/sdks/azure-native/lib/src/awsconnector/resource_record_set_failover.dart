/// Property value
enum ResourceRecordSetFailover {
  pRIMARY("PRIMARY"),
  sECONDARY("SECONDARY");

  const ResourceRecordSetFailover(this.value);
  final String value;

  static ResourceRecordSetFailover fromValue(String value) {
    for (final item in ResourceRecordSetFailover.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceRecordSetFailover value: $value');
  }
}

