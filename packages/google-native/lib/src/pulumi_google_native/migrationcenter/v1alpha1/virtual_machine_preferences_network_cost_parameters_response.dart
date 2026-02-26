// ignore_for_file: unused_element, unnecessary_cast

/// Parameters that affect network cost estimations.
class VirtualMachinePreferencesNetworkCostParametersResponse {
  /// Optional. An estimated percentage of priced outbound traffic (egress traffic) from the measured outbound traffic. Must be in the interval [0, 100].
  final int estimatedEgressTrafficPercentage;

  VirtualMachinePreferencesNetworkCostParametersResponse({
    required this.estimatedEgressTrafficPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['estimatedEgressTrafficPercentage'] = estimatedEgressTrafficPercentage;
    return map;
  }

  factory VirtualMachinePreferencesNetworkCostParametersResponse.fromMap(
      Map<String, dynamic> map) {
    return VirtualMachinePreferencesNetworkCostParametersResponse(
      estimatedEgressTrafficPercentage:
          map['estimatedEgressTrafficPercentage'] as int,
    );
  }
}
