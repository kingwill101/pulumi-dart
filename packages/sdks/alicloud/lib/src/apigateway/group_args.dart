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
    pulumi.Output<String>? basePath,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<GroupUserLogConfig>? userLogConfig,
    pulumi.Output<bool>? vpcIntranetEnable,
  }) :
      basePath = pulumi.Input.asOptionalInput<String>(basePath),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      userLogConfig = pulumi.Input.asOptionalInput<GroupUserLogConfig>(userLogConfig),
      vpcIntranetEnable = pulumi.Input.asOptionalInput<bool>(vpcIntranetEnable);

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
      basePath: map['basePath'] == null ? null : pulumi.Output.create<String>(map['basePath'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      userLogConfig: map['userLogConfig'] == null ? null : pulumi.Output.create<GroupUserLogConfig>(GroupUserLogConfig.fromMap((map['userLogConfig'] as Map).cast<String, dynamic>())),
      vpcIntranetEnable: map['vpcIntranetEnable'] == null ? null : pulumi.Output.create<bool>(map['vpcIntranetEnable'] as bool),
    );
  }
}

