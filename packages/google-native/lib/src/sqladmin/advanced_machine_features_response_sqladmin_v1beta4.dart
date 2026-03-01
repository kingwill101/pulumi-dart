// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesResponseSqladminV1beta4 {
  /// The number of threads per physical core.
  final int threadsPerCore;

  /// Creates a new [AdvancedMachineFeaturesResponseSqladminV1beta4].
  /// [threadsPerCore] The number of threads per physical core.
  AdvancedMachineFeaturesResponseSqladminV1beta4({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'threadsPerCore': threadsPerCore};
  }

  factory AdvancedMachineFeaturesResponseSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return AdvancedMachineFeaturesResponseSqladminV1beta4(
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}
