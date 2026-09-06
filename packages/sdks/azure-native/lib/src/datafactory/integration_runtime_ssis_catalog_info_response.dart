// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_string_response.dart';

/// Catalog information for managed dedicated integration runtime.
class IntegrationRuntimeSsisCatalogInfoResponse {
  /// The password of the administrator user account of the catalog database.
  final pulumi.Input<SecureStringResponse?>? catalogAdminPassword;
  /// The administrator user name of catalog database.
  final pulumi.Input<String?>? catalogAdminUserName;
  /// The pricing tier for the catalog database. The valid values could be found in https://azure.microsoft.com/en-us/pricing/details/sql-database/
  final pulumi.Input<String?>? catalogPricingTier;
  /// The catalog database server URL.
  final pulumi.Input<String?>? catalogServerEndpoint;
  /// The dual standby pair name of Azure-SSIS Integration Runtimes to support SSISDB failover.
  final pulumi.Input<String?>? dualStandbyPairName;

  /// Creates a new [IntegrationRuntimeSsisCatalogInfoResponse].
  /// [catalogAdminPassword] The password of the administrator user account of the catalog database.
  /// [catalogAdminUserName] The administrator user name of catalog database.
  /// [catalogPricingTier] The pricing tier for the catalog database. The valid values could be found in https://azure.microsoft.com/en-us/pricing/details/sql-database/
  /// [catalogServerEndpoint] The catalog database server URL.
  /// [dualStandbyPairName] The dual standby pair name of Azure-SSIS Integration Runtimes to support SSISDB failover.
  const IntegrationRuntimeSsisCatalogInfoResponse({
    this.catalogAdminPassword,
    this.catalogAdminUserName,
    this.catalogPricingTier,
    this.catalogServerEndpoint,
    this.dualStandbyPairName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogAdminPassword': ?pulumi.Input.mapOptionalInputValue<SecureStringResponse, Map<String, dynamic>>(catalogAdminPassword, (value) => value.toMap()),
      'catalogAdminUserName': ?catalogAdminUserName,
      'catalogPricingTier': ?catalogPricingTier,
      'catalogServerEndpoint': ?catalogServerEndpoint,
      'dualStandbyPairName': ?dualStandbyPairName,
    };
  }

  factory IntegrationRuntimeSsisCatalogInfoResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisCatalogInfoResponse(
      catalogAdminPassword: (() { final guardedValue = map['catalogAdminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecureStringResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      catalogAdminUserName: (() { final guardedValue = map['catalogAdminUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      catalogPricingTier: (() { final guardedValue = map['catalogPricingTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      catalogServerEndpoint: (() { final guardedValue = map['catalogServerEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dualStandbyPairName: (() { final guardedValue = map['dualStandbyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
