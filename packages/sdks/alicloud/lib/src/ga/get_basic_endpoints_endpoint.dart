// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBasicEndpointsEndpoint {
  /// The ID of the Global Accelerator Basic Accelerator instance.
  final pulumi.Input<String> acceleratorId;
  /// The name of the Basic Endpoint.
  final pulumi.Input<String> basicEndpointName;
  /// The address of the Basic Endpoint.
  final pulumi.Input<String> endpointAddress;
  /// The ID of the Basic Endpoint Group.
  final pulumi.Input<String> endpointGroupId;
  /// The ID of the Basic Endpoint.
  final pulumi.Input<String> endpointId;
  /// The sub address of the Basic Endpoint.
  final pulumi.Input<String> endpointSubAddress;
  /// The sub address type of the Basic Endpoint.
  final pulumi.Input<String> endpointSubAddressType;
  /// The type of the Basic Endpoint. Valid values: `ENI`, `SLB`, `ECS` and `NLB`.
  final pulumi.Input<String> endpointType;
  /// The zone id of the Basic Endpoint.
  final pulumi.Input<String> endpointZoneId;
  /// The id of the Global Accelerator Basic Endpoint. It formats as `<endpoint_group_id>:<endpoint_id>`.
  final pulumi.Input<String> id;
  /// The status of the Global Accelerator Basic Endpoint. Valid Value: `init`, `active`, `updating`, `binding`, `unbinding`, `deleting`, `bound`.
  final pulumi.Input<String> status;

  /// Creates a new [GetBasicEndpointsEndpoint].
  /// [acceleratorId] The ID of the Global Accelerator Basic Accelerator instance.
  /// [basicEndpointName] The name of the Basic Endpoint.
  /// [endpointAddress] The address of the Basic Endpoint.
  /// [endpointGroupId] The ID of the Basic Endpoint Group.
  /// [endpointId] The ID of the Basic Endpoint.
  /// [endpointSubAddress] The sub address of the Basic Endpoint.
  /// [endpointSubAddressType] The sub address type of the Basic Endpoint.
  /// [endpointType] The type of the Basic Endpoint. Valid values: `ENI`, `SLB`, `ECS` and `NLB`.
  /// [endpointZoneId] The zone id of the Basic Endpoint.
  /// [id] The id of the Global Accelerator Basic Endpoint. It formats as `<endpoint_group_id>:<endpoint_id>`.
  /// [status] The status of the Global Accelerator Basic Endpoint. Valid Value: `init`, `active`, `updating`, `binding`, `unbinding`, `deleting`, `bound`.
  GetBasicEndpointsEndpoint({
    required this.acceleratorId,
    required this.basicEndpointName,
    required this.endpointAddress,
    required this.endpointGroupId,
    required this.endpointId,
    required this.endpointSubAddress,
    required this.endpointSubAddressType,
    required this.endpointType,
    required this.endpointZoneId,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'basicEndpointName': basicEndpointName,
      'endpointAddress': endpointAddress,
      'endpointGroupId': endpointGroupId,
      'endpointId': endpointId,
      'endpointSubAddress': endpointSubAddress,
      'endpointSubAddressType': endpointSubAddressType,
      'endpointType': endpointType,
      'endpointZoneId': endpointZoneId,
      'id': id,
      'status': status,
    };
  }

  factory GetBasicEndpointsEndpoint.fromMap(Map<String, dynamic> map) {
    return GetBasicEndpointsEndpoint(
      acceleratorId: (map['acceleratorId'] as String).input(),
      basicEndpointName: (map['basicEndpointName'] as String).input(),
      endpointAddress: (map['endpointAddress'] as String).input(),
      endpointGroupId: (map['endpointGroupId'] as String).input(),
      endpointId: (map['endpointId'] as String).input(),
      endpointSubAddress: (map['endpointSubAddress'] as String).input(),
      endpointSubAddressType: (map['endpointSubAddressType'] as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      endpointZoneId: (map['endpointZoneId'] as String).input(),
      id: (map['id'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

