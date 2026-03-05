// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// Whether the required RAM authorization is configured.
  final pulumi.Input<bool> authed;
  final pulumi.Input<String> id;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The number of instances.
  final pulumi.Input<String> instanceNum;
  /// Whether the authorized MaxCompute (ODPS) assets.
  final pulumi.Input<bool> odpsSet;
  /// Whether the authorized oss assets.
  final pulumi.Input<bool> ossBucketSet;
  /// The OSS size of the instance.
  final pulumi.Input<String> ossSize;
  /// The payment type of the resource. Valid values: `Subscription`.
  final pulumi.Input<String> paymentType;
  /// Whether the authorized rds assets.
  final pulumi.Input<bool> rdsSet;
  /// The status of the resource.
  final pulumi.Input<String> status;

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
      authed: pulumi.Input.fromValue(map['authed'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceNum: pulumi.Input.fromValue(map['instanceNum'] as String),
      odpsSet: pulumi.Input.fromValue(map['odpsSet'] as bool),
      ossBucketSet: pulumi.Input.fromValue(map['ossBucketSet'] as bool),
      ossSize: pulumi.Input.fromValue(map['ossSize'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      rdsSet: pulumi.Input.fromValue(map['rdsSet'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

