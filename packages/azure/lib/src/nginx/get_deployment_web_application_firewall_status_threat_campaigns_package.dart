// ignore_for_file: unused_element, unnecessary_cast


class GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage {
  final String revisionDatetime;
  final String version;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage].
  /// [revisionDatetime] Required.
  /// [version] Required.
  GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage({
    required this.revisionDatetime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': revisionDatetime,
      'version': version,
    };
  }

  factory GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage(
      revisionDatetime: map['revisionDatetime'] as String,
      version: map['version'] as String,
    );
  }
}

