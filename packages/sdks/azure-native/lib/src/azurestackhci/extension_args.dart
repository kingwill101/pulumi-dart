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
    required pulumi.Output<String> arcSettingName,
    pulumi.Output<bool>? autoUpgradeMinorVersion,
    required pulumi.Output<String> clusterName,
    pulumi.Output<bool>? enableAutomaticUpgrade,
    pulumi.Output<String>? extensionName,
    pulumi.Output<String>? forceUpdateTag,
    pulumi.Output<dynamic>? protectedSettings,
    pulumi.Output<String>? publisher,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<dynamic>? settings,
    pulumi.Output<String>? type,
    pulumi.Output<String>? typeHandlerVersion,
  }) :
      arcSettingName = pulumi.Input.asInput<String>(arcSettingName),
      autoUpgradeMinorVersion = pulumi.Input.asOptionalInput<bool>(autoUpgradeMinorVersion),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      enableAutomaticUpgrade = pulumi.Input.asOptionalInput<bool>(enableAutomaticUpgrade),
      extensionName = pulumi.Input.asOptionalInput<String>(extensionName),
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      protectedSettings = pulumi.Input.asOptionalInput<dynamic>(protectedSettings),
      publisher = pulumi.Input.asOptionalInput<String>(publisher),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settings = pulumi.Input.asOptionalInput<dynamic>(settings),
      type = pulumi.Input.asOptionalInput<String>(type),
      typeHandlerVersion = pulumi.Input.asOptionalInput<String>(typeHandlerVersion);

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
      arcSettingName: pulumi.Output.create<String>(map['arcSettingName'] as String),
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : pulumi.Output.create<bool>(map['autoUpgradeMinorVersion'] as bool),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : pulumi.Output.create<bool>(map['enableAutomaticUpgrade'] as bool),
      extensionName: map['extensionName'] == null ? null : pulumi.Output.create<String>(map['extensionName'] as String),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      protectedSettings: map['protectedSettings'] == null ? null : pulumi.Output.create<dynamic>(map['protectedSettings']),
      publisher: map['publisher'] == null ? null : pulumi.Output.create<String>(map['publisher'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<dynamic>(map['settings']),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : pulumi.Output.create<String>(map['typeHandlerVersion'] as String),
    );
  }
}

