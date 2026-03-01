// ignore_for_file: unused_element, unnecessary_cast


class GetBasicEndpointsEndpoint {
  /// The ID of the Global Accelerator Basic Accelerator instance.
  final String acceleratorId;
  /// The name of the Basic Endpoint.
  final String basicEndpointName;
  /// The address of the Basic Endpoint.
  final String endpointAddress;
  /// The ID of the Basic Endpoint Group.
  final String endpointGroupId;
  /// The ID of the Basic Endpoint.
  final String endpointId;
  /// The sub address of the Basic Endpoint.
  final String endpointSubAddress;
  /// The sub address type of the Basic Endpoint.
  final String endpointSubAddressType;
  /// The type of the Basic Endpoint. Valid values: `ENI`, `SLB`, `ECS` and `NLB`.
  final String endpointType;
  /// The zone id of the Basic Endpoint.
  final String endpointZoneId;
  /// The id of the Global Accelerator Basic Endpoint. It formats as `<endpoint_group_id>:<endpoint_id>`.
  final String id;
  /// The status of the Global Accelerator Basic Endpoint. Valid Value: `init`, `active`, `updating`, `binding`, `unbinding`, `deleting`, `bound`.
  final String status;

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
      acceleratorId: map['acceleratorId'] as String,
      basicEndpointName: map['basicEndpointName'] as String,
      endpointAddress: map['endpointAddress'] as String,
      endpointGroupId: map['endpointGroupId'] as String,
      endpointId: map['endpointId'] as String,
      endpointSubAddress: map['endpointSubAddress'] as String,
      endpointSubAddressType: map['endpointSubAddressType'] as String,
      endpointType: map['endpointType'] as String,
      endpointZoneId: map['endpointZoneId'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

