/// The write behavior for the operation. Default is Insert.
enum SalesforceV2SinkWriteBehavior {
  valueInsert("Insert"),
  valueUpsert("Upsert");

  const SalesforceV2SinkWriteBehavior(this.value);
  final String value;

  static SalesforceV2SinkWriteBehavior fromValue(String value) {
    for (final item in SalesforceV2SinkWriteBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SalesforceV2SinkWriteBehavior value: $value');
  }
}

