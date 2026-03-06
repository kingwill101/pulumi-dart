// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterKerberosAttributes {
  /// Active Directory password for `ad_domain_join_user`. This provider cannot perform drift detection of this configuration.
  final pulumi.Input<String>? adDomainJoinPassword;
  /// Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain. This provider cannot perform drift detection of this configuration.
  final pulumi.Input<String>? adDomainJoinUser;
  /// Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms. This provider cannot perform drift detection of this configuration.
  final pulumi.Input<String>? crossRealmTrustPrincipalPassword;
  /// Password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster. This provider cannot perform drift detection of this configuration.
  final pulumi.Input<String> kdcAdminPassword;
  /// Name of the Kerberos realm to which all nodes in a cluster belong. For example, `EC2.INTERNAL`
  final pulumi.Input<String> realm;

  /// Creates a new [ClusterKerberosAttributes].
  /// [adDomainJoinPassword] Active Directory password for `ad_domain_join_user`. This provider cannot perform drift detection of this configuration.
  /// [adDomainJoinUser] Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain. This provider cannot perform drift detection of this configuration.
  /// [crossRealmTrustPrincipalPassword] Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms. This provider cannot perform drift detection of this configuration.
  /// [kdcAdminPassword] Password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster. This provider cannot perform drift detection of this configuration.
  /// [realm] Name of the Kerberos realm to which all nodes in a cluster belong. For example, `EC2.INTERNAL`
  const ClusterKerberosAttributes({
    this.adDomainJoinPassword,
    this.adDomainJoinUser,
    this.crossRealmTrustPrincipalPassword,
    required this.kdcAdminPassword,
    required this.realm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adDomainJoinPassword': ?adDomainJoinPassword,
      'adDomainJoinUser': ?adDomainJoinUser,
      'crossRealmTrustPrincipalPassword': ?crossRealmTrustPrincipalPassword,
      'kdcAdminPassword': kdcAdminPassword,
      'realm': realm,
    };
  }

  factory ClusterKerberosAttributes.fromMap(Map<String, dynamic> map) {
    return ClusterKerberosAttributes(
      adDomainJoinPassword: (() { final guardedValue = map['adDomainJoinPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adDomainJoinUser: (() { final guardedValue = map['adDomainJoinUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossRealmTrustPrincipalPassword: (() { final guardedValue = map['crossRealmTrustPrincipalPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kdcAdminPassword: pulumi.Input.fromValue(map['kdcAdminPassword'] as String),
      realm: pulumi.Input.fromValue(map['realm'] as String),
    );
  }
}

