// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of KerberosAttributes
class KerberosAttributes {
  /// &lt;p&gt;The Active Directory password for &lt;code&gt;ADDomainJoinUser&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? adDomainJoinPassword;
  /// &lt;p&gt;Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain.&lt;/p&gt;
  final pulumi.Input<String>? adDomainJoinUser;
  /// &lt;p&gt;Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms.&lt;/p&gt;
  final pulumi.Input<String>? crossRealmTrustPrincipalPassword;
  /// &lt;p&gt;The password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster.&lt;/p&gt;
  final pulumi.Input<String>? kdcAdminPassword;
  /// &lt;p&gt;The name of the Kerberos realm to which all nodes in a cluster belong. For example, &lt;code&gt;EC2.INTERNAL&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<String>? realm;

  /// Creates a new [KerberosAttributes].
  /// [adDomainJoinPassword] &lt;p&gt;The Active Directory password for &lt;code&gt;ADDomainJoinUser&lt;/code&gt;.&lt;/p&gt;
  /// [adDomainJoinUser] &lt;p&gt;Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain.&lt;/p&gt;
  /// [crossRealmTrustPrincipalPassword] &lt;p&gt;Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms.&lt;/p&gt;
  /// [kdcAdminPassword] &lt;p&gt;The password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster.&lt;/p&gt;
  /// [realm] &lt;p&gt;The name of the Kerberos realm to which all nodes in a cluster belong. For example, &lt;code&gt;EC2.INTERNAL&lt;/code&gt;. &lt;/p&gt;
  const KerberosAttributes({
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

  factory KerberosAttributes.fromMap(Map<String, dynamic> map) {
    return KerberosAttributes(
      adDomainJoinPassword: (() { final guardedValue = map['adDomainJoinPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adDomainJoinUser: (() { final guardedValue = map['adDomainJoinUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossRealmTrustPrincipalPassword: (() { final guardedValue = map['crossRealmTrustPrincipalPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kdcAdminPassword: (() { final guardedValue = map['kdcAdminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      realm: (() { final guardedValue = map['realm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
