// ignore_for_file: unused_element, unnecessary_cast


/// The native cloud connection configuration
class CspmMonitorAwsOfferingNativeCloudConnection {
  /// The cloud role ARN in AWS for this feature
  final String? cloudRoleArn;

  /// Creates a new [CspmMonitorAwsOfferingNativeCloudConnection].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  CspmMonitorAwsOfferingNativeCloudConnection({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory CspmMonitorAwsOfferingNativeCloudConnection.fromMap(Map<String, dynamic> map) {
    return CspmMonitorAwsOfferingNativeCloudConnection(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
    );
  }
}

