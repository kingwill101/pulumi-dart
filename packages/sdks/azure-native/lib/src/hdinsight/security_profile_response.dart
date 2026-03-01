// ignore_for_file: unused_element, unnecessary_cast


/// The security profile which contains Ssh public key for the HDInsight cluster.
class SecurityProfileResponse {
  /// The resource ID of the user's Azure Active Directory Domain Service.
  final String? aaddsResourceId;
  /// Optional. The Distinguished Names for cluster user groups
  final List<String>? clusterUsersGroupDNs;
  /// The directory type.
  final String? directoryType;
  /// The organization's active directory domain.
  final String? domain;
  /// The domain admin password.
  final String? domainUserPassword;
  /// The domain user account that will have admin privileges on the cluster.
  final String? domainUsername;
  /// The LDAPS protocol URLs to communicate with the Active Directory.
  final List<String>? ldapsUrls;
  /// User assigned identity that has permissions to read and create cluster-related artifacts in the user's AADDS.
  final String? msiResourceId;
  /// The organizational unit within the Active Directory to place the cluster and service accounts.
  final String? organizationalUnitDN;

  /// Creates a new [SecurityProfileResponse].
  /// [aaddsResourceId] The resource ID of the user's Azure Active Directory Domain Service.
  /// [clusterUsersGroupDNs] Optional. The Distinguished Names for cluster user groups
  /// [directoryType] The directory type.
  /// [domain] The organization's active directory domain.
  /// [domainUserPassword] The domain admin password.
  /// [domainUsername] The domain user account that will have admin privileges on the cluster.
  /// [ldapsUrls] The LDAPS protocol URLs to communicate with the Active Directory.
  /// [msiResourceId] User assigned identity that has permissions to read and create cluster-related artifacts in the user's AADDS.
  /// [organizationalUnitDN] The organizational unit within the Active Directory to place the cluster and service accounts.
  SecurityProfileResponse({
    this.aaddsResourceId,
    this.clusterUsersGroupDNs,
    this.directoryType,
    this.domain,
    this.domainUserPassword,
    this.domainUsername,
    this.ldapsUrls,
    this.msiResourceId,
    this.organizationalUnitDN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aaddsResourceId': ?aaddsResourceId,
      'clusterUsersGroupDNs': ?clusterUsersGroupDNs,
      'directoryType': ?directoryType,
      'domain': ?domain,
      'domainUserPassword': ?domainUserPassword,
      'domainUsername': ?domainUsername,
      'ldapsUrls': ?ldapsUrls,
      'msiResourceId': ?msiResourceId,
      'organizationalUnitDN': ?organizationalUnitDN,
    };
  }

  factory SecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfileResponse(
      aaddsResourceId: map['aaddsResourceId'] == null ? null : map['aaddsResourceId'] as String,
      clusterUsersGroupDNs: map['clusterUsersGroupDNs'] == null ? null : (map['clusterUsersGroupDNs'] as List).cast<String>(),
      directoryType: map['directoryType'] == null ? null : map['directoryType'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      domainUserPassword: map['domainUserPassword'] == null ? null : map['domainUserPassword'] as String,
      domainUsername: map['domainUsername'] == null ? null : map['domainUsername'] as String,
      ldapsUrls: map['ldapsUrls'] == null ? null : (map['ldapsUrls'] as List).cast<String>(),
      msiResourceId: map['msiResourceId'] == null ? null : map['msiResourceId'] as String,
      organizationalUnitDN: map['organizationalUnitDN'] == null ? null : map['organizationalUnitDN'] as String,
    );
  }
}

