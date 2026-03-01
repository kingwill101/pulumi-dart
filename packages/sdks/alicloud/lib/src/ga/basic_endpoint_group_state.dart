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
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? basicEndpointGroupName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endpointAddress,
    pulumi.Output<String>? endpointGroupRegion,
    pulumi.Output<String>? endpointSubAddress,
    pulumi.Output<String>? endpointType,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      basicEndpointGroupName = pulumi.Input.asOptionalInput<String>(basicEndpointGroupName),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpointAddress = pulumi.Input.asOptionalInput<String>(endpointAddress),
      endpointGroupRegion = pulumi.Input.asOptionalInput<String>(endpointGroupRegion),
      endpointSubAddress = pulumi.Input.asOptionalInput<String>(endpointSubAddress),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      basicEndpointGroupName: map['basicEndpointGroupName'] == null ? null : pulumi.Output.create<String>(map['basicEndpointGroupName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpointAddress: map['endpointAddress'] == null ? null : pulumi.Output.create<String>(map['endpointAddress'] as String),
      endpointGroupRegion: map['endpointGroupRegion'] == null ? null : pulumi.Output.create<String>(map['endpointGroupRegion'] as String),
      endpointSubAddress: map['endpointSubAddress'] == null ? null : pulumi.Output.create<String>(map['endpointSubAddress'] as String),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

