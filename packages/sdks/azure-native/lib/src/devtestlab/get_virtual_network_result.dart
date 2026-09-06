// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_subnet_response.dart';
import 'subnet_override_response.dart';
import 'subnet_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The allowed subnets of the virtual network.
  final List<SubnetResponse>? allowedSubnets;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of the virtual network.
  final String? createdDate;
  /// The description of the virtual network.
  final String? description;
  /// The Microsoft.Network resource identifier of the virtual network.
  final String? externalProviderResourceId;
  /// The external subnet properties.
  final List<ExternalSubnetResponse>? externalSubnets;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioning status of the resource.
  final String? provisioningState;
  /// The subnet overrides of the virtual network.
  final List<SubnetOverrideResponse>? subnetOverrides;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The unique immutable identifier of a resource (Guid).
  final String? uniqueIdentifier;

  /// Creates a new [GetVirtualNetworkResult].
  /// [allowedSubnets] The allowed subnets of the virtual network.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The creation date of the virtual network.
  /// [description] The description of the virtual network.
  /// [externalProviderResourceId] The Microsoft.Network resource identifier of the virtual network.
  /// [externalSubnets] The external subnet properties.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning status of the resource.
  /// [subnetOverrides] The subnet overrides of the virtual network.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  const GetVirtualNetworkResult({
    this.allowedSubnets,
    this.azureApiVersion,
    this.createdDate,
    this.description,
    this.externalProviderResourceId,
    this.externalSubnets,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.subnetOverrides,
    this.systemData,
    this.tags,
    this.type,
    this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubnets': ?(() { final guardedValue = allowedSubnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'createdDate': ?createdDate,
      'description': ?description,
      'externalProviderResourceId': ?externalProviderResourceId,
      'externalSubnets': ?(() { final guardedValue = externalSubnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExternalSubnetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'subnetOverrides': ?(() { final guardedValue = subnetOverrides; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubnetOverrideResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uniqueIdentifier': ?uniqueIdentifier,
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      allowedSubnets: (() { final guardedValue = map['allowedSubnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubnetResponse>(guardedValue, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalProviderResourceId: (() { final guardedValue = map['externalProviderResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalSubnets: (() { final guardedValue = map['externalSubnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExternalSubnetResponse>(guardedValue, (value) => ExternalSubnetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetOverrides: (() { final guardedValue = map['subnetOverrides']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubnetOverrideResponse>(guardedValue, (value) => SubnetOverrideResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueIdentifier: (() { final guardedValue = map['uniqueIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
