// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The creation time of the resource
  final pulumi.Input<String> createTime;
  /// ID of the instance.
  final pulumi.Input<String> id;
  /// The first ID of the resource
  final pulumi.Input<String> instanceId;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetInstancesInstance].
  /// [createTime] The creation time of the resource
  /// [id] ID of the instance.
  /// [instanceId] The first ID of the resource
  /// [paymentType] The payment type of the resource.
  /// [status] The status of the resource.
  GetInstancesInstance({
    required this.createTime,
    required this.id,
    required this.instanceId,
    required this.paymentType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'instanceId': instanceId,
      'paymentType': paymentType,
      'status': status,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

