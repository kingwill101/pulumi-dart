// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesResponse5 {
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final String threadsPerCore;

  AdvancedMachineFeaturesResponse5({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['threadsPerCore'] = threadsPerCore;
    return map;
  }

  factory AdvancedMachineFeaturesResponse5.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponse5(
      threadsPerCore: map['threadsPerCore'] as String,
    );
  }
}
