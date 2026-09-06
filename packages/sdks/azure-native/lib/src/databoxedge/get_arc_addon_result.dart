// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getArcAddon.
class GetArcAddonResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Host OS supported by the Arc addon.
  final String? hostPlatform;
  /// Platform where the runtime is hosted.
  final String? hostPlatformType;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// Addon type.
  /// Expected value is 'ArcForKubernetes'.
  final String? kind;
  /// The object name.
  final String? name;
  /// Addon Provisioning State
  final String? provisioningState;
  /// Arc resource group name
  final String? resourceGroupName;
  /// Arc resource location
  final String? resourceLocation;
  /// Arc resource Name
  final String? resourceName;
  /// Arc resource subscription Id
  final String? subscriptionId;
  /// Metadata pertaining to creation and last modification of Addon
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;
  /// Arc resource version
  final String? version;

  /// Creates a new [GetArcAddonResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hostPlatform] Host OS supported by the Arc addon.
  /// [hostPlatformType] Platform where the runtime is hosted.
  /// [id] The path ID that uniquely identifies the object.
  /// [kind] Addon type.
  /// [name] The object name.
  /// [provisioningState] Addon Provisioning State
  /// [resourceGroupName] Arc resource group name
  /// [resourceLocation] Arc resource location
  /// [resourceName] Arc resource Name
  /// [subscriptionId] Arc resource subscription Id
  /// [systemData] Metadata pertaining to creation and last modification of Addon
  /// [type] The hierarchical type of the object.
  /// [version] Arc resource version
  const GetArcAddonResult({
    this.azureApiVersion,
    this.hostPlatform,
    this.hostPlatformType,
    this.id,
    this.kind,
    this.name,
    this.provisioningState,
    this.resourceGroupName,
    this.resourceLocation,
    this.resourceName,
    this.subscriptionId,
    this.systemData,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'hostPlatform': ?hostPlatform,
      'hostPlatformType': ?hostPlatformType,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceGroupName': ?resourceGroupName,
      'resourceLocation': ?resourceLocation,
      'resourceName': ?resourceName,
      'subscriptionId': ?subscriptionId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetArcAddonResult.fromMap(Map<String, dynamic> map) {
    return GetArcAddonResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostPlatform: (() { final guardedValue = map['hostPlatform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostPlatformType: (() { final guardedValue = map['hostPlatformType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceLocation: (() { final guardedValue = map['resourceLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
