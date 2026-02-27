// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesSqladminV1 {
  /// The number of threads per physical core.
  final int? threadsPerCore;

  AdvancedMachineFeaturesSqladminV1({
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

  factory AdvancedMachineFeaturesSqladminV1.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesSqladminV1(
      threadsPerCore:
          map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
    );
  }
}
