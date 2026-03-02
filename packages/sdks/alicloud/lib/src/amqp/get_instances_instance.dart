// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The timestamp that indicates when the order was created.
  final pulumi.Input<String> createTime;
  /// The timestamp that indicates when the instance expires.
  final pulumi.Input<String> expireTime;
  /// The ID of the Instance.
  final pulumi.Input<String> id;
  /// THe instance Id.
  final pulumi.Input<String> instanceId;
  /// THe instance name.
  final pulumi.Input<String> instanceName;
  /// The instance type.
  final pulumi.Input<String> instanceType;
  /// The billing method of the instance. **Note:** `payment_type` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> paymentType;
  /// The virtual private cloud (VPC) endpoint of the instance.
  final pulumi.Input<String> privateEndPoint;
  /// The public endpoint of the instance.
  final pulumi.Input<String> publicEndpoint;
  /// Auto renewal period of an instance. **Note:** `renewal_duration` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<int> renewalDuration;
  /// Automatic renewal period unit. **Note:** `renewal_duration_unit` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> renewalDurationUnit;
  /// Whether to renew an instance automatically or not. **Note:** `renewal_status` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> renewalStatus;
  /// The status of the resource. Valid values: `DEPLOYING`, `SERVING`, `EXPIRED`, `RELEASED`.
  final pulumi.Input<String> status;
  /// Indicates whether the instance supports elastic IP addresses (EIPs).
  final pulumi.Input<bool> supportEip;

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
      createTime: (map['createTime'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      privateEndPoint: (map['privateEndPoint'] as String).input(),
      publicEndpoint: (map['publicEndpoint'] as String).input(),
      renewalDuration: (map['renewalDuration'] as int).input(),
      renewalDurationUnit: (map['renewalDurationUnit'] as String).input(),
      renewalStatus: (map['renewalStatus'] as String).input(),
      status: (map['status'] as String).input(),
      supportEip: (map['supportEip'] as bool).input(),
    );
  }
}

