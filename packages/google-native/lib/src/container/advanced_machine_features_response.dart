// ignore_for_file: unused_element, unnecessary_cast


/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeaturesResponse {
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final String threadsPerCore;

  /// Creates a new [AdvancedMachineFeaturesResponse].
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  AdvancedMachineFeaturesResponse({
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threadsPerCore': threadsPerCore,
    };
  }

  factory AdvancedMachineFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponse(
      threadsPerCore: map['threadsPerCore'] as String,
    );
  }
}

