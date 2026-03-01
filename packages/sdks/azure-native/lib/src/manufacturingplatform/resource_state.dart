/// State of the resource
enum ResourceState {
  active("Active"),
  inactive("Inactive");

  const ResourceState(this.value);
  final String value;

  static ResourceState fromValue(String value) {
    for (final item in ResourceState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceState value: $value');
  }
}

