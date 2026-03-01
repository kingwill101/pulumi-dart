// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_basic_endpoint_basic_endpoint_args_doc}
/// The set of arguments for BasicEndpoint.
/// {@endtemplate}
/// {@macro pulumi_ga_basic_endpoint_basic_endpoint_args_doc}
class BasicEndpointArgs {
  /// The ID of the Basic GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The name of the Basic Endpoint.
  final pulumi.Input<String>? basicEndpointName;
  /// The address of the Basic Endpoint.
  final pulumi.Input<String> endpointAddress;
  /// The ID of the Basic Endpoint Group.
  final pulumi.Input<String> endpointGroupId;
  /// The sub address of the Basic Endpoint.
  final pulumi.Input<String>? endpointSubAddress;
  /// The sub address type of the Basic Endpoint. Valid values: `primary`, `secondary`.
  final pulumi.Input<String>? endpointSubAddressType;
  /// The type of the Basic Endpoint. Valid values: `ENI`, `SLB`, `ECS` and `NLB`.
  final pulumi.Input<String> endpointType;
  /// The zone id of the Basic Endpoint.
  final pulumi.Input<String>? endpointZoneId;

  /// Creates a new [BasicEndpointArgs].
  /// [acceleratorId] The ID of the Basic GA instance.
  /// [basicEndpointName] The name of the Basic Endpoint.
  /// [endpointAddress] The address of the Basic Endpoint.
  /// [endpointGroupId] The ID of the Basic Endpoint Group.
  /// [endpointSubAddress] The sub address of the Basic Endpoint.
  /// [endpointSubAddressType] The sub address type of the Basic Endpoint. Valid values: `primary`, `secondary`.
  /// [endpointType] The type of the Basic Endpoint. Valid values: `ENI`, `SLB`, `ECS` and `NLB`.
  /// [endpointZoneId] The zone id of the Basic Endpoint.
  BasicEndpointArgs({
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<String>? basicEndpointName,
    required pulumi.Output<String> endpointAddress,
    required pulumi.Output<String> endpointGroupId,
    pulumi.Output<String>? endpointSubAddress,
    pulumi.Output<String>? endpointSubAddressType,
    required pulumi.Output<String> endpointType,
    pulumi.Output<String>? endpointZoneId,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      basicEndpointName = pulumi.Input.asOptionalInput<String>(basicEndpointName),
      endpointAddress = pulumi.Input.asInput<String>(endpointAddress),
      endpointGroupId = pulumi.Input.asInput<String>(endpointGroupId),
      endpointSubAddress = pulumi.Input.asOptionalInput<String>(endpointSubAddress),
      endpointSubAddressType = pulumi.Input.asOptionalInput<String>(endpointSubAddressType),
      endpointType = pulumi.Input.asInput<String>(endpointType),
      endpointZoneId = pulumi.Input.asOptionalInput<String>(endpointZoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'basicEndpointName': ?basicEndpointName,
      'endpointAddress': endpointAddress,
      'endpointGroupId': endpointGroupId,
      'endpointSubAddress': ?endpointSubAddress,
      'endpointSubAddressType': ?endpointSubAddressType,
      'endpointType': endpointType,
      'endpointZoneId': ?endpointZoneId,
    };
  }

  factory BasicEndpointArgs.fromMap(Map<String, dynamic> map) {
    return BasicEndpointArgs(
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      basicEndpointName: map['basicEndpointName'] == null ? null : pulumi.Output.create<String>(map['basicEndpointName'] as String),
      endpointAddress: pulumi.Output.create<String>(map['endpointAddress'] as String),
      endpointGroupId: pulumi.Output.create<String>(map['endpointGroupId'] as String),
      endpointSubAddress: map['endpointSubAddress'] == null ? null : pulumi.Output.create<String>(map['endpointSubAddress'] as String),
      endpointSubAddressType: map['endpointSubAddressType'] == null ? null : pulumi.Output.create<String>(map['endpointSubAddressType'] as String),
      endpointType: pulumi.Output.create<String>(map['endpointType'] as String),
      endpointZoneId: map['endpointZoneId'] == null ? null : pulumi.Output.create<String>(map['endpointZoneId'] as String),
    );
  }
}

