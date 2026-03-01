// ignore_for_file: unused_element, unnecessary_cast


/// The Microsoft Defender Data Sensitivity discovery configuration
class DefenderCspmAwsOfferingResponseDataSensitivityDiscovery {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Is Microsoft Defender Data Sensitivity discovery enabled
  final bool? enabled;

  /// Creates a new [DefenderCspmAwsOfferingResponseDataSensitivityDiscovery].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is Microsoft Defender Data Sensitivity discovery enabled
  DefenderCspmAwsOfferingResponseDataSensitivityDiscovery({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmAwsOfferingResponseDataSensitivityDiscovery.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponseDataSensitivityDiscovery(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

