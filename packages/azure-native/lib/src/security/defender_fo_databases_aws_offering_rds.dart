// ignore_for_file: unused_element, unnecessary_cast


/// The RDS configuration
class DefenderFoDatabasesAwsOfferingRds {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Is RDS protection enabled
  final bool? enabled;

  /// Creates a new [DefenderFoDatabasesAwsOfferingRds].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is RDS protection enabled
  DefenderFoDatabasesAwsOfferingRds({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderFoDatabasesAwsOfferingRds.fromMap(Map<String, dynamic> map) {
    return DefenderFoDatabasesAwsOfferingRds(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

