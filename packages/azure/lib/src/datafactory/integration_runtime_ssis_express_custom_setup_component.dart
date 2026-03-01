// ignore_for_file: unused_element, unnecessary_cast

import 'integration_runtime_ssis_express_custom_setup_component_key_vault_license.dart';

class IntegrationRuntimeSsisExpressCustomSetupComponent {
  /// A `key_vault_secret_reference` block as defined below.
  final IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense? keyVaultLicense;
  /// The license used for the Component.
  final String? license;
  /// The Component Name installed for the Azure-SSIS Integration Runtime.
  final String name;

  /// Creates a new [IntegrationRuntimeSsisExpressCustomSetupComponent].
  /// [keyVaultLicense] A `key_vault_secret_reference` block as defined below.
  /// [license] The license used for the Component.
  /// [name] The Component Name installed for the Azure-SSIS Integration Runtime.
  IntegrationRuntimeSsisExpressCustomSetupComponent({
    this.keyVaultLicense,
    this.license,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultLicense': ?keyVaultLicense == null ? null : keyVaultLicense!.toMap(),
      'license': ?license,
      'name': name,
    };
  }

  factory IntegrationRuntimeSsisExpressCustomSetupComponent.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisExpressCustomSetupComponent(
      keyVaultLicense: map['keyVaultLicense'] == null ? null : IntegrationRuntimeSsisExpressCustomSetupComponentKeyVaultLicense.fromMap((map['keyVaultLicense'] as Map).cast<String, dynamic>()),
      license: map['license'] == null ? null : map['license'] as String,
      name: map['name'] as String,
    );
  }
}

