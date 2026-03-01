/// Used by the Application Insights system to determine what kind of flow this component was created by. This is to be set to 'Bluefield' when creating/updating a component via the REST API.
enum FlowType {
  valueBluefield("Bluefield");

  const FlowType(this.value);
  final String value;

  static FlowType fromValue(String value) {
    for (final item in FlowType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowType value: $value');
  }
}

