// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_machine_extension_args_doc}
/// The set of arguments for MachineExtension.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_machine_extension_args_doc}
class MachineExtensionArgs {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// The name of the machine extension.
  final pulumi.Input<String>? extensionName;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The location.
  final pulumi.Input<String>? location;
  /// The name of the machine where the extension should be created or updated.
  final pulumi.Input<String> name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final pulumi.Input<dynamic>? protectedSettings;
  /// The name of the extension handler publisher.
  final pulumi.Input<String>? publisher;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Json formatted public settings for the extension.
  final pulumi.Input<dynamic>? settings;
  /// The Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the type of the extension; an example is "CustomScriptExtension".
  final pulumi.Input<String>? type;
  /// Specifies the version of the script handler.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [MachineExtensionArgs].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [extensionName] The name of the machine extension.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [location] The location.
  /// [name] The name of the machine where the extension should be created or updated.
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [publisher] The name of the extension handler publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settings] Json formatted public settings for the extension.
  /// [tags] The Resource tags.
  /// [type] Specifies the type of the extension; an example is "CustomScriptExtension".
  /// [typeHandlerVersion] Specifies the version of the script handler.
  MachineExtensionArgs({
    pulumi.Output<bool>? autoUpgradeMinorVersion,
    pulumi.Output<String>? extensionName,
    pulumi.Output<String>? forceUpdateTag,
    pulumi.Output<String>? location,
    required pulumi.Output<String> name,
    pulumi.Output<dynamic>? protectedSettings,
    pulumi.Output<String>? publisher,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<dynamic>? settings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? typeHandlerVersion,
  }) :
      autoUpgradeMinorVersion = pulumi.Input.asOptionalInput<bool>(autoUpgradeMinorVersion),
      extensionName = pulumi.Input.asOptionalInput<String>(extensionName),
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      protectedSettings = pulumi.Input.asOptionalInput<dynamic>(protectedSettings),
      publisher = pulumi.Input.asOptionalInput<String>(publisher),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settings = pulumi.Input.asOptionalInput<dynamic>(settings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      typeHandlerVersion = pulumi.Input.asOptionalInput<String>(typeHandlerVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'extensionName': ?extensionName,
      'forceUpdateTag': ?forceUpdateTag,
      'location': ?location,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'publisher': ?publisher,
      'resourceGroupName': resourceGroupName,
      'settings': ?settings,
      'tags': ?tags,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory MachineExtensionArgs.fromMap(Map<String, dynamic> map) {
    return MachineExtensionArgs(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : pulumi.Output.create<bool>(map['autoUpgradeMinorVersion'] as bool),
      extensionName: map['extensionName'] == null ? null : pulumi.Output.create<String>(map['extensionName'] as String),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      protectedSettings: map['protectedSettings'] == null ? null : pulumi.Output.create<dynamic>(map['protectedSettings']),
      publisher: map['publisher'] == null ? null : pulumi.Output.create<String>(map['publisher'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<dynamic>(map['settings']),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : pulumi.Output.create<String>(map['typeHandlerVersion'] as String),
    );
  }
}

