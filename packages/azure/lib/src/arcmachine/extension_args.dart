// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arcmachine_extension_extension_args_doc}
/// The set of arguments for Extension.
/// {@endtemplate}
/// {@macro pulumi_arcmachine_extension_extension_args_doc}
class ExtensionArgs {
  /// The ID of the Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String> arcMachineId;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`. Defaults to `true`.
  ///
  /// > **Note:** When `automatic_upgrade_enabled` can only be set during creation. Any later change will be ignored.
  ///
  /// > **Note:** When `automatic_upgrade_enabled` is set to `true`, the `type_handler_version` is automatically updated by the Azure platform when a new version is available and any change in `type_handler_version` will be automatically ignored.
  final pulumi.Input<bool>? automaticUpgradeEnabled;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The Azure Region where the Hybrid Compute Machine Extension should exist. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String>? name;
  /// Json formatted protected settings for the extension.
  final pulumi.Input<String>? protectedSettings;
  /// The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String> publisher;
  /// Json formatted public settings for the extension.
  final pulumi.Input<String>? settings;
  /// A mapping of tags which should be assigned to the Hybrid Compute Machine Extension.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  final pulumi.Input<String> type;
  /// Specifies the version of the script handler.
  ///
  /// > **Note:** 1. When `automatic_upgrade_enabled` is set to `false` and no `type_handler_version` is specified, the `type_handler_version` change should be manually ignored by `ignore_changes` lifecycle block. This is because the `type_handler_version` is set by the Azure platform when the extension is created. 2. When `automatic_upgrade_enabled` is set to `false` and `type_handler_version` is specified, the provider will check whether the version prefix is aligned with user input. For example, if user specifies `1.24` in `type_handler_version`, `1.24.1` will be considered as no diff.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [ExtensionArgs].
  /// [arcMachineId] The ID of the Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [automaticUpgradeEnabled] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Supported values are `true` and `false`. Defaults to `true`.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [location] The Azure Region where the Hybrid Compute Machine Extension should exist. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [name] The name which should be used for this Hybrid Compute Machine Extension. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [protectedSettings] Json formatted protected settings for the extension.
  /// [publisher] The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [settings] Json formatted public settings for the extension.
  /// [tags] A mapping of tags which should be assigned to the Hybrid Compute Machine Extension.
  /// [type] Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new Hybrid Compute Machine Extension to be created.
  /// [typeHandlerVersion] Specifies the version of the script handler.
  ExtensionArgs({
    required String arcMachineId,
    bool? automaticUpgradeEnabled,
    String? forceUpdateTag,
    String? location,
    String? name,
    String? protectedSettings,
    required String publisher,
    String? settings,
    Map<String, String>? tags,
    required String type,
    String? typeHandlerVersion,
  }) :
      arcMachineId = pulumi.Input.asInput<String>(arcMachineId),
      automaticUpgradeEnabled = pulumi.Input.asOptionalInput<bool>(automaticUpgradeEnabled),
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectedSettings = pulumi.Input.asOptionalInput<String>(protectedSettings),
      publisher = pulumi.Input.asInput<String>(publisher),
      settings = pulumi.Input.asOptionalInput<String>(settings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type),
      typeHandlerVersion = pulumi.Input.asOptionalInput<String>(typeHandlerVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcMachineId': arcMachineId,
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'forceUpdateTag': ?forceUpdateTag,
      'location': ?location,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'publisher': publisher,
      'settings': ?settings,
      'tags': ?tags,
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory ExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionArgs(
      arcMachineId: map['arcMachineId'] as String,
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : map['automaticUpgradeEnabled'] as bool,
      forceUpdateTag: map['forceUpdateTag'] == null ? null : map['forceUpdateTag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'] as String,
      publisher: map['publisher'] as String,
      settings: map['settings'] == null ? null : map['settings'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

