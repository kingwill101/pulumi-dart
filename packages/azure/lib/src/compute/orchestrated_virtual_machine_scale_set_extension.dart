// ignore_for_file: unused_element, unnecessary_cast

import 'orchestrated_virtual_machine_scale_set_extension_protected_settings_from_key_vault.dart';

class OrchestratedVirtualMachineScaleSetExtension {
  /// Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  final bool? autoUpgradeMinorVersionEnabled;
  /// An ordered list of Extension names which Virtual Machine Scale Set should provision after VM creation.
  final List<String>? extensionsToProvisionAfterVmCreations;
  /// Should failures from the extension be suppressed? Possible values are `true` or `false`.
  ///
  /// > **Note:** Operational failures such as not connecting to the VM will not be suppressed regardless of the `failure_suppression_enabled` value.
  final bool? failureSuppressionEnabled;
  /// A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  final String? forceExtensionExecutionOnChange;
  /// The name for the Virtual Machine Scale Set Extension.
  final String name;
  /// A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  ///
  /// > **Note:** Keys within the `protected_settings` block are notoriously case-sensitive, where the casing required (e.g. `TitleCase` vs `snakeCase`) depends on the Extension being used. Please refer to the documentation for the specific Virtual Machine Extension you're looking to use for more information.
  final String? protectedSettings;
  /// A `protected_settings_from_key_vault` block as defined below.
  ///
  /// > **Note:** `protected_settings_from_key_vault` cannot be used with `protected_settings`
  final OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault? protectedSettingsFromKeyVault;
  /// Specifies the Publisher of the Extension.
  final String publisher;
  /// A JSON String which specifies Settings for the Extension.
  final String? settings;
  /// Specifies the Type of the Extension.
  final String type;
  /// Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  final String typeHandlerVersion;

  /// Creates a new [OrchestratedVirtualMachineScaleSetExtension].
  /// [autoUpgradeMinorVersionEnabled] Should the latest version of the Extension be used at Deployment Time, if one is available? This won't auto-update the extension on existing installation. Defaults to `true`.
  /// [extensionsToProvisionAfterVmCreations] An ordered list of Extension names which Virtual Machine Scale Set should provision after VM creation.
  /// [failureSuppressionEnabled] Should failures from the extension be suppressed? Possible values are `true` or `false`.
  /// [forceExtensionExecutionOnChange] A value which, when different to the previous value can be used to force-run the Extension even if the Extension Configuration hasn't changed.
  /// [name] The name for the Virtual Machine Scale Set Extension.
  /// [protectedSettings] A JSON String which specifies Sensitive Settings (such as Passwords) for the Extension.
  /// [protectedSettingsFromKeyVault] A `protected_settings_from_key_vault` block as defined below.
  /// [publisher] Specifies the Publisher of the Extension.
  /// [settings] A JSON String which specifies Settings for the Extension.
  /// [type] Specifies the Type of the Extension.
  /// [typeHandlerVersion] Specifies the version of the extension to use, available versions can be found using the Azure CLI.
  OrchestratedVirtualMachineScaleSetExtension({
    this.autoUpgradeMinorVersionEnabled,
    this.extensionsToProvisionAfterVmCreations,
    this.failureSuppressionEnabled,
    this.forceExtensionExecutionOnChange,
    required this.name,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    required this.publisher,
    this.settings,
    required this.type,
    required this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersionEnabled': ?autoUpgradeMinorVersionEnabled,
      'extensionsToProvisionAfterVmCreations': ?extensionsToProvisionAfterVmCreations,
      'failureSuppressionEnabled': ?failureSuppressionEnabled,
      'forceExtensionExecutionOnChange': ?forceExtensionExecutionOnChange,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?protectedSettingsFromKeyVault == null ? null : protectedSettingsFromKeyVault!.toMap(),
      'publisher': publisher,
      'settings': ?settings,
      'type': type,
      'typeHandlerVersion': typeHandlerVersion,
    };
  }

  factory OrchestratedVirtualMachineScaleSetExtension.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetExtension(
      autoUpgradeMinorVersionEnabled: map['autoUpgradeMinorVersionEnabled'] == null ? null : map['autoUpgradeMinorVersionEnabled'] as bool,
      extensionsToProvisionAfterVmCreations: map['extensionsToProvisionAfterVmCreations'] == null ? null : (map['extensionsToProvisionAfterVmCreations'] as List).cast<String>(),
      failureSuppressionEnabled: map['failureSuppressionEnabled'] == null ? null : map['failureSuppressionEnabled'] as bool,
      forceExtensionExecutionOnChange: map['forceExtensionExecutionOnChange'] == null ? null : map['forceExtensionExecutionOnChange'] as String,
      name: map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'] as String,
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>()),
      publisher: map['publisher'] as String,
      settings: map['settings'] == null ? null : map['settings'] as String,
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] as String,
    );
  }
}

