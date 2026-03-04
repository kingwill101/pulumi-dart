// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBasicAccelerateIpsIp {
  /// The address of the Basic Accelerate IP.
  final pulumi.Input<String> accelerateIpAddress;

  /// The id of the Basic Accelerate IP.
  final pulumi.Input<String> accelerateIpId;

  /// The id of the Global Accelerator Basic Accelerator instance.
  final pulumi.Input<String> acceleratorId;

  /// The id of the Basic Accelerate IP.
  final pulumi.Input<String> id;

  /// The ID of the Basic Ip Set.
  final pulumi.Input<String> ipSetId;

  /// The status of the Global Accelerator Basic Accelerate IP instance. Valid Value: `active`, `binding`, `bound`, `unbinding`, `deleting`.
  final pulumi.Input<String> status;

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
      accelerateIpAddress: pulumi.Input.fromValue(
        map['accelerateIpAddress'] as String,
      ),
      accelerateIpId: pulumi.Input.fromValue(map['accelerateIpId'] as String),
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipSetId: pulumi.Input.fromValue(map['ipSetId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
