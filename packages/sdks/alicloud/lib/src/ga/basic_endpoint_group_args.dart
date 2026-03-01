// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_basic_endpoint_group_basic_endpoint_group_args_doc}
/// The set of arguments for BasicEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_ga_basic_endpoint_group_basic_endpoint_group_args_doc}
class BasicEndpointGroupArgs {
  /// The ID of the basic GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The name of the endpoint group. The `basic_endpoint_group_name` must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? basicEndpointGroupName;
  /// The description of the endpoint group. The `description` cannot exceed 256 characters in length and cannot contain http:// or https://.
  final pulumi.Input<String>? description;
  /// The address of the endpoint.
  final pulumi.Input<String>? endpointAddress;
  /// The ID of the region where you want to create the endpoint group.
  final pulumi.Input<String> endpointGroupRegion;
  /// The sub address of the endpoint.
  final pulumi.Input<String>? endpointSubAddress;
  /// The type of the endpoint. Valid values: `ENI`, `SLB` and `ECS`.
  final pulumi.Input<String>? endpointType;

  /// Creates a new [BasicEndpointGroupArgs].
  /// [acceleratorId] The ID of the basic GA instance.
  /// [basicEndpointGroupName] The name of the endpoint group. The `basic_endpoint_group_name` must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  /// [description] The description of the endpoint group. The `description` cannot exceed 256 characters in length and cannot contain http:// or https://.
  /// [endpointAddress] The address of the endpoint.
  /// [endpointGroupRegion] The ID of the region where you want to create the endpoint group.
  /// [endpointSubAddress] The sub address of the endpoint.
  /// [endpointType] The type of the endpoint. Valid values: `ENI`, `SLB` and `ECS`.
  BasicEndpointGroupArgs({
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<String>? basicEndpointGroupName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endpointAddress,
    required pulumi.Output<String> endpointGroupRegion,
    pulumi.Output<String>? endpointSubAddress,
    pulumi.Output<String>? endpointType,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      basicEndpointGroupName = pulumi.Input.asOptionalInput<String>(basicEndpointGroupName),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpointAddress = pulumi.Input.asOptionalInput<String>(endpointAddress),
      endpointGroupRegion = pulumi.Input.asInput<String>(endpointGroupRegion),
      endpointSubAddress = pulumi.Input.asOptionalInput<String>(endpointSubAddress),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'basicEndpointGroupName': ?basicEndpointGroupName,
      'description': ?description,
      'endpointAddress': ?endpointAddress,
      'endpointGroupRegion': endpointGroupRegion,
      'endpointSubAddress': ?endpointSubAddress,
      'endpointType': ?endpointType,
    };
  }

  factory BasicEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return BasicEndpointGroupArgs(
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      basicEndpointGroupName: map['basicEndpointGroupName'] == null ? null : pulumi.Output.create<String>(map['basicEndpointGroupName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpointAddress: map['endpointAddress'] == null ? null : pulumi.Output.create<String>(map['endpointAddress'] as String),
      endpointGroupRegion: pulumi.Output.create<String>(map['endpointGroupRegion'] as String),
      endpointSubAddress: map['endpointSubAddress'] == null ? null : pulumi.Output.create<String>(map['endpointSubAddress'] as String),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
    );
  }
}

