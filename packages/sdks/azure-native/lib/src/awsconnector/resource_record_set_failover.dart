/// Property value
enum ResourceRecordSetFailover {
  pRIMARY("PRIMARY"),
  sECONDARY("SECONDARY");

  const ResourceRecordSetFailover(this.wireValue);
  final String wireValue;

  static ResourceRecordSetFailover fromValue(String value) {
    for (final item in ResourceRecordSetFailover.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceRecordSetFailover value: $value');
  }
}

