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
      authed: (map['authed'] as bool).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceNum: (map['instanceNum'] as String).input(),
      odpsSet: (map['odpsSet'] as bool).input(),
      ossBucketSet: (map['ossBucketSet'] as bool).input(),
      ossSize: (map['ossSize'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      rdsSet: (map['rdsSet'] as bool).input(),
      status: (map['status'] as String).input(),
    );
  }
}

