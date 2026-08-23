// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// IP configuration of an Bastion Host.
class BastionHostIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Private IP allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The provisioning state of the bastion host IP configuration resource.
  final pulumi.Input<String> provisioningState;
  /// Reference of the PublicIP resource. Null for private only bastion
  final pulumi.Input<SubResourceResponse>? publicIPAddress;
  /// Reference of the subnet resource.
  final pulumi.Input<SubResourceResponse> subnet;
  /// Ip configuration type.
  final pulumi.Input<String> type;

  /// Creates a new [BastionHostIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateIPAllocationMethod] Private IP allocation method.
  /// [provisioningState] The provisioning state of the bastion host IP configuration resource.
  /// [publicIPAddress] Reference of the PublicIP resource. Null for private only bastion
  /// [subnet] Reference of the subnet resource.
  /// [type] Ip configuration type.
  const BastionHostIPConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    this.publicIPAddress,
    required this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory BastionHostIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BastionHostIPConfigurationResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: pulumi.Input.fromValue(SubResourceResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
