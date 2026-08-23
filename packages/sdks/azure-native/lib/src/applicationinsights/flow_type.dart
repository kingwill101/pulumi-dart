/// Used by the Application Insights system to determine what kind of flow this component was created by. This is to be set to 'Bluefield' when creating/updating a component via the REST API.
enum FlowType {
  bluefield("Bluefield");

  const FlowType(this.wireValue);
  final String wireValue;

  static FlowType fromValue(String value) {
    for (final item in FlowType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowType value: $value');
  }
}
