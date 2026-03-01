// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The billing status of the simple application server. Valid values: `Normal`, `Expired` and `Overdue`.
  final String businessStatus;
  /// The time when the simple application server was created.
  final String createTime;
  /// The DDoS protection status. Valid values: `Normal`, `BlackHole`, and `Defense`.
  final String ddosStatus;
  /// The time when the simple application server expires.
  final String expiredTime;
  /// The ID of the Instance.
  final String id;
  /// The ID of the simple application server Image.
  final String imageId;
  /// The internal IP address of the simple application server.
  final String innerIpAddress;
  /// The ID of the simple application server.
  final String instanceId;
  /// The name of the resource.
  final String instanceName;
  /// The billing method of the simple application server.
  final String paymentType;
  /// The ID of the simple application server plan.
  final String planId;
  /// The public IP address of the simple application server.
  final String publicIpAddress;
  /// The status of the resource.
  final String status;

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
      businessStatus: map['businessStatus'] as String,
      createTime: map['createTime'] as String,
      ddosStatus: map['ddosStatus'] as String,
      expiredTime: map['expiredTime'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      innerIpAddress: map['innerIpAddress'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      paymentType: map['paymentType'] as String,
      planId: map['planId'] as String,
      publicIpAddress: map['publicIpAddress'] as String,
      status: map['status'] as String,
    );
  }
}

