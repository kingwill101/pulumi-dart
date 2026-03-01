// ignore_for_file: unused_element, unnecessary_cast

import 'secure_string.dart';

/// Catalog information for managed dedicated integration runtime.
class IntegrationRuntimeSsisCatalogInfo {
  /// The password of the administrator user account of the catalog database.
  final SecureString? catalogAdminPassword;
  /// The administrator user name of catalog database.
  final String? catalogAdminUserName;
  /// The pricing tier for the catalog database. The valid values could be found in https://azure.microsoft.com/en-us/pricing/details/sql-database/
  final String? catalogPricingTier;
  /// The catalog database server URL.
  final String? catalogServerEndpoint;
  /// The dual standby pair name of Azure-SSIS Integration Runtimes to support SSISDB failover.
  final String? dualStandbyPairName;

  /// Creates a new [IntegrationRuntimeSsisCatalogInfo].
  /// [catalogAdminPassword] The password of the administrator user account of the catalog database.
  /// [catalogAdminUserName] The administrator user name of catalog database.
  /// [catalogPricingTier] The pricing tier for the catalog database. The valid values could be found in https://azure.microsoft.com/en-us/pricing/details/sql-database/
  /// [catalogServerEndpoint] The catalog database server URL.
  /// [dualStandbyPairName] The dual standby pair name of Azure-SSIS Integration Runtimes to support SSISDB failover.
  IntegrationRuntimeSsisCatalogInfo({
    this.catalogAdminPassword,
    this.catalogAdminUserName,
    this.catalogPricingTier,
    this.catalogServerEndpoint,
    this.dualStandbyPairName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogAdminPassword': ?catalogAdminPassword == null ? null : catalogAdminPassword!.toMap(),
      'catalogAdminUserName': ?catalogAdminUserName,
      'catalogPricingTier': ?catalogPricingTier,
      'catalogServerEndpoint': ?catalogServerEndpoint,
      'dualStandbyPairName': ?dualStandbyPairName,
    };
  }

  factory IntegrationRuntimeSsisCatalogInfo.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisCatalogInfo(
      catalogAdminPassword: map['catalogAdminPassword'] == null ? null : SecureString.fromMap((map['catalogAdminPassword'] as Map).cast<String, dynamic>()),
      catalogAdminUserName: map['catalogAdminUserName'] == null ? null : map['catalogAdminUserName'] as String,
      catalogPricingTier: map['catalogPricingTier'] == null ? null : map['catalogPricingTier'] as String,
      catalogServerEndpoint: map['catalogServerEndpoint'] == null ? null : map['catalogServerEndpoint'] as String,
      dualStandbyPairName: map['dualStandbyPairName'] == null ? null : map['dualStandbyPairName'] as String,
    );
  }
}

