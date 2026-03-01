// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The timestamp that indicates when the order was created.
  final String createTime;
  /// The timestamp that indicates when the instance expires.
  final String expireTime;
  /// The ID of the Instance.
  final String id;
  /// THe instance Id.
  final String instanceId;
  /// THe instance name.
  final String instanceName;
  /// The instance type.
  final String instanceType;
  /// The billing method of the instance. **Note:** `payment_type` takes effect only if `enable_details` is set to `true`.
  final String paymentType;
  /// The virtual private cloud (VPC) endpoint of the instance.
  final String privateEndPoint;
  /// The public endpoint of the instance.
  final String publicEndpoint;
  /// Auto renewal period of an instance. **Note:** `renewal_duration` takes effect only if `enable_details` is set to `true`.
  final int renewalDuration;
  /// Automatic renewal period unit. **Note:** `renewal_duration_unit` takes effect only if `enable_details` is set to `true`.
  final String renewalDurationUnit;
  /// Whether to renew an instance automatically or not. **Note:** `renewal_status` takes effect only if `enable_details` is set to `true`.
  final String renewalStatus;
  /// The status of the resource. Valid values: `DEPLOYING`, `SERVING`, `EXPIRED`, `RELEASED`.
  final String status;
  /// Indicates whether the instance supports elastic IP addresses (EIPs).
  final bool supportEip;

  /// Creates a new [GetInstancesInstance].
  /// [createTime] The timestamp that indicates when the order was created.
  /// [expireTime] The timestamp that indicates when the instance expires.
  /// [id] The ID of the Instance.
  /// [instanceId] THe instance Id.
  /// [instanceName] THe instance name.
  /// [instanceType] The instance type.
  /// [paymentType] The billing method of the instance. **Note:** `payment_type` takes effect only if `enable_details` is set to `true`.
  /// [privateEndPoint] The virtual private cloud (VPC) endpoint of the instance.
  /// [publicEndpoint] The public endpoint of the instance.
  /// [renewalDuration] Auto renewal period of an instance. **Note:** `renewal_duration` takes effect only if `enable_details` is set to `true`.
  /// [renewalDurationUnit] Automatic renewal period unit. **Note:** `renewal_duration_unit` takes effect only if `enable_details` is set to `true`.
  /// [renewalStatus] Whether to renew an instance automatically or not. **Note:** `renewal_status` takes effect only if `enable_details` is set to `true`.
  /// [status] The status of the resource. Valid values: `DEPLOYING`, `SERVING`, `EXPIRED`, `RELEASED`.
  /// [supportEip] Indicates whether the instance supports elastic IP addresses (EIPs).
  GetInstancesInstance({
    required this.createTime,
    required this.expireTime,
    required this.id,
    required this.instanceId,
    required this.instanceName,
    required this.instanceType,
    required this.paymentType,
    required this.privateEndPoint,
    required this.publicEndpoint,
    required this.renewalDuration,
    required this.renewalDurationUnit,
    required this.renewalStatus,
    required this.status,
    required this.supportEip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'expireTime': expireTime,
      'id': id,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'instanceType': instanceType,
      'paymentType': paymentType,
      'privateEndPoint': privateEndPoint,
      'publicEndpoint': publicEndpoint,
      'renewalDuration': renewalDuration,
      'renewalDurationUnit': renewalDurationUnit,
      'renewalStatus': renewalStatus,
      'status': status,
      'supportEip': supportEip,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      createTime: map['createTime'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      instanceType: map['instanceType'] as String,
      paymentType: map['paymentType'] as String,
      privateEndPoint: map['privateEndPoint'] as String,
      publicEndpoint: map['publicEndpoint'] as String,
      renewalDuration: map['renewalDuration'] as int,
      renewalDurationUnit: map['renewalDurationUnit'] as String,
      renewalStatus: map['renewalStatus'] as String,
      status: map['status'] as String,
      supportEip: map['supportEip'] as bool,
    );
  }
}

