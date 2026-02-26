// ignore_for_file: unused_element, unnecessary_cast

import '../instance_directory_services_ldap/instance_directory_services_ldap.dart';

class InstanceDirectoryServices {
  /// Configuration for LDAP servers.
  /// Structure is documented below.
  final InstanceDirectoryServicesLdap? ldap;

  InstanceDirectoryServices({
    this.ldap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ldapValue = ldap;
    if (ldapValue != null) {
      map['ldap'] = ldapValue.toMap();
    }
    return map;
  }

  factory InstanceDirectoryServices.fromMap(Map<String, dynamic> map) {
    return InstanceDirectoryServices(
      ldap: map['ldap'] == null
          ? null
          : InstanceDirectoryServicesLdap.fromMap(
              (map['ldap'] as Map).cast<String, dynamic>()),
    );
  }
}
