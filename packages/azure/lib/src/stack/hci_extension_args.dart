// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_stack_hci_extension_hci_extension_args_doc}
/// The set of arguments for HciExtension.
/// {@endtemplate}
/// {@macro pulumi_stack_hci_extension_hci_extension_args_doc}
class HciExtensionArgs {
  /// The ID of the Azure Stack HCI Cluster Arc Setting. Changing this forces a new resource to be created.
  final pulumi.Input<String> arcSettingId;
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. Changing this forces a new resource to be created. Possible values are `true` and `false`. Defaults to `true`.
  final pulumi.Input<bool>? autoUpgradeMinorVersionEnabled;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Possible values are `true` and `false`. Defaults to `true`.
  final pulumi.Input<bool>? automaticUpgradeEnabled;
  /// The name which should be used for this Azure Stack HCI Extension. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The json formatted protected settings for the extension.
  final pulumi.Input<String>? protectedSettings;
  /// The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;
  /// The json formatted public settings for the extension.
  final pulumi.Input<String>? settings;
  /// Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;
  /// Specifies the version of the script handler.
  ///
  /// > **Note:** `type_handler_version` cannot be set when `automatic_upgrade_enabled` is set to `true`.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [HciExtensionArgs].
  /// [arcSettingId] The ID of the Azure Stack HCI Cluster Arc Setting. Changing this forces a new resource to be created.
  /// [autoUpgradeMinorVersionEnabled] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. Changing this forces a new resource to be created. Possible values are `true` and `false`. Defaults to `true`.
  /// [automaticUpgradeEnabled] Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available. Possible values are `true` and `false`. Defaults to `true`.
  /// [name] The name which should be used for this Azure Stack HCI Extension. Changing this forces a new resource to be created.
  /// [protectedSettings] The json formatted protected settings for the extension.
  /// [publisher] The name of the extension handler publisher, such as `Microsoft.Azure.Monitor`. Changing this forces a new resource to be created.
  /// [settings] The json formatted public settings for the extension.
  /// [type] Specifies the type of the extension. For example `CustomScriptExtension` or `AzureMonitorLinuxAgent`. Changing this forces a new resource to be created.
  /// [typeHandlerVersion] Specifies the version of the script handler.
  HciExtensionArgs({
    required String arcSettingId,
    bool? autoUpgradeMinorVersionEnabled,
    bool? automaticUpgradeEnabled,
    String? name,
    String? protectedSettings,
    required String publisher,
    String? settings,
    required String type,
    String? typeHandlerVersion,
  }) :
      arcSettingId = pulumi.Input.asInput<String>(arcSettingId),
      autoUpgradeMinorVersionEnabled = pulumi.Input.asOptionalInput<bool>(autoUpgradeMinorVersionEnabled),
      automaticUpgradeEnabled = pulumi.Input.asOptionalInput<bool>(automaticUpgradeEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectedSettings = pulumi.Input.asOptionalInput<String>(protectedSettings),
      publisher = pulumi.Input.asInput<String>(publisher),
      settings = pulumi.Input.asOptionalInput<String>(settings),
      type = pulumi.Input.asInput<String>(type),
      typeHandlerVersion = pulumi.Input.asOptionalInput<String>(typeHandlerVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcSettingId': arcSettingId,
      'autoUpgradeMinorVersionEnabled': ?autoUpgradeMinorVersionEnabled,
      'automaticUpgradeEnabled': ?automaticUpgradeEnabled,
      'name': ?name,
      'protectedSettings': ?protectedSettings,
      'publisher': publisher,
      'settings': ?settings,
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory HciExtensionArgs.fromMap(Map<String, dynamic> map) {
    return HciExtensionArgs(
      arcSettingId: map['arcSettingId'] as String,
      autoUpgradeMinorVersionEnabled: map['autoUpgradeMinorVersionEnabled'] == null ? null : map['autoUpgradeMinorVersionEnabled'] as bool,
      automaticUpgradeEnabled: map['automaticUpgradeEnabled'] == null ? null : map['automaticUpgradeEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings'] as String,
      publisher: map['publisher'] as String,
      settings: map['settings'] == null ? null : map['settings'] as String,
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion'] as String,
    );
  }
}

