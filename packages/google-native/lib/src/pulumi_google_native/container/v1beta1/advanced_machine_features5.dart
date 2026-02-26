// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeatures5 {
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final String? threadsPerCore;

  AdvancedMachineFeatures5({
    this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final threadsPerCoreValue = threadsPerCore;
    if (threadsPerCoreValue != null) {
      map['threadsPerCore'] = threadsPerCoreValue;
    }
    return map;
  }

  factory AdvancedMachineFeatures5.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeatures5(
      threadsPerCore: map['threadsPerCore'] == null
          ? null
          : map['threadsPerCore'] as String,
    );
  }
}
