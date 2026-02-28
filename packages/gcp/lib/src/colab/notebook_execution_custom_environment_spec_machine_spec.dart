// ignore_for_file: unused_element, unnecessary_cast

class NotebookExecutionCustomEnvironmentSpecMachineSpec {
  /// The number of accelerators used by the runtime.
  final int? acceleratorCount;

  /// The type of hardware accelerator used by the runtime. If specified, acceleratorCount must also be specified.
  final String? acceleratorType;

  /// The Compute Engine machine type selected for the runtime.
  final String? machineType;

  /// Creates a new [NotebookExecutionCustomEnvironmentSpecMachineSpec].
  /// [acceleratorCount] The number of accelerators used by the runtime.
  /// [acceleratorType] The type of hardware accelerator used by the runtime. If specified, acceleratorCount must also be specified.
  /// [machineType] The Compute Engine machine type selected for the runtime.
  NotebookExecutionCustomEnvironmentSpecMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorCountValue = acceleratorCount;
    if (acceleratorCountValue != null) {
      map['acceleratorCount'] = acceleratorCountValue;
    }
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    return map;
  }

  factory NotebookExecutionCustomEnvironmentSpecMachineSpec.fromMap(
      Map<String, dynamic> map) {
    return NotebookExecutionCustomEnvironmentSpecMachineSpec(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
    );
  }
}
