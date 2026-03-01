// ignore_for_file: unused_element, unnecessary_cast


/// Domain credentials for setting up Windows Server Failover Cluster for SQL availability group.
class WsfcDomainCredentialsResponse {
  /// Cluster bootstrap account password.
  final String? clusterBootstrapAccountPassword;
  /// Cluster operator account password.
  final String? clusterOperatorAccountPassword;
  /// SQL service account password.
  final String? sqlServiceAccountPassword;

  /// Creates a new [WsfcDomainCredentialsResponse].
  /// [clusterBootstrapAccountPassword] Cluster bootstrap account password.
  /// [clusterOperatorAccountPassword] Cluster operator account password.
  /// [sqlServiceAccountPassword] SQL service account password.
  WsfcDomainCredentialsResponse({
    this.clusterBootstrapAccountPassword,
    this.clusterOperatorAccountPassword,
    this.sqlServiceAccountPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterBootstrapAccountPassword': ?clusterBootstrapAccountPassword,
      'clusterOperatorAccountPassword': ?clusterOperatorAccountPassword,
      'sqlServiceAccountPassword': ?sqlServiceAccountPassword,
    };
  }

  factory WsfcDomainCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return WsfcDomainCredentialsResponse(
      clusterBootstrapAccountPassword: map['clusterBootstrapAccountPassword'] == null ? null : map['clusterBootstrapAccountPassword'] as String,
      clusterOperatorAccountPassword: map['clusterOperatorAccountPassword'] == null ? null : map['clusterOperatorAccountPassword'] as String,
      sqlServiceAccountPassword: map['sqlServiceAccountPassword'] == null ? null : map['sqlServiceAccountPassword'] as String,
    );
  }
}

