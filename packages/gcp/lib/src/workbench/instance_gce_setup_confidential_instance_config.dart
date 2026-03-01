// ignore_for_file: unused_element, unnecessary_cast

class InstanceGceSetupConfidentialInstanceConfig {
  /// Defines the type of technology used by the confidential instance.
  /// Possible values are: `SEV`.
  final String? confidentialInstanceType;

  /// Creates a new [InstanceGceSetupConfidentialInstanceConfig].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential instance.
  InstanceGceSetupConfidentialInstanceConfig({this.confidentialInstanceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType,
    };
  }

  factory InstanceGceSetupConfidentialInstanceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGceSetupConfidentialInstanceConfig(
      confidentialInstanceType: map['confidentialInstanceType'] == null
          ? null
          : map['confidentialInstanceType'] as String,
    );
  }
}
