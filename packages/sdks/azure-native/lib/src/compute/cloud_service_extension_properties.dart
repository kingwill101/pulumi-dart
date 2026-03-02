// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_vault_and_secret_reference.dart';

/// Extension Properties.
class CloudServiceExtensionProperties {
  /// Explicitly specify whether platform can automatically upgrade typeHandlerVersion to higher minor versions when they become available.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// Tag to force apply the provided public and protected settings.
  /// Changing the tag value allows for re-running the extension without changing any of the public or protected settings.
  /// If forceUpdateTag is not changed, updates to public or protected settings would still be applied by the handler.
  /// If neither forceUpdateTag nor any of public or protected settings change, extension would flow to the role instance with the same sequence-number, and
  /// it is up to handler implementation whether to re-run it or not
  final pulumi.Input<String>? forceUpdateTag;
  /// Protected settings for the extension which are encrypted before sent to the role instance.
  final pulumi.Input<dynamic>? protectedSettings;
  /// Protected settings for the extension, referenced using KeyVault which are encrypted before sent to the role instance.
  final pulumi.Input<CloudServiceVaultAndSecretReference>? protectedSettingsFromKeyVault;
  /// The name of the extension handler publisher.
  final pulumi.Input<String>? publisher;
  /// Optional list of roles to apply this extension. If property is not specified or '*' is specified, extension is applied to all roles in the cloud service.
  final pulumi.Input<List<String>>? rolesAppliedTo;
  /// Public settings for the extension. For JSON extensions, this is the JSON settings for the extension. For XML Extension (like RDP), this is the XML setting for the extension.
  final pulumi.Input<dynamic>? settings;
  /// Specifies the type of the extension.
  final pulumi.Input<String>? type;
  /// Specifies the version of the extension. Specifies the version of the extension. If this element is not specified or an asterisk (*) is used as the value, the latest version of the extension is used. If the value is specified with a major version number and an asterisk as the minor version number (X.), the latest minor version of the specified major version is selected. If a major version number and a minor version number are specified (X.Y), the specific extension version is selected. If a version is specified, an auto-upgrade is performed on the role instance.
  final pulumi.Input<String>? typeHandlerVersion;

  /// Creates a new [CloudServiceExtensionProperties].
  /// [autoUpgradeMinorVersion] Explicitly specify whether platform can automatically upgrade typeHandlerVersion to higher minor versions when they become available.
  /// [forceUpdateTag] Tag to force apply the provided public and protected settings.
  /// [protectedSettings] Protected settings for the extension which are encrypted before sent to the role instance.
  /// [protectedSettingsFromKeyVault] Protected settings for the extension, referenced using KeyVault which are encrypted before sent to the role instance.
  /// [publisher] The name of the extension handler publisher.
  /// [rolesAppliedTo] Optional list of roles to apply this extension. If property is not specified or '*' is specified, extension is applied to all roles in the cloud service.
  /// [settings] Public settings for the extension. For JSON extensions, this is the JSON settings for the extension. For XML Extension (like RDP), this is the XML setting for the extension.
  /// [type] Specifies the type of the extension.
  /// [typeHandlerVersion] Specifies the version of the extension. Specifies the version of the extension. If this element is not specified or an asterisk (*) is used as the value, the latest version of the extension is used. If the value is specified with a major version number and an asterisk as the minor version number (X.), the latest minor version of the specified major version is selected. If a major version number and a minor version number are specified (X.Y), the specific extension version is selected. If a version is specified, an auto-upgrade is performed on the role instance.
  CloudServiceExtensionProperties({
    this.autoUpgradeMinorVersion,
    this.forceUpdateTag,
    this.protectedSettings,
    this.protectedSettingsFromKeyVault,
    this.publisher,
    this.rolesAppliedTo,
    this.settings,
    this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'forceUpdateTag': ?forceUpdateTag,
      'protectedSettings': ?protectedSettings,
      'protectedSettingsFromKeyVault': ?pulumi.Input.mapOptionalInputValue<CloudServiceVaultAndSecretReference, Map<String, dynamic>>(protectedSettingsFromKeyVault, (value) => value.toMap()),
      'publisher': ?publisher,
      'rolesAppliedTo': ?rolesAppliedTo,
      'settings': ?settings,
      'type': ?type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory CloudServiceExtensionProperties.fromMap(Map<String, dynamic> map) {
    return CloudServiceExtensionProperties(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion'] as bool).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag'] as String).input(),
      protectedSettings: map['protectedSettings'] == null ? null : (map['protectedSettings']).input(),
      protectedSettingsFromKeyVault: map['protectedSettingsFromKeyVault'] == null ? null : (CloudServiceVaultAndSecretReference.fromMap((map['protectedSettingsFromKeyVault'] as Map).cast<String, dynamic>())).input(),
      publisher: map['publisher'] == null ? null : (map['publisher'] as String).input(),
      rolesAppliedTo: map['rolesAppliedTo'] == null ? null : ((map['rolesAppliedTo'] as List).cast<String>()).input(),
      settings: map['settings'] == null ? null : (map['settings']).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : (map['typeHandlerVersion'] as String).input(),
    );
  }
}

