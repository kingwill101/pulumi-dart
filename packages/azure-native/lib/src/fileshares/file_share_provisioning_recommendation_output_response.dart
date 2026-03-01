// ignore_for_file: unused_element, unnecessary_cast


/// File share provisioning parameters recommendation API result.
class FileShareProvisioningRecommendationOutputResponse {
  /// Redundancy options for the share.
  final List<String> availableRedundancyOptions;
  /// The recommended value of provisioned IO / sec of the share.
  final int provisionedIOPerSec;
  /// The recommended value of provisioned throughput / sec of the share.
  final int provisionedThroughputMiBPerSec;

  /// Creates a new [FileShareProvisioningRecommendationOutputResponse].
  /// [availableRedundancyOptions] Redundancy options for the share.
  /// [provisionedIOPerSec] The recommended value of provisioned IO / sec of the share.
  /// [provisionedThroughputMiBPerSec] The recommended value of provisioned throughput / sec of the share.
  FileShareProvisioningRecommendationOutputResponse({
    required this.availableRedundancyOptions,
    required this.provisionedIOPerSec,
    required this.provisionedThroughputMiBPerSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableRedundancyOptions': availableRedundancyOptions,
      'provisionedIOPerSec': provisionedIOPerSec,
      'provisionedThroughputMiBPerSec': provisionedThroughputMiBPerSec,
    };
  }

  factory FileShareProvisioningRecommendationOutputResponse.fromMap(Map<String, dynamic> map) {
    return FileShareProvisioningRecommendationOutputResponse(
      availableRedundancyOptions: (map['availableRedundancyOptions'] as List).cast<String>(),
      provisionedIOPerSec: map['provisionedIOPerSec'] as int,
      provisionedThroughputMiBPerSec: map['provisionedThroughputMiBPerSec'] as int,
    );
  }
}

