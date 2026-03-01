/// The action types to apply to the content filters
enum RaiActionType {
  valueNone("None"),
  valueBLOCKING("BLOCKING"),
  valueANNOTATING("ANNOTATING"),
  valueHITL("HITL"),
  valueRETRY("RETRY");

  const RaiActionType(this.value);
  final String value;

  static RaiActionType fromValue(String value) {
    for (final item in RaiActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiActionType value: $value');
  }
}

