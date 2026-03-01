// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_das_switch_das_pro_switch_das_pro_args_doc}
/// The set of arguments for SwitchDasPro.
/// {@endtemplate}
/// {@macro pulumi_das_switch_das_pro_switch_das_pro_args_doc}
class SwitchDasProArgs {
  /// The ID of the database instance.
  final pulumi.Input<String> instanceId;
  /// The storage duration of SQL Explorer data. Valid values: `30`, `180`, `365`, `1095`, `1825`. Unit: days. Default value: `30`.
  final pulumi.Input<int>? sqlRetention;
  /// The ID of the Alibaba Cloud account that is used to create the database instance.
  final pulumi.Input<String>? userId;

  /// Creates a new [SwitchDasProArgs].
  /// [instanceId] The ID of the database instance.
  /// [sqlRetention] The storage duration of SQL Explorer data. Valid values: `30`, `180`, `365`, `1095`, `1825`. Unit: days. Default value: `30`.
  /// [userId] The ID of the Alibaba Cloud account that is used to create the database instance.
  SwitchDasProArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<int>? sqlRetention,
    pulumi.Output<String>? userId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      sqlRetention = pulumi.Input.asOptionalInput<int>(sqlRetention),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'sqlRetention': ?sqlRetention,
      'userId': ?userId,
    };
  }

  factory SwitchDasProArgs.fromMap(Map<String, dynamic> map) {
    return SwitchDasProArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      sqlRetention: map['sqlRetention'] == null ? null : pulumi.Output.create<int>(map['sqlRetention'] as int),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

