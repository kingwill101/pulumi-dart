// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The Creation time of the resource.
  final String createTime;
  /// The end time of the resource..
  final String endTime;
  /// The ID of the Instance.
  final String id;
  /// The first ID of the resource.
  final String instanceId;
  /// The payment type of the resource. Valid values: `Subscription`.
  final String paymentType;
  /// Automatic renewal period unit. Valid values: `Month`,`Year`.
  final String renewalDurationUnit;
  /// Automatic renewal status. Valid values: `AutoRenewal`,`ManualRenewal`. Default Value: `ManualRenewal`.
  final String renewalStatus;
  /// The Status of Instance.
  final String status;

  /// Creates a new [GetInstancesInstance].
  /// [createTime] The Creation time of the resource.
  /// [endTime] The end time of the resource..
  /// [id] The ID of the Instance.
  /// [instanceId] The first ID of the resource.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`.
  /// [renewalDurationUnit] Automatic renewal period unit. Valid values: `Month`,`Year`.
  /// [renewalStatus] Automatic renewal status. Valid values: `AutoRenewal`,`ManualRenewal`. Default Value: `ManualRenewal`.
  /// [status] The Status of Instance.
  GetInstancesInstance({
    required this.createTime,
    required this.endTime,
    required this.id,
    required this.instanceId,
    required this.paymentType,
    required this.renewalDurationUnit,
    required this.renewalStatus,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'endTime': endTime,
      'id': id,
      'instanceId': instanceId,
      'paymentType': paymentType,
      'renewalDurationUnit': renewalDurationUnit,
      'renewalStatus': renewalStatus,
      'status': status,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      paymentType: map['paymentType'] as String,
      renewalDurationUnit: map['renewalDurationUnit'] as String,
      renewalStatus: map['renewalStatus'] as String,
      status: map['status'] as String,
    );
  }
}

