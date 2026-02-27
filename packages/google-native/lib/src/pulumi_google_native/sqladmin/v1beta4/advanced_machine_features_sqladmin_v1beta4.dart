// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesSqladminV1beta4 {
  /// The number of threads per physical core.
  final int? threadsPerCore;

  AdvancedMachineFeaturesSqladminV1beta4({
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

  factory AdvancedMachineFeaturesSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return AdvancedMachineFeaturesSqladminV1beta4(
      threadsPerCore:
          map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
    );
  }
}
