// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_subnet_response.dart';
import 'subnet_override_response.dart';
import 'subnet_response.dart';

/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The allowed subnets of the virtual network.
  final List<SubnetResponse>? allowedSubnets;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of the virtual network.
  final String createdDate;
  /// The description of the virtual network.
  final String? description;
  /// The Microsoft.Network resource identifier of the virtual network.
  final String? externalProviderResourceId;
  /// The external subnet properties.
  final List<ExternalSubnetResponse> externalSubnets;
  /// The identifier of the resource.
  final String id;
  /// The location of the resource.
  final String? location;
  /// The name of the resource.
  final String name;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// The subnet overrides of the virtual network.
  final List<SubnetOverrideResponse>? subnetOverrides;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;

  /// Creates a new [GetVirtualNetworkResult].
  /// [allowedSubnets] The allowed subnets of the virtual network.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The creation date of the virtual network.
  /// [description] The description of the virtual network.
  /// [externalProviderResourceId] The Microsoft.Network resource identifier of the virtual network.
  /// [externalSubnets] The external subnet properties.
  /// [id] The identifier of the resource.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning status of the resource.
  /// [subnetOverrides] The subnet overrides of the virtual network.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  const GetVirtualNetworkResult({
    this.allowedSubnets,
    required this.azureApiVersion,
    required this.createdDate,
    this.description,
    this.externalProviderResourceId,
    required this.externalSubnets,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.subnetOverrides,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSubnets': ?(() { final guardedValue = allowedSubnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'description': ?description,
      'externalProviderResourceId': ?externalProviderResourceId,
      'externalSubnets': pulumi.Input.encodeList<ExternalSubnetResponse, Map<String, dynamic>>(externalSubnets, (value) => value.toMap()),
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'subnetOverrides': ?(() { final guardedValue = subnetOverrides; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubnetOverrideResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      allowedSubnets: (() { final guardedValue = map['allowedSubnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubnetResponse>(guardedValue, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalProviderResourceId: (() { final guardedValue = map['externalProviderResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalSubnets: pulumi.Input.decodeList<ExternalSubnetResponse>(map['externalSubnets']!, (value) => ExternalSubnetResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      subnetOverrides: (() { final guardedValue = map['subnetOverrides']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubnetOverrideResponse>(guardedValue, (value) => SubnetOverrideResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
    );
  }
}

