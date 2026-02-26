// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesResponse6 {
  /// The number of threads per physical core.
  final int threadsPerCore;

  AdvancedMachineFeaturesResponse6({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['threadsPerCore'] = threadsPerCore;
    return map;
  }

  factory AdvancedMachineFeaturesResponse6.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponse6(
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}
