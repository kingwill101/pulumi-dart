// ignore_for_file: unused_element, unnecessary_cast


/// Parameters that affect network cost estimations.
class VirtualMachinePreferencesNetworkCostParameters {
  /// Optional. An estimated percentage of priced outbound traffic (egress traffic) from the measured outbound traffic. Must be in the interval [0, 100].
  final int? estimatedEgressTrafficPercentage;

  /// Creates a new [VirtualMachinePreferencesNetworkCostParameters].
  /// [estimatedEgressTrafficPercentage] Optional. An estimated percentage of priced outbound traffic (egress traffic) from the measured outbound traffic. Must be in the interval [0, 100].
  VirtualMachinePreferencesNetworkCostParameters({
    this.estimatedEgressTrafficPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedEgressTrafficPercentage': ?estimatedEgressTrafficPercentage,
    };
  }

  factory VirtualMachinePreferencesNetworkCostParameters.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferencesNetworkCostParameters(
      estimatedEgressTrafficPercentage: map['estimatedEgressTrafficPercentage'] == null ? null : map['estimatedEgressTrafficPercentage'] as int,
    );
  }
}

