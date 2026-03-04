/// Specifies the orchestration mode for the virtual machine scale set.
enum OrchestrationMode {
  uniform("Uniform"),
  flexible("Flexible");

  const OrchestrationMode(this.wireValue);
  final String wireValue;

  static OrchestrationMode fromValue(String value) {
    for (final item in OrchestrationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrchestrationMode value: $value');
  }
}
