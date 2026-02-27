// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesResponseSqladminV1 {
  /// The number of threads per physical core.
  final int threadsPerCore;

  AdvancedMachineFeaturesResponseSqladminV1({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['threadsPerCore'] = threadsPerCore;
    return map;
  }

  factory AdvancedMachineFeaturesResponseSqladminV1.fromMap(
      Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponseSqladminV1(
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}
