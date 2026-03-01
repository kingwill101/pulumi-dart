// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_secret_store_properties.dart';

/// Class for GMSA authentication details to configure Active Directory connectivity.
class GmsaAuthenticationProperties {
  /// Gets or sets the list of dns server that can resolve the Active Directory Domain Name/Address.
  final String? adDomainControllerDns;
  /// Gets or sets the FQDN of the Active Directory Domain. For e.g. 'contoso.local', 'fareast.corp.microsoft.com' etc.
  final String? adDomainFqdn;
  final KeyVaultSecretStoreProperties? akvProperties;
  /// Gets or sets the password of the user specified by RestApi.Controllers.V2022_05_01_preview.Models.WorkloadDeployment.Gmsa.GmsaAuthenticationProperties.DomainAdminUsername.
  final String? domainAdminPassword;
  /// Gets or sets the name of the user having admin rights on the Active Directory Domain Controller.
  final String? domainAdminUsername;
  /// Gets or sets the address of the Active Directory Domain Controller running Domain Services.
  final String? domainControllerAddress;
  /// Gets or sets the name to be used for GMSA.
  final String? gmsaAccountName;
  /// Gets or sets the password of the user specified by RestApi.Controllers.V2022_05_01_preview.Models.WorkloadDeployment.Gmsa.GmsaAuthenticationProperties.GmsaUsername.
  final String? gmsaUserPassword;
  /// Gets or sets username of the user having authorization to access GMSA on Active Directory.
  final String? gmsaUsername;

  /// Creates a new [GmsaAuthenticationProperties].
  /// [adDomainControllerDns] Gets or sets the list of dns server that can resolve the Active Directory Domain Name/Address.
  /// [adDomainFqdn] Gets or sets the FQDN of the Active Directory Domain. For e.g. 'contoso.local', 'fareast.corp.microsoft.com' etc.
  /// [akvProperties] Optional.
  /// [domainAdminPassword] Gets or sets the password of the user specified by RestApi.Controllers.V2022_05_01_preview.Models.WorkloadDeployment.Gmsa.GmsaAuthenticationProperties.DomainAdminUsername.
  /// [domainAdminUsername] Gets or sets the name of the user having admin rights on the Active Directory Domain Controller.
  /// [domainControllerAddress] Gets or sets the address of the Active Directory Domain Controller running Domain Services.
  /// [gmsaAccountName] Gets or sets the name to be used for GMSA.
  /// [gmsaUserPassword] Gets or sets the password of the user specified by RestApi.Controllers.V2022_05_01_preview.Models.WorkloadDeployment.Gmsa.GmsaAuthenticationProperties.GmsaUsername.
  /// [gmsaUsername] Gets or sets username of the user having authorization to access GMSA on Active Directory.
  GmsaAuthenticationProperties({
    this.adDomainControllerDns,
    this.adDomainFqdn,
    this.akvProperties,
    this.domainAdminPassword,
    this.domainAdminUsername,
    this.domainControllerAddress,
    this.gmsaAccountName,
    this.gmsaUserPassword,
    this.gmsaUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adDomainControllerDns': ?adDomainControllerDns,
      'adDomainFqdn': ?adDomainFqdn,
      'akvProperties': ?akvProperties == null ? null : akvProperties!.toMap(),
      'domainAdminPassword': ?domainAdminPassword,
      'domainAdminUsername': ?domainAdminUsername,
      'domainControllerAddress': ?domainControllerAddress,
      'gmsaAccountName': ?gmsaAccountName,
      'gmsaUserPassword': ?gmsaUserPassword,
      'gmsaUsername': ?gmsaUsername,
    };
  }

  factory GmsaAuthenticationProperties.fromMap(Map<String, dynamic> map) {
    return GmsaAuthenticationProperties(
      adDomainControllerDns: map['adDomainControllerDns'] == null ? null : map['adDomainControllerDns'] as String,
      adDomainFqdn: map['adDomainFqdn'] == null ? null : map['adDomainFqdn'] as String,
      akvProperties: map['akvProperties'] == null ? null : KeyVaultSecretStoreProperties.fromMap((map['akvProperties'] as Map).cast<String, dynamic>()),
      domainAdminPassword: map['domainAdminPassword'] == null ? null : map['domainAdminPassword'] as String,
      domainAdminUsername: map['domainAdminUsername'] == null ? null : map['domainAdminUsername'] as String,
      domainControllerAddress: map['domainControllerAddress'] == null ? null : map['domainControllerAddress'] as String,
      gmsaAccountName: map['gmsaAccountName'] == null ? null : map['gmsaAccountName'] as String,
      gmsaUserPassword: map['gmsaUserPassword'] == null ? null : map['gmsaUserPassword'] as String,
      gmsaUsername: map['gmsaUsername'] == null ? null : map['gmsaUsername'] as String,
    );
  }
}

