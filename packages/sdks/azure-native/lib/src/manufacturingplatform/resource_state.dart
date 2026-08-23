/// State of the resource
enum ResourceState {
  active("Active"),
  inactive("Inactive");

  const ResourceState(this.wireValue);
  final String wireValue;

  static ResourceState fromValue(String value) {
    for (final item in ResourceState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceState value: $value');
  }
}
