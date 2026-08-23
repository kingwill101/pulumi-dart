/// If omitted, the default value is Requeue.
enum ComputeNodeDeallocationOption {
  requeue("Requeue"),
  terminate("Terminate"),
  taskCompletion("TaskCompletion"),
  retainedData("RetainedData");

  const ComputeNodeDeallocationOption(this.wireValue);
  final String wireValue;

  static ComputeNodeDeallocationOption fromValue(String value) {
    for (final item in ComputeNodeDeallocationOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeNodeDeallocationOption value: $value');
  }
}
