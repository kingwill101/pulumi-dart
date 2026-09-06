import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the orchestration mode for the virtual machine scale set.
enum OrchestrationMode implements pulumi.PulumiEnum<String> {
  uniform("Uniform"),
  flexible("Flexible");

  const OrchestrationMode(this.wireValue);
  @override
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
