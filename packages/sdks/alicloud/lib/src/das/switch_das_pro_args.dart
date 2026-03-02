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
    required this.instanceId,
    this.sqlRetention,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'sqlRetention': ?sqlRetention,
      'userId': ?userId,
    };
  }

  factory SwitchDasProArgs.fromMap(Map<String, dynamic> map) {
    return SwitchDasProArgs(
      instanceId: (map['instanceId'] as String).input(),
      sqlRetention: map['sqlRetention'] == null ? null : (map['sqlRetention'] as int).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

