// ignore_for_file: unused_element, unnecessary_cast

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesResponse {
  /// The number of threads per physical core.
  final int threadsPerCore;

  /// Creates a new [AdvancedMachineFeaturesResponse].
  /// [threadsPerCore] The number of threads per physical core.
  AdvancedMachineFeaturesResponse({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['threadsPerCore'] = threadsPerCore;
    return map;
  }

  factory AdvancedMachineFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponse(
      threadsPerCore: map['threadsPerCore'] as int,
    );
  }
}
