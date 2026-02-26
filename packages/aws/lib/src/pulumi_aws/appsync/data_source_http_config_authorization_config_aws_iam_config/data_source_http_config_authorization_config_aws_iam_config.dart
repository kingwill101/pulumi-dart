// ignore_for_file: unused_element, unnecessary_cast

class DataSourceHttpConfigAuthorizationConfigAwsIamConfig {
  /// Signing Amazon Web Services Region for IAM authorization.
  final String? signingRegion;

  /// Signing service name for IAM authorization.
  final String? signingServiceName;

  DataSourceHttpConfigAuthorizationConfigAwsIamConfig({
    this.signingRegion,
    this.signingServiceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final signingRegionValue = signingRegion;
    if (signingRegionValue != null) {
      map['signingRegion'] = signingRegionValue;
    }
    final signingServiceNameValue = signingServiceName;
    if (signingServiceNameValue != null) {
      map['signingServiceName'] = signingServiceNameValue;
    }
    return map;
  }

  factory DataSourceHttpConfigAuthorizationConfigAwsIamConfig.fromMap(
      Map<String, dynamic> map) {
    return DataSourceHttpConfigAuthorizationConfigAwsIamConfig(
      signingRegion:
          map['signingRegion'] == null ? null : map['signingRegion'] as String,
      signingServiceName: map['signingServiceName'] == null
          ? null
          : map['signingServiceName'] as String,
    );
  }
}
