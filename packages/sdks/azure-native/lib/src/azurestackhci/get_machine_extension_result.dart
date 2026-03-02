// ignore_for_file: unused_element, unnecessary_cast

import 'machine_extension_properties_response_instance_view.dart';
import 'system_data_response.dart';

/// Result data returned by getMachineExtension.
class GetMachineExtensionResult {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  final bool? autoUpgradeMinorVersion;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  final String? forceUpdateTag;
  /// The Id.
  final String id;
  /// The machine extension instance view.
  final MachineExtensionPropertiesResponseInstanceView? instanceView;
  /// The location.
  final String? location;
  /// The name.
  final String name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  final dynamic protectedSettings;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The name of the extension handler publisher.
  final String? publisher;
  /// Json formatted public settings for the extension.
  final dynamic settings;
  /// The system data.
  final SystemDataResponse systemData;
  /// The Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// Specifies the version of the script handler.
  final String? typeHandlerVersion;

  /// Creates a new [GetMachineExtensionResult].
  /// [autoUpgradeMinorVersion] Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [forceUpdateTag] How the extension handler should be forced to update even if the extension configuration has not changed.
  /// [id] The Id.
  /// [instanceView] The machine extension instance view.
  /// [location] The location.
  /// [name] The name.
  /// [protectedSettings] The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [publisher] The name of the extension handler publisher.
  /// [settings] Json formatted public settings for the extension.
  /// [systemData] The system data.
  /// [tags] The Resource tags.
  /// [type] The type of the resource.
  /// [typeHandlerVersion] Specifies the version of the script handler.
  GetMachineExtensionResult({
    this.autoUpgradeMinorVersion,
    required this.azureApiVersion,
    this.forceUpdateTag,
    required this.id,
    this.instanceView,
    this.location,
    required this.name,
    this.protectedSettings,
    required this.provisioningState,
    this.publisher,
    this.settings,
    required this.systemData,
    this.tags,
    required this.type,
    this.typeHandlerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'azureApiVersion': azureApiVersion,
      'forceUpdateTag': ?forceUpdateTag,
      'id': id,
      'instanceView': ?instanceView == null ? null : instanceView!.toMap(),
      'location': ?location,
      'name': name,
      'protectedSettings': ?protectedSettings,
      'provisioningState': provisioningState,
      'publisher': ?publisher,
      'settings': ?settings,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'typeHandlerVersion': ?typeHandlerVersion,
    };
  }

  factory GetMachineExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetMachineExtensionResult(
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion']! as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      forceUpdateTag: map['forceUpdateTag'] == null ? null : map['forceUpdateTag']! as String,
      id: map['id'] as String,
      instanceView: map['instanceView'] == null ? null : MachineExtensionPropertiesResponseInstanceView.fromMap((map['instanceView']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      protectedSettings: map['protectedSettings'] == null ? null : map['protectedSettings']!,
      provisioningState: map['provisioningState'] as String,
      publisher: map['publisher'] == null ? null : map['publisher']! as String,
      settings: map['settings'] == null ? null : map['settings']!,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      typeHandlerVersion: map['typeHandlerVersion'] == null ? null : map['typeHandlerVersion']! as String,
    );
  }
}

