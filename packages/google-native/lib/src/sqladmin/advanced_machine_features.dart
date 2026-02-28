// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeatures {
  /// The number of threads per physical core.
  final int? threadsPerCore;

  /// Creates a new [AdvancedMachineFeatures].
  /// [threadsPerCore] The number of threads per physical core.
  AdvancedMachineFeatures({
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

  factory AdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeatures(
      threadsPerCore:
          map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
    );
  }
}
