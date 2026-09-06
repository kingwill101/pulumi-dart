import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines the type of workload a node can run.
enum WorkloadRuntime implements pulumi.PulumiEnum<String> {
  valueOCIContainer("OCIContainer"),
  valueWasmWasi("WasmWasi"),
  valueKataVmIsolation("KataVmIsolation");

  const WorkloadRuntime(this.wireValue);
  @override
  final String wireValue;

  static WorkloadRuntime fromValue(String value) {
    for (final item in WorkloadRuntime.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadRuntime value: $value');
  }
}
