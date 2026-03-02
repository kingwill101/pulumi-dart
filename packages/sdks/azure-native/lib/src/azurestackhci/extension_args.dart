// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_extension_args_doc}
/// The set of arguments for Extension.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_extension_args_doc}
class ExtensionArgs {
  /// The name of the proxy resource holding details of HCI ArcSetting information.
  final pulumi.Input<String> arcSettingName;
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// The name of the machine extension.
  final pulumi.Input<String>? extensionName;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// Protected settings (may contain secrets).
  final pulumi.Input<dynamic>? protectedSettings;
  /// The name of the extension handler publisher.
  final pulumi.Input<String>? publisher;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler. Latest version would be used if not specified.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [ExtensionArgs].
  /// [arcSettingName] The name of the proxy resource holding details of HCI ArcSetting information.
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [clusterName] The name of the cluster.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  /// [extensionName] The name of the machine extension.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [protectedSettings] Protected settings (may contain secrets).
  /// [publisher] The name of the extension handler publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settings] Json formatted public settings for the extension.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler. Latest version would be used if not specified.
  ExtensionArgs({
    required this.arcSettingName,
    this.autoUpgradeMinorVersion,
    required this.clusterName,
    this.enableAutomaticUpgrade,
    this.extensionName,
    this.forceUpdateTag,
    this.protectedSettings,
    this.publisher,
    required this.resourceGroupName,
    this.settings,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcSettingName': arcSettingName,
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'clusterName': clusterName,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'extensionName': ?extensionName,
      'forceUpdateTag': ?forceUpdateTag,
      'protectedSettings': ?protectedSettings,
      'publisher': ?publisher,
      'resourceGroupName': resourceGroupName,
      'settings': ?settings,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory ExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionArgs(
      arcSettingName: (map['arcSettingName'] as String).input(),
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion'] as bool).input(),
      clusterName: (map['clusterName'] as String).input(),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : (map['enableAutomaticUpgrade'] as bool).input(),
      extensionName: map['extensionName'] == null ? null : (map['extensionName'] as String).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag'] as String).input(),
      protectedSettings: map['protectedSettings'] == null ? null : (map['protectedSettings']).input(),
      publisher: map['publisher'] == null ? null : (map['publisher'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      settings: map['settings'] == null ? null : (map['settings']).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion'] as String).input(),
    );
  }
}

