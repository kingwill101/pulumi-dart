// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_domain_controllers.dart';

/// Active Directory domain details
class ActiveDirectoryConnectorDomainDetails {
  /// null
  final pulumi.Input<ActiveDirectoryDomainControllers>? domainControllers;
  /// NETBIOS name of the Active Directory domain.
  final pulumi.Input<String>? netbiosDomainName;
  /// The distinguished name of the Active Directory Organizational Unit.
  final pulumi.Input<String>? ouDistinguishedName;
  /// Name (uppercase) of the Active Directory domain that this AD connector will be associated with.
  final pulumi.Input<String> realm;
  /// The service account provisioning mode for this Active Directory connector.
  final pulumi.Input<String>? serviceAccountProvisioning;

  /// Creates a new [ActiveDirectoryConnectorDomainDetails].
  /// [domainControllers] null
  /// [netbiosDomainName] NETBIOS name of the Active Directory domain.
  /// [ouDistinguishedName] The distinguished name of the Active Directory Organizational Unit.
  /// [realm] Name (uppercase) of the Active Directory domain that this AD connector will be associated with.
  /// [serviceAccountProvisioning] The service account provisioning mode for this Active Directory connector.
  const ActiveDirectoryConnectorDomainDetails({
    this.domainControllers,
    this.netbiosDomainName,
    this.ouDistinguishedName,
    required this.realm,
    this.serviceAccountProvisioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainControllers': ?pulumi.Input.mapOptionalInputValue<ActiveDirectoryDomainControllers, Map<String, dynamic>>(domainControllers, (value) => value.toMap()),
      'netbiosDomainName': ?netbiosDomainName,
      'ouDistinguishedName': ?ouDistinguishedName,
      'realm': realm,
      'serviceAccountProvisioning': ?serviceAccountProvisioning,
    };
  }

  factory ActiveDirectoryConnectorDomainDetails.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorDomainDetails(
      domainControllers: (() { final guardedValue = map['domainControllers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActiveDirectoryDomainControllers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netbiosDomainName: (() { final guardedValue = map['netbiosDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ouDistinguishedName: (() { final guardedValue = map['ouDistinguishedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      realm: pulumi.Input.fromValue(map['realm'] as String),
      serviceAccountProvisioning: (() { final guardedValue = map['serviceAccountProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

