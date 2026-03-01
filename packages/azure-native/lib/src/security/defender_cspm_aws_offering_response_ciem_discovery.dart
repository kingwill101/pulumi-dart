// ignore_for_file: unused_element, unnecessary_cast


/// Defender CSPM Permissions Management discovery configuration
class DefenderCspmAwsOfferingResponseCiemDiscovery {
  /// The cloud role ARN in AWS for Permissions Management discovery
  final String? cloudRoleArn;

  /// Creates a new [DefenderCspmAwsOfferingResponseCiemDiscovery].
  /// [cloudRoleArn] The cloud role ARN in AWS for Permissions Management discovery
  DefenderCspmAwsOfferingResponseCiemDiscovery({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderCspmAwsOfferingResponseCiemDiscovery.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponseCiemDiscovery(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
    );
  }
}

