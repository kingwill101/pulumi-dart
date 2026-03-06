// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'logical_network_arm_reference_response.dart';
import 'network_interface_arm_reference_response.dart';
import 'network_security_group_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkSecurityGroup.
class GetNetworkSecurityGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String eTag;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// A collection of references to network interfaces that are currently using this NSG.
  final List<NetworkInterfaceArmReferenceResponse> networkInterfaces;
  /// The provisioning state of the network security group resource.
  final String provisioningState;
  /// The observed state of Network Security Group
  final NetworkSecurityGroupStatusResponse status;
  /// A collection of references to logical networks that are currently using this NSG
  final List<LogicalNetworkArmReferenceResponse> subnets;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetNetworkSecurityGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkInterfaces] A collection of references to network interfaces that are currently using this NSG.
  /// [provisioningState] The provisioning state of the network security group resource.
  /// [status] The observed state of Network Security Group
  /// [subnets] A collection of references to logical networks that are currently using this NSG
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetNetworkSecurityGroupResult({
    required this.azureApiVersion,
    required this.eTag,
    this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.networkInterfaces,
    required this.provisioningState,
    required this.status,
    required this.subnets,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': eTag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'networkInterfaces': pulumi.Input.encodeList<NetworkInterfaceArmReferenceResponse, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'subnets': pulumi.Input.encodeList<LogicalNetworkArmReferenceResponse, Map<String, dynamic>>(subnets, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceArmReferenceResponse>(map['networkInterfaces']!, (value) => NetworkInterfaceArmReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      status: NetworkSecurityGroupStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      subnets: pulumi.Input.decodeList<LogicalNetworkArmReferenceResponse>(map['subnets']!, (value) => LogicalNetworkArmReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

