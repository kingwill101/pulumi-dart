// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SwitchDasPro resources.
class SwitchDasProState {
  /// The ID of the database instance.
  final pulumi.Input<String>? instanceId;
  /// The storage duration of SQL Explorer data. Valid values: `30`, `180`, `365`, `1095`, `1825`. Unit: days. Default value: `30`.
  final pulumi.Input<int>? sqlRetention;
  /// Whether the database instance has DAS professional.
  final pulumi.Input<bool>? status;
  /// The ID of the Alibaba Cloud account that is used to create the database instance.
  final pulumi.Input<String>? userId;

  /// Creates a new [SwitchDasProState].
  /// [instanceId] The ID of the database instance.
  /// [sqlRetention] The storage duration of SQL Explorer data. Valid values: `30`, `180`, `365`, `1095`, `1825`. Unit: days. Default value: `30`.
  /// [status] Whether the database instance has DAS professional.
  /// [userId] The ID of the Alibaba Cloud account that is used to create the database instance.
  SwitchDasProState({
    pulumi.Output<String>? instanceId,
    pulumi.Output<int>? sqlRetention,
    pulumi.Output<bool>? status,
    pulumi.Output<String>? userId,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      sqlRetention = pulumi.Input.asOptionalInput<int>(sqlRetention),
      status = pulumi.Input.asOptionalInput<bool>(status),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'sqlRetention': ?sqlRetention,
      'status': ?status,
      'userId': ?userId,
    };
  }

  factory SwitchDasProState.fromMap(Map<String, dynamic> map) {
    return SwitchDasProState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      sqlRetention: map['sqlRetention'] == null ? null : pulumi.Output.create<int>(map['sqlRetention'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<bool>(map['status'] as bool),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

