// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RdsDbProxyReadOnlyInstanceWeight {
  /// The Id of the instance and its read-only instances that can run database.
  final pulumi.Input<String> instanceId;

  /// Weight of instances that can run the database and their read-only instances. Read weights increase in increments of 100, and the maximum read weight is 10000.
  final pulumi.Input<String> weight;

  /// Creates a new [RdsDbProxyReadOnlyInstanceWeight].
  /// [instanceId] The Id of the instance and its read-only instances that can run database.
  /// [weight] Weight of instances that can run the database and their read-only instances. Read weights increase in increments of 100, and the maximum read weight is 10000.
  RdsDbProxyReadOnlyInstanceWeight({
    required this.instanceId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceId': instanceId, 'weight': weight};
  }

  factory RdsDbProxyReadOnlyInstanceWeight.fromMap(Map<String, dynamic> map) {
    return RdsDbProxyReadOnlyInstanceWeight(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as String),
    );
  }
}
