// ignore_for_file: unused_element, unnecessary_cast


/// Definition of KerberosAttributes
class KerberosAttributesResponse {
  /// <p>The Active Directory password for <code>ADDomainJoinUser</code>.</p>
  final String? adDomainJoinPassword;
  /// <p>Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain.</p>
  final String? adDomainJoinUser;
  /// <p>Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms.</p>
  final String? crossRealmTrustPrincipalPassword;
  /// <p>The password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster.</p>
  final String? kdcAdminPassword;
  /// <p>The name of the Kerberos realm to which all nodes in a cluster belong. For example, <code>EC2.INTERNAL</code>. </p>
  final String? realm;

  /// Creates a new [KerberosAttributesResponse].
  /// [adDomainJoinPassword] <p>The Active Directory password for <code>ADDomainJoinUser</code>.</p>
  /// [adDomainJoinUser] <p>Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain.</p>
  /// [crossRealmTrustPrincipalPassword] <p>Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms.</p>
  /// [kdcAdminPassword] <p>The password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster.</p>
  /// [realm] <p>The name of the Kerberos realm to which all nodes in a cluster belong. For example, <code>EC2.INTERNAL</code>. </p>
  KerberosAttributesResponse({
    this.adDomainJoinPassword,
    this.adDomainJoinUser,
    this.crossRealmTrustPrincipalPassword,
    this.kdcAdminPassword,
    this.realm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adDomainJoinPassword': ?adDomainJoinPassword,
      'adDomainJoinUser': ?adDomainJoinUser,
      'crossRealmTrustPrincipalPassword': ?crossRealmTrustPrincipalPassword,
      'kdcAdminPassword': ?kdcAdminPassword,
      'realm': ?realm,
    };
  }

  factory KerberosAttributesResponse.fromMap(Map<String, dynamic> map) {
    return KerberosAttributesResponse(
      adDomainJoinPassword: map['adDomainJoinPassword'] == null ? null : map['adDomainJoinPassword'] as String,
      adDomainJoinUser: map['adDomainJoinUser'] == null ? null : map['adDomainJoinUser'] as String,
      crossRealmTrustPrincipalPassword: map['crossRealmTrustPrincipalPassword'] == null ? null : map['crossRealmTrustPrincipalPassword'] as String,
      kdcAdminPassword: map['kdcAdminPassword'] == null ? null : map['kdcAdminPassword'] as String,
      realm: map['realm'] == null ? null : map['realm'] as String,
    );
  }
}

