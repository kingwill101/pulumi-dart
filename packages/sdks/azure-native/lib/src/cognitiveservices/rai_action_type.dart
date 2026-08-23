/// The action types to apply to the content filters
enum RaiActionType {
  none("None"),
  bLOCKING("BLOCKING"),
  aNNOTATING("ANNOTATING"),
  hITL("HITL"),
  rETRY("RETRY");

  const RaiActionType(this.wireValue);
  final String wireValue;

  static RaiActionType fromValue(String value) {
    for (final item in RaiActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiActionType value: $value');
  }
}
