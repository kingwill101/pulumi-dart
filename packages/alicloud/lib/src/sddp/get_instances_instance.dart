// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// Whether the required RAM authorization is configured.
  final bool authed;
  final String id;
  /// The ID of the instance.
  final String instanceId;
  /// The number of instances.
  final String instanceNum;
  /// Whether the authorized MaxCompute (ODPS) assets.
  final bool odpsSet;
  /// Whether the authorized oss assets.
  final bool ossBucketSet;
  /// The OSS size of the instance.
  final String ossSize;
  /// The payment type of the resource. Valid values: `Subscription`.
  final String paymentType;
  /// Whether the authorized rds assets.
  final bool rdsSet;
  /// The status of the resource.
  final String status;

  /// Creates a new [GetInstancesInstance].
  /// [authed] Whether the required RAM authorization is configured.
  /// [id] Required.
  /// [instanceId] The ID of the instance.
  /// [instanceNum] The number of instances.
  /// [odpsSet] Whether the authorized MaxCompute (ODPS) assets.
  /// [ossBucketSet] Whether the authorized oss assets.
  /// [ossSize] The OSS size of the instance.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`.
  /// [rdsSet] Whether the authorized rds assets.
  /// [status] The status of the resource.
  GetInstancesInstance({
    required this.authed,
    required this.id,
    required this.instanceId,
    required this.instanceNum,
    required this.odpsSet,
    required this.ossBucketSet,
    required this.ossSize,
    required this.paymentType,
    required this.rdsSet,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authed': authed,
      'id': id,
      'instanceId': instanceId,
      'instanceNum': instanceNum,
      'odpsSet': odpsSet,
      'ossBucketSet': ossBucketSet,
      'ossSize': ossSize,
      'paymentType': paymentType,
      'rdsSet': rdsSet,
      'status': status,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      authed: map['authed'] as bool,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceNum: map['instanceNum'] as String,
      odpsSet: map['odpsSet'] as bool,
      ossBucketSet: map['ossBucketSet'] as bool,
      ossSize: map['ossSize'] as String,
      paymentType: map['paymentType'] as String,
      rdsSet: map['rdsSet'] as bool,
      status: map['status'] as String,
    );
  }
}

