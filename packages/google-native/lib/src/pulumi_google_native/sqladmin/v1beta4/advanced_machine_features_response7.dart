// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesResponse7 {
  /// The number of threads per physical core.
  final int threadsPerCore;

  AdvancedMachineFeaturesResponse7({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['threadsPerCore'] = threadsPerCore;
    return map;
  }

  factory AdvancedMachineFeaturesResponse7.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponse7(
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}
