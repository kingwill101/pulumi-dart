// ignore_for_file: unused_element, unnecessary_cast

import 'machine_extension_instance_view_response.dart';

/// Describes the properties of a Machine Extension.
class MachineExtensionPropertiesResponse {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  final bool? enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final String? forceUpdateTag;
  /// The machine extension instance view.
  final MachineExtensionInstanceViewResponse? instanceView;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final dynamic protectedSettings;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The name of the extension handler publisher.
  final String? publisher;
  /// Json formatted public settings for the extension.
  final dynamic settings;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final String? type;
  /// Specifies the version of the script handler.
  final String? typeHandlerVersion;

  /// Creates a new [MachineExtensionPropertiesResponse].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [instanceView] The machine extension instance view.
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  MachineExtensionPropertiesResponse({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.forceUpdateTag,
    this.instanceView,
    this.protectedSettings,
    required this.provisioningState,
    this.publisher,
    this.settings,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'forceUpdateTag': ?forceUpdateTag,
      'instanceView': ?instanceView == null ? null : instanceView!.toMap(),
      'protectedSettings': ?protectedSettings,
      'provisioningState': provisioningState,
      'publisher': ?publisher,
      'settings': ?settings,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory MachineExtensionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MachineExtensionPropertiesResponse(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion'] as bool,
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : map['enableAutomaticUpgrade'] as bool,
      forceUpdateTag: map['forceUpdateTag'] == null ? null : map['forceUpdateTag'] as String,
      instanceView: map['instanceView'] == null ? null : MachineExtensionInstanceViewResponse.fromMap((map['instanceView'] as Map).cast<String, dynamic>()),
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'],
      provisioningState: map['provisioningState'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      settings: map['settings'] == null ? null : map['settings'],
      type: map['type'] == null ? null : map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

