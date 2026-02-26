// ignore_for_file: unused_element, unnecessary_cast

class InstanceGceSetupConfidentialInstanceConfig {
  /// Defines the type of technology used by the confidential instance.
  /// Possible values are: `SEV`.
  final String? confidentialInstanceType;

  InstanceGceSetupConfidentialInstanceConfig({
    this.confidentialInstanceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidentialInstanceTypeValue = confidentialInstanceType;
    if (confidentialInstanceTypeValue != null) {
      map['confidentialInstanceType'] = confidentialInstanceTypeValue;
    }
    return map;
  }

  factory InstanceGceSetupConfidentialInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceGceSetupConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] == null
          ? null
          : map['confidentialInstanceType'] as String,
    );
  }
}
