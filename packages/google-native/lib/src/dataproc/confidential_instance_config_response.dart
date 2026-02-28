// ignore_for_file: unused_element, unnecessary_cast

/// Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs)
class ConfidentialInstanceConfigResponse {
  /// Optional. Defines whether the instance should have confidential compute enabled.
  final bool enableConfidentialCompute;

  /// Creates a new [ConfidentialInstanceConfigResponse].
  /// [enableConfidentialCompute] Optional. Defines whether the instance should have confidential compute enabled.
  ConfidentialInstanceConfigResponse({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    return map;
  }

  factory ConfidentialInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfidentialInstanceConfigResponse(
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
