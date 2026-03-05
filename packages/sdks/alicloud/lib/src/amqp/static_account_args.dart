// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_static_account_static_account_args_doc}
/// The set of arguments for StaticAccount.
/// {@endtemplate}
/// {@macro pulumi_amqp_static_account_static_account_args_doc}
class StaticAccountArgs {
  /// Access key.
  final pulumi.Input<String> accessKey;
  /// Amqp instance ID.
  final pulumi.Input<String> instanceId;
  /// Secret key.
  final pulumi.Input<String> secretKey;

  /// Creates a new [StaticAccountArgs].
  /// [accessKey] Access key.
  /// [instanceId] Amqp instance ID.
  /// [secretKey] Secret key.
  StaticAccountArgs({
    required this.accessKey,
    required this.instanceId,
    required this.secretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'instanceId': instanceId,
      'secretKey': secretKey,
    };
  }

  factory StaticAccountArgs.fromMap(Map<String, dynamic> map) {
    return StaticAccountArgs(
      accessKey: pulumi.Input.fromValue(map['accessKey'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      secretKey: pulumi.Input.fromValue(map['secretKey'] as String),
    );
  }
}

