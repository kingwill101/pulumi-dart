// ignore_for_file: unused_element, unnecessary_cast


/// The databases DSPM configuration
class DefenderCspmAwsOfferingDatabasesDspm {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;
  /// Is databases DSPM protection enabled
  final bool? enabled;

  /// Creates a new [DefenderCspmAwsOfferingDatabasesDspm].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is databases DSPM protection enabled
  DefenderCspmAwsOfferingDatabasesDspm({
    this.cloudRoleArn,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmAwsOfferingDatabasesDspm.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingDatabasesDspm(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

