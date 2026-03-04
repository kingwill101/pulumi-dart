// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_store_properties.dart';

/// Class for GMSA authentication details to configure Active Directory connectivity.
class GmsaAuthenticationProperties {
  /// Gets or sets the list of dns server that can resolve the Active Directory Domain Name/Address.
  final pulumi.Input<String>? adDomainControllerDns;

  /// Gets or sets the FQDN of the Active Directory Domain. For e.g. 'contoso.local', 'fareast.corp.microsoft.com' etc.
  final pulumi.Input<String>? adDomainFqdn;
  final pulumi.Input<KeyVaultSecretStoreProperties>? akvProperties;

  /// Gets or sets the password of the user specified by RestApi.Controllers.V2022_05_01_preview.Models.WorkloadDeployment.Gmsa.GmsaAuthenticationProperties.DomainAdminUsername.
  final pulumi.Input<String>? domainAdminPassword;

  /// Gets or sets the name of the user having admin rights on the Active Directory Domain Controller.
  final pulumi.Input<String>? domainAdminUsername;

  /// Gets or sets the address of the Active Directory Domain Controller running Domain Services.
  final pulumi.Input<String>? domainControllerAddress;

  /// Gets or sets the name to be used for GMSA.
  final pulumi.Input<String>? gmsaAccountName;

  /// Gets or sets the password of the user specified by RestApi.Controllers.V2022_05_01_preview.Models.WorkloadDeployment.Gmsa.GmsaAuthenticationProperties.GmsaUsername.
  final pulumi.Input<String>? gmsaUserPassword;

  /// Gets or sets username of the user having authorization to access GMSA on Active Directory.
  final pulumi.Input<String>? gmsaUsername;

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
      'akvProperties':
          ?pulumi.Input.mapOptionalInputValue<
            KeyVaultSecretStoreProperties,
            Map<String, dynamic>
          >(akvProperties, (value) => value.toMap()),
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
      adDomainControllerDns: (() {
        final guardedValue = map['adDomainControllerDns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adDomainFqdn: (() {
        final guardedValue = map['adDomainFqdn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      akvProperties: (() {
        final guardedValue = map['akvProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyVaultSecretStoreProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      domainAdminPassword: (() {
        final guardedValue = map['domainAdminPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainAdminUsername: (() {
        final guardedValue = map['domainAdminUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainControllerAddress: (() {
        final guardedValue = map['domainControllerAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gmsaAccountName: (() {
        final guardedValue = map['gmsaAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gmsaUserPassword: (() {
        final guardedValue = map['gmsaUserPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gmsaUsername: (() {
        final guardedValue = map['gmsaUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
