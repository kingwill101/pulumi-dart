// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The security profile which contains Ssh public key for the HDInsight cluster.
class SecurityProfile {
  /// The resource ID of the user's Azure Active Directory Domain Service.
  final pulumi.Input<String>? aaddsResourceId;
  /// Optional. The Distinguished Names for cluster user groups
  final pulumi.Input<List<String>>? clusterUsersGroupDNs;
  /// The directory type.
  final pulumi.Input<String>? directoryType;
  /// The organization's active directory domain.
  final pulumi.Input<String>? domain;
  /// The domain admin password.
  final pulumi.Input<String>? domainUserPassword;
  /// The domain user account that will have admin privileges on the cluster.
  final pulumi.Input<String>? domainUsername;
  /// The LDAPS protocol URLs to communicate with the Active Directory.
  final pulumi.Input<List<String>>? ldapsUrls;
  /// User assigned identity that has permissions to read and create cluster-related artifacts in the user's AADDS.
  final pulumi.Input<String>? msiResourceId;
  /// The organizational unit within the Active Directory to place the cluster and service accounts.
  final pulumi.Input<String>? organizationalUnitDN;

  /// Creates a new [SecurityProfile].
  /// [aaddsResourceId] The resource ID of the user's Azure Active Directory Domain Service.
  /// [clusterUsersGroupDNs] Optional. The Distinguished Names for cluster user groups
  /// [directoryType] The directory type.
  /// [domain] The organization's active directory domain.
  /// [domainUserPassword] The domain admin password.
  /// [domainUsername] The domain user account that will have admin privileges on the cluster.
  /// [ldapsUrls] The LDAPS protocol URLs to communicate with the Active Directory.
  /// [msiResourceId] User assigned identity that has permissions to read and create cluster-related artifacts in the user's AADDS.
  /// [organizationalUnitDN] The organizational unit within the Active Directory to place the cluster and service accounts.
  const SecurityProfile({
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

  factory SecurityProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfile(
      aaddsResourceId: (() { final guardedValue = map['aaddsResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterUsersGroupDNs: (() { final guardedValue = map['clusterUsersGroupDNs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      directoryType: (() { final guardedValue = map['directoryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainUserPassword: (() { final guardedValue = map['domainUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainUsername: (() { final guardedValue = map['domainUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ldapsUrls: (() { final guardedValue = map['ldapsUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      msiResourceId: (() { final guardedValue = map['msiResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnitDN: (() { final guardedValue = map['organizationalUnitDN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

