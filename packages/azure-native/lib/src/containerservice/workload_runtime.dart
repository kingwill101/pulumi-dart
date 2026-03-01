/// Determines the type of workload a node can run.
enum WorkloadRuntime {
  valueOCIContainer("OCIContainer"),
  valueWasmWasi("WasmWasi"),
  valueKataVmIsolation("KataVmIsolation");

  const WorkloadRuntime(this.value);
  final String value;

  static WorkloadRuntime fromValue(String value) {
    for (final item in WorkloadRuntime.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadRuntime value: $value');
  }
}

