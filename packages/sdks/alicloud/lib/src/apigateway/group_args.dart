// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_user_log_config.dart';

/// {@template pulumi_apigateway_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_apigateway_group_group_args_doc}
class GroupArgs {
  /// The base path of the api gateway group. Defaults to `/`.
  final pulumi.Input<String>? basePath;
  /// The description of the api gateway group. Defaults to null.
  final pulumi.Input<String>? description;
  /// The id of the api gateway.
  final pulumi.Input<String>? instanceId;
  /// The name of the api gateway group. Defaults to null.
  final pulumi.Input<String>? name;
  /// user_log_config defines the config of user log of the group. See `user_log_config` below.
  final pulumi.Input<GroupUserLogConfig>? userLogConfig;
  /// Whether to enable `vpc_domain`. Defaults to `false`.
  final pulumi.Input<bool>? vpcIntranetEnable;

  /// Creates a new [GroupArgs].
  /// [basePath] The base path of the api gateway group. Defaults to `/`.
  /// [description] The description of the api gateway group. Defaults to null.
  /// [instanceId] The id of the api gateway.
  /// [name] The name of the api gateway group. Defaults to null.
  /// [userLogConfig] user_log_config defines the config of user log of the group. See `user_log_config` below.
  /// [vpcIntranetEnable] Whether to enable `vpc_domain`. Defaults to `false`.
  GroupArgs({
    this.basePath,
    this.description,
    this.instanceId,
    this.name,
    this.userLogConfig,
    this.vpcIntranetEnable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePath': ?basePath,
      'description': ?description,
      'instanceId': ?instanceId,
      'name': ?name,
      'userLogConfig': ?pulumi.Input.mapOptionalInputValue<GroupUserLogConfig, Map<String, dynamic>>(userLogConfig, (value) => value.toMap()),
      'vpcIntranetEnable': ?vpcIntranetEnable,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      basePath: (() { final guardedValue = map['basePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLogConfig: (() { final guardedValue = map['userLogConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupUserLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcIntranetEnable: (() { final guardedValue = map['vpcIntranetEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

