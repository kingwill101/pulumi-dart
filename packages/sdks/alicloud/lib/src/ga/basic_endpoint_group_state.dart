// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BasicEndpointGroup resources.
class BasicEndpointGroupState {
  /// The ID of the basic GA instance.
  final pulumi.Input<String>? acceleratorId;
  /// The name of the endpoint group. The `basic_endpoint_group_name` must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? basicEndpointGroupName;
  /// The description of the endpoint group. The `description` cannot exceed 256 characters in length and cannot contain http:// or https://.
  final pulumi.Input<String>? description;
  /// The address of the endpoint.
  final pulumi.Input<String>? endpointAddress;
  /// The ID of the region where you want to create the endpoint group.
  final pulumi.Input<String>? endpointGroupRegion;
  /// The sub address of the endpoint.
  final pulumi.Input<String>? endpointSubAddress;
  /// The type of the endpoint. Valid values: `ENI`, `SLB` and `ECS`.
  final pulumi.Input<String>? endpointType;
  /// The status of the Basic Endpoint Group.
  final pulumi.Input<String>? status;

  /// Creates a new [BasicEndpointGroupState].
  /// [acceleratorId] The ID of the basic GA instance.
  /// [basicEndpointGroupName] The name of the endpoint group. The `basic_endpoint_group_name` must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  /// [description] The description of the endpoint group. The `description` cannot exceed 256 characters in length and cannot contain http:// or https://.
  /// [endpointAddress] The address of the endpoint.
  /// [endpointGroupRegion] The ID of the region where you want to create the endpoint group.
  /// [endpointSubAddress] The sub address of the endpoint.
  /// [endpointType] The type of the endpoint. Valid values: `ENI`, `SLB` and `ECS`.
  /// [status] The status of the Basic Endpoint Group.
  BasicEndpointGroupState({
    this.acceleratorId,
    this.basicEndpointGroupName,
    this.description,
    this.endpointAddress,
    this.endpointGroupRegion,
    this.endpointSubAddress,
    this.endpointType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'basicEndpointGroupName': ?basicEndpointGroupName,
      'description': ?description,
      'endpointAddress': ?endpointAddress,
      'endpointGroupRegion': ?endpointGroupRegion,
      'endpointSubAddress': ?endpointSubAddress,
      'endpointType': ?endpointType,
      'status': ?status,
    };
  }

  factory BasicEndpointGroupState.fromMap(Map<String, dynamic> map) {
    return BasicEndpointGroupState(
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId'] as String).input(),
      basicEndpointGroupName: map['basicEndpointGroupName'] == null ? null : (map['basicEndpointGroupName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endpointAddress: map['endpointAddress'] == null ? null : (map['endpointAddress'] as String).input(),
      endpointGroupRegion: map['endpointGroupRegion'] == null ? null : (map['endpointGroupRegion'] as String).input(),
      endpointSubAddress: map['endpointSubAddress'] == null ? null : (map['endpointSubAddress'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

