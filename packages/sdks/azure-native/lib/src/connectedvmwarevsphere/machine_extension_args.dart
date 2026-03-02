// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_machine_extension_args_doc}
/// The set of arguments for MachineExtension.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_machine_extension_args_doc}
class MachineExtensionArgs {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// The name of the machine extension.
  final pulumi.Input<String>? extensionName;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// The name of the extension handler publisher.
  final pulumi.Input<String>? publisher;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;
  /// The name of the machine where the extension should be created or updated.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [MachineExtensionArgs].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [enableAutomaticUpgrade] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  /// [extensionName] The name of the machine extension.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [location] Gets or sets the location.
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [publisher] The name of the extension handler publisher.
  /// [resourceGroupName] The Resource Group Name.
  /// [settings] Json formatted public settings for the extension.
  /// [tags] Gets or sets the Resource tags.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  /// [virtualMachineName] The name of the machine where the extension should be created or updated.
  MachineExtensionArgs({
    this.autoUpgradeMinorVersion,
    this.enableAutomaticUpgrade,
    this.extensionName,
    this.forceUpdateTag,
    this.location,
    this.protectedSettings,
    this.publisher,
    required this.resourceGroupName,
    this.settings,
    this.tags,
    this.type,
    this.typeHandlerVersion,
    required this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'extensionName': ?extensionName,
      'forceUpdateTag': ?forceUpdateTag,
      'location': ?location,
      'protectedSettings': ?protectedSettings,
      'publisher': ?publisher,
      'resourceGroupName': resourceGroupName,
      'settings': ?settings,
      'tags': ?tags,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory MachineExtensionArgs.fromMap(Map<String, dynamic> map) {
    return MachineExtensionArgs(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion']! as bool).input(),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : (map['enableAutomaticUpgrade']! as bool).input(),
      extensionName: map['extensionName'] == null ? null : (map['extensionName']! as String).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      protectedSettings: map['protectedSettings'] == null ? null : (map['protectedSettings']!).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      settings: map['settings'] == null ? null : (map['settings']!).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion']! as String).input(),
      virtualMachineName: (map['virtualMachineName'] as String).input(),
    );
  }
}

