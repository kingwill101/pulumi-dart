// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The type of the device.
  final String deviceType;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The list of network functions deployed on the device.
  final List<SubResourceResponse> networkFunctions;
  /// The provisioning state of the device resource.
  final String provisioningState;
  /// The current device status.
  final String status;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDeviceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deviceType] The type of the device.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkFunctions] The list of network functions deployed on the device.
  /// [provisioningState] The provisioning state of the device resource.
  /// [status] The current device status.
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDeviceResult({
    required this.azureApiVersion,
    required this.deviceType,
    required this.id,
    required this.location,
    required this.name,
    required this.networkFunctions,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deviceType': deviceType,
      'id': id,
      'location': location,
      'name': name,
      'networkFunctions': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(networkFunctions, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deviceType: map['deviceType'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkFunctions: pulumi.Input.decodeList<SubResourceResponse>(map['networkFunctions'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

