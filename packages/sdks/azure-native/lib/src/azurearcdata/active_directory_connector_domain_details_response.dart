// ignore_for_file: unused_element, unnecessary_cast

import 'active_directory_domain_controllers_response.dart';

/// Active Directory domain details
class ActiveDirectoryConnectorDomainDetailsResponse {
  /// null
  final ActiveDirectoryDomainControllersResponse? domainControllers;
  /// NETBIOS name of the Active Directory domain.
  final String? netbiosDomainName;
  /// The distinguished name of the Active Directory Organizational Unit.
  final String? ouDistinguishedName;
  /// Name (uppercase) of the Active Directory domain that this AD connector will be associated with.
  final String realm;
  /// The service account provisioning mode for this Active Directory connector.
  final String? serviceAccountProvisioning;

  /// Creates a new [ActiveDirectoryConnectorDomainDetailsResponse].
  /// [domainControllers] null
  /// [netbiosDomainName] NETBIOS name of the Active Directory domain.
  /// [ouDistinguishedName] The distinguished name of the Active Directory Organizational Unit.
  /// [realm] Name (uppercase) of the Active Directory domain that this AD connector will be associated with.
  /// [serviceAccountProvisioning] The service account provisioning mode for this Active Directory connector.
  ActiveDirectoryConnectorDomainDetailsResponse({
    this.domainControllers,
    this.netbiosDomainName,
    this.ouDistinguishedName,
    required this.realm,
    this.serviceAccountProvisioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainControllers': ?domainControllers == null ? null : domainControllers!.toMap(),
      'netbiosDomainName': ?netbiosDomainName,
      'ouDistinguishedName': ?ouDistinguishedName,
      'realm': realm,
      'serviceAccountProvisioning': ?serviceAccountProvisioning,
    };
  }

  factory ActiveDirectoryConnectorDomainDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConnectorDomainDetailsResponse(
      domainControllers: map['domainControllers'] == null ? null : ActiveDirectoryDomainControllersResponse.fromMap((map['domainControllers'] as Map).cast<String, dynamic>()),
      netbiosDomainName: map['netbiosDomainName'] == null ? null : map['netbiosDomainName'] as String,
      ouDistinguishedName: map['ouDistinguishedName'] == null ? null : map['ouDistinguishedName'] as String,
      realm: map['realm'] as String,
      serviceAccountProvisioning: map['serviceAccountProvisioning'] == null ? null : map['serviceAccountProvisioning'] as String,
    );
  }
}

