/// Specifies the orchestration mode for the virtual machine scale set.
enum OrchestrationMode {
  uniform("Uniform"),
  flexible("Flexible");

  const OrchestrationMode(this.value);
  final String value;

  static OrchestrationMode fromValue(String value) {
    for (final item in OrchestrationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrchestrationMode value: $value');
  }
}

