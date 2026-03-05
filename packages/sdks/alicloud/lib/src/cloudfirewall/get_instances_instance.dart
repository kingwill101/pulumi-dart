// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The Creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The end time of the resource..
  final pulumi.Input<String> endTime;
  /// The ID of the Instance.
  final pulumi.Input<String> id;
  /// The first ID of the resource.
  final pulumi.Input<String> instanceId;
  /// The payment type of the resource. Valid values: `Subscription`.
  final pulumi.Input<String> paymentType;
  /// Automatic renewal period unit. Valid values: `Month`,`Year`.
  final pulumi.Input<String> renewalDurationUnit;
  /// Automatic renewal status. Valid values: `AutoRenewal`,`ManualRenewal`. Default Value: `ManualRenewal`.
  final pulumi.Input<String> renewalStatus;
  /// The Status of Instance.
  final pulumi.Input<String> status;

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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      renewalDurationUnit: pulumi.Input.fromValue(map['renewalDurationUnit'] as String),
      renewalStatus: pulumi.Input.fromValue(map['renewalStatus'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

