// ignore_for_file: unused_element, unnecessary_cast


/// The settings to enable AAD authentication on the cluster.
class AzureActiveDirectory {
  /// Azure active directory client application id.
  final String? clientApplication;
  /// Azure active directory cluster application id.
  final String? clusterApplication;
  /// Azure active directory tenant id.
  final String? tenantId;

  /// Creates a new [AzureActiveDirectory].
  /// [clientApplication] Azure active directory client application id.
  /// [clusterApplication] Azure active directory cluster application id.
  /// [tenantId] Azure active directory tenant id.
  AzureActiveDirectory({
    this.clientApplication,
    this.clusterApplication,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientApplication': ?clientApplication,
      'clusterApplication': ?clusterApplication,
      'tenantId': ?tenantId,
    };
  }

  factory AzureActiveDirectory.fromMap(Map<String, dynamic> map) {
    return AzureActiveDirectory(
      clientApplication: map['clientApplication'] == null ? null : map['clientApplication'] as String,
      clusterApplication: map['clusterApplication'] == null ? null : map['clusterApplication'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

