// ignore_for_file: unused_element, unnecessary_cast

import 'network_profile_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDedicatedHsm.
class GetDedicatedHsmResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Specifies the management network interfaces of the dedicated hsm.
  final NetworkProfileResponse? managementNetworkProfile;
  /// The name of the resource
  final String? name;
  /// Specifies the network interfaces of the dedicated hsm.
  final NetworkProfileResponse? networkProfile;
  /// Provisioning state.
  final String? provisioningState;
  /// SKU details
  final SkuResponse? sku;
  /// This field will be used when RP does not support Availability zones.
  final String? stampId;
  /// Resource Status Message.
  final String? statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The Dedicated Hsm zones.
  final List<String>? zones;

  /// Creates a new [GetDedicatedHsmResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [managementNetworkProfile] Specifies the management network interfaces of the dedicated hsm.
  /// [name] The name of the resource
  /// [networkProfile] Specifies the network interfaces of the dedicated hsm.
  /// [provisioningState] Provisioning state.
  /// [sku] SKU details
  /// [stampId] This field will be used when RP does not support Availability zones.
  /// [statusMessage] Resource Status Message.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zones] The Dedicated Hsm zones.
  const GetDedicatedHsmResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.managementNetworkProfile,
    this.name,
    this.networkProfile,
    this.provisioningState,
    this.sku,
    this.stampId,
    this.statusMessage,
    this.systemData,
    this.tags,
    this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'managementNetworkProfile': ?managementNetworkProfile?.toMap(),
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'stampId': ?stampId,
      'statusMessage': ?statusMessage,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'zones': ?zones,
    };
  }

  factory GetDedicatedHsmResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHsmResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementNetworkProfile: (() { final guardedValue = map['managementNetworkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      stampId: (() { final guardedValue = map['stampId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
