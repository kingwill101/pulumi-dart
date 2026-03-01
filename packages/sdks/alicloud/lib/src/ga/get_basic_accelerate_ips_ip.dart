// ignore_for_file: unused_element, unnecessary_cast


class GetBasicAccelerateIpsIp {
  /// The address of the Basic Accelerate IP.
  final String accelerateIpAddress;
  /// The id of the Basic Accelerate IP.
  final String accelerateIpId;
  /// The id of the Global Accelerator Basic Accelerator instance.
  final String acceleratorId;
  /// The id of the Basic Accelerate IP.
  final String id;
  /// The ID of the Basic Ip Set.
  final String ipSetId;
  /// The status of the Global Accelerator Basic Accelerate IP instance. Valid Value: `active`, `binding`, `bound`, `unbinding`, `deleting`.
  final String status;

  /// Creates a new [GetBasicAccelerateIpsIp].
  /// [accelerateIpAddress] The address of the Basic Accelerate IP.
  /// [accelerateIpId] The id of the Basic Accelerate IP.
  /// [acceleratorId] The id of the Global Accelerator Basic Accelerator instance.
  /// [id] The id of the Basic Accelerate IP.
  /// [ipSetId] The ID of the Basic Ip Set.
  /// [status] The status of the Global Accelerator Basic Accelerate IP instance. Valid Value: `active`, `binding`, `bound`, `unbinding`, `deleting`.
  GetBasicAccelerateIpsIp({
    required this.accelerateIpAddress,
    required this.accelerateIpId,
    required this.acceleratorId,
    required this.id,
    required this.ipSetId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateIpAddress': accelerateIpAddress,
      'accelerateIpId': accelerateIpId,
      'acceleratorId': acceleratorId,
      'id': id,
      'ipSetId': ipSetId,
      'status': status,
    };
  }

  factory GetBasicAccelerateIpsIp.fromMap(Map<String, dynamic> map) {
    return GetBasicAccelerateIpsIp(
      accelerateIpAddress: map['accelerateIpAddress'] as String,
      accelerateIpId: map['accelerateIpId'] as String,
      acceleratorId: map['acceleratorId'] as String,
      id: map['id'] as String,
      ipSetId: map['ipSetId'] as String,
      status: map['status'] as String,
    );
  }
}

