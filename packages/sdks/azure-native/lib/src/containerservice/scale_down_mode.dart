/// The scale down mode to use when scaling the Agent Pool. This also effects the cluster autoscaler behavior. If not specified, it defaults to Delete.
enum ScaleDownMode {
  valueDelete("Delete"),
  valueDeallocate("Deallocate");

  const ScaleDownMode(this.wireValue);
  final String wireValue;

  static ScaleDownMode fromValue(String value) {
    for (final item in ScaleDownMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleDownMode value: $value');
  }
}
