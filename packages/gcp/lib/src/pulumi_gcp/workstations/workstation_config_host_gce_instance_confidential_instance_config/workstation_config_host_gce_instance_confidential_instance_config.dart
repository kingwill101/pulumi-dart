// ignore_for_file: unused_element, unnecessary_cast

class WorkstationConfigHostGceInstanceConfidentialInstanceConfig {
  /// Whether the instance has confidential compute enabled.
  final bool? enableConfidentialCompute;

  WorkstationConfigHostGceInstanceConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    return map;
  }

  factory WorkstationConfigHostGceInstanceConfidentialInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceConfidentialInstanceConfig(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
    );
  }
}
