// ignore_for_file: unused_element, unnecessary_cast


class GetBasicAccelerateIpEndpointRelationsRelation {
  /// The ID of the Basic Accelerate IP.
  final String accelerateIpId;
  /// The ID of the Global Accelerator Basic Accelerator instance.
  final String acceleratorId;
  /// The name of the Basic Endpoint.
  final String basicEndpointName;
  /// The address of the Basic Endpoint.
  final String endpointAddress;
  /// The ID of the Basic Endpoint.
  final String endpointId;
  /// The sub address of the Basic Endpoint.
  final String endpointSubAddress;
  /// The sub address type of the Basic Endpoint.
  final String endpointSubAddressType;
  /// The type of the Basic Endpoint.
  final String endpointType;
  /// The zone id of the Basic Endpoint.
  final String endpointZoneId;
  /// The id of the Global Accelerator Basic Accelerate Ip Endpoint Relation. It formats as `<accelerator_id>:<accelerate_ip_id>:<endpoint_id>`.
  final String id;
  /// The address of the Basic Accelerate IP.
  final String ipAddress;
  /// The status of the Global Accelerator Basic Accelerate Ip Endpoint Relation. Valid Value: `active`.
  final String status;

  /// Creates a new [GetBasicAccelerateIpEndpointRelationsRelation].
  /// [accelerateIpId] The ID of the Basic Accelerate IP.
  /// [acceleratorId] The ID of the Global Accelerator Basic Accelerator instance.
  /// [basicEndpointName] The name of the Basic Endpoint.
  /// [endpointAddress] The address of the Basic Endpoint.
  /// [endpointId] The ID of the Basic Endpoint.
  /// [endpointSubAddress] The sub address of the Basic Endpoint.
  /// [endpointSubAddressType] The sub address type of the Basic Endpoint.
  /// [endpointType] The type of the Basic Endpoint.
  /// [endpointZoneId] The zone id of the Basic Endpoint.
  /// [id] The id of the Global Accelerator Basic Accelerate Ip Endpoint Relation. It formats as `<accelerator_id>:<accelerate_ip_id>:<endpoint_id>`.
  /// [ipAddress] The address of the Basic Accelerate IP.
  /// [status] The status of the Global Accelerator Basic Accelerate Ip Endpoint Relation. Valid Value: `active`.
  GetBasicAccelerateIpEndpointRelationsRelation({
    required this.accelerateIpId,
    required this.acceleratorId,
    required this.basicEndpointName,
    required this.endpointAddress,
    required this.endpointId,
    required this.endpointSubAddress,
    required this.endpointSubAddressType,
    required this.endpointType,
    required this.endpointZoneId,
    required this.id,
    required this.ipAddress,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpId': accelerateIpId,
      'acceleratorId': acceleratorId,
      'basicEndpointName': basicEndpointName,
      'endpointAddress': endpointAddress,
      'endpointId': endpointId,
      'endpointSubAddress': endpointSubAddress,
      'endpointSubAddressType': endpointSubAddressType,
      'endpointType': endpointType,
      'endpointZoneId': endpointZoneId,
      'id': id,
      'ipAddress': ipAddress,
      'status': status,
    };
  }

  factory GetBasicAccelerateIpEndpointRelationsRelation.fromMap(Map<String, dynamic> map) {
    return GetBasicAccelerateIpEndpointRelationsRelation(
      accelerateIpId: map['accelerateIpId'] as String,
      acceleratorId: map['acceleratorId'] as String,
      basicEndpointName: map['basicEndpointName'] as String,
      endpointAddress: map['endpointAddress'] as String,
      endpointId: map['endpointId'] as String,
      endpointSubAddress: map['endpointSubAddress'] as String,
      endpointSubAddressType: map['endpointSubAddressType'] as String,
      endpointType: map['endpointType'] as String,
      endpointZoneId: map['endpointZoneId'] as String,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      status: map['status'] as String,
    );
  }
}

