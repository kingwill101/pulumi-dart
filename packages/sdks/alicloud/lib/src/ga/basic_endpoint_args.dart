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
    required this.acceleratorId,
    this.basicEndpointName,
    required this.endpointAddress,
    required this.endpointGroupId,
    this.endpointSubAddress,
    this.endpointSubAddressType,
    required this.endpointType,
    this.endpointZoneId,
  });

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
      acceleratorId: (map['acceleratorId'] as String).input(),
      basicEndpointName: map['basicEndpointName'] == null ? null : (map['basicEndpointName']! as String).input(),
      endpointAddress: (map['endpointAddress'] as String).input(),
      endpointGroupId: (map['endpointGroupId'] as String).input(),
      endpointSubAddress: map['endpointSubAddress'] == null ? null : (map['endpointSubAddress']! as String).input(),
      endpointSubAddressType: map['endpointSubAddressType'] == null ? null : (map['endpointSubAddressType']! as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      endpointZoneId: map['endpointZoneId'] == null ? null : (map['endpointZoneId']! as String).input(),
    );
  }
}

