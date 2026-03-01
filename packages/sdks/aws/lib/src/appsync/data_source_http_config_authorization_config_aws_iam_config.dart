// ignore_for_file: unused_element, unnecessary_cast


class DataSourceHttpConfigAuthorizationConfigAwsIamConfig {
  /// Signing Amazon Web Services Region for IAM authorization.
  final String? signingRegion;
  /// Signing service name for IAM authorization.
  final String? signingServiceName;

  /// Creates a new [DataSourceHttpConfigAuthorizationConfigAwsIamConfig].
  /// [signingRegion] Signing Amazon Web Services Region for IAM authorization.
  /// [signingServiceName] Signing service name for IAM authorization.
  DataSourceHttpConfigAuthorizationConfigAwsIamConfig({
    this.signingRegion,
    this.signingServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signingRegion': ?signingRegion,
      'signingServiceName': ?signingServiceName,
    };
  }

  factory DataSourceHttpConfigAuthorizationConfigAwsIamConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceHttpConfigAuthorizationConfigAwsIamConfig(
      signingRegion: map['signingRegion'] == null ? null : map['signingRegion'] as String,
      signingServiceName: map['signingServiceName'] == null ? null : map['signingServiceName'] as String,
    );
  }
}

