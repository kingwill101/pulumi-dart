// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The billing status of the simple application server. Valid values: `Normal`, `Expired` and `Overdue`.
  final pulumi.Input<String> businessStatus;
  /// The time when the simple application server was created.
  final pulumi.Input<String> createTime;
  /// The DDoS protection status. Valid values: `Normal`, `BlackHole`, and `Defense`.
  final pulumi.Input<String> ddosStatus;
  /// The time when the simple application server expires.
  final pulumi.Input<String> expiredTime;
  /// The ID of the Instance.
  final pulumi.Input<String> id;
  /// The ID of the simple application server Image.
  final pulumi.Input<String> imageId;
  /// The internal IP address of the simple application server.
  final pulumi.Input<String> innerIpAddress;
  /// The ID of the simple application server.
  final pulumi.Input<String> instanceId;
  /// The name of the resource.
  final pulumi.Input<String> instanceName;
  /// The billing method of the simple application server.
  final pulumi.Input<String> paymentType;
  /// The ID of the simple application server plan.
  final pulumi.Input<String> planId;
  /// The public IP address of the simple application server.
  final pulumi.Input<String> publicIpAddress;
  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetInstancesInstance].
  /// [businessStatus] The billing status of the simple application server. Valid values: `Normal`, `Expired` and `Overdue`.
  /// [createTime] The time when the simple application server was created.
  /// [ddosStatus] The DDoS protection status. Valid values: `Normal`, `BlackHole`, and `Defense`.
  /// [expiredTime] The time when the simple application server expires.
  /// [id] The ID of the Instance.
  /// [imageId] The ID of the simple application server Image.
  /// [innerIpAddress] The internal IP address of the simple application server.
  /// [instanceId] The ID of the simple application server.
  /// [instanceName] The name of the resource.
  /// [paymentType] The billing method of the simple application server.
  /// [planId] The ID of the simple application server plan.
  /// [publicIpAddress] The public IP address of the simple application server.
  /// [status] The status of the resource.
  GetInstancesInstance({
    required this.businessStatus,
    required this.createTime,
    required this.ddosStatus,
    required this.expiredTime,
    required this.id,
    required this.imageId,
    required this.innerIpAddress,
    required this.instanceId,
    required this.instanceName,
    required this.paymentType,
    required this.planId,
    required this.publicIpAddress,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessStatus': businessStatus,
      'createTime': createTime,
      'ddosStatus': ddosStatus,
      'expiredTime': expiredTime,
      'id': id,
      'imageId': imageId,
      'innerIpAddress': innerIpAddress,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'paymentType': paymentType,
      'planId': planId,
      'publicIpAddress': publicIpAddress,
      'status': status,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      businessStatus: (map['businessStatus'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      ddosStatus: (map['ddosStatus'] as String).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      id: (map['id'] as String).input(),
      imageId: (map['imageId'] as String).input(),
      innerIpAddress: (map['innerIpAddress'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      planId: (map['planId'] as String).input(),
      publicIpAddress: (map['publicIpAddress'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

