// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_user_log_config.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// The base path of the api gateway group. Defaults to `/`.
  final pulumi.Input<String>? basePath;
  /// The description of the api gateway group. Defaults to null.
  final pulumi.Input<String>? description;
  /// The id of the api gateway.
  final pulumi.Input<String>? instanceId;
  /// The name of the api gateway group. Defaults to null.
  final pulumi.Input<String>? name;
  /// (Available in 1.69.0+)	Second-level domain name automatically assigned to the API group.
  final pulumi.Input<String>? subDomain;
  /// user_log_config defines the config of user log of the group. See `user_log_config` below.
  final pulumi.Input<GroupUserLogConfig>? userLogConfig;
  /// (Available in 1.69.0+)	Second-level VPC domain name automatically assigned to the API group.
  final pulumi.Input<String>? vpcDomain;
  /// Whether to enable `vpc_domain`. Defaults to `false`.
  final pulumi.Input<bool>? vpcIntranetEnable;

  /// Creates a new [GroupState].
  /// [basePath] The base path of the api gateway group. Defaults to `/`.
  /// [description] The description of the api gateway group. Defaults to null.
  /// [instanceId] The id of the api gateway.
  /// [name] The name of the api gateway group. Defaults to null.
  /// [subDomain] (Available in 1.69.0+)	Second-level domain name automatically assigned to the API group.
  /// [userLogConfig] user_log_config defines the config of user log of the group. See `user_log_config` below.
  /// [vpcDomain] (Available in 1.69.0+)	Second-level VPC domain name automatically assigned to the API group.
  /// [vpcIntranetEnable] Whether to enable `vpc_domain`. Defaults to `false`.
  GroupState({
    pulumi.Output<String>? basePath,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? subDomain,
    pulumi.Output<GroupUserLogConfig>? userLogConfig,
    pulumi.Output<String>? vpcDomain,
    pulumi.Output<bool>? vpcIntranetEnable,
  }) :
      basePath = pulumi.Input.asOptionalInput<String>(basePath),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      subDomain = pulumi.Input.asOptionalInput<String>(subDomain),
      userLogConfig = pulumi.Input.asOptionalInput<GroupUserLogConfig>(userLogConfig),
      vpcDomain = pulumi.Input.asOptionalInput<String>(vpcDomain),
      vpcIntranetEnable = pulumi.Input.asOptionalInput<bool>(vpcIntranetEnable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePath': ?basePath,
      'description': ?description,
      'instanceId': ?instanceId,
      'name': ?name,
      'subDomain': ?subDomain,
      'userLogConfig': ?pulumi.Input.mapOptionalInputValue<GroupUserLogConfig, Map<String, dynamic>>(userLogConfig, (value) => value.toMap()),
      'vpcDomain': ?vpcDomain,
      'vpcIntranetEnable': ?vpcIntranetEnable,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      basePath: map['basePath'] == null ? null : pulumi.Output.create<String>(map['basePath'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      subDomain: map['subDomain'] == null ? null : pulumi.Output.create<String>(map['subDomain'] as String),
      userLogConfig: map['userLogConfig'] == null ? null : pulumi.Output.create<GroupUserLogConfig>(GroupUserLogConfig.fromMap((map['userLogConfig'] as Map).cast<String, dynamic>())),
      vpcDomain: map['vpcDomain'] == null ? null : pulumi.Output.create<String>(map['vpcDomain'] as String),
      vpcIntranetEnable: map['vpcIntranetEnable'] == null ? null : pulumi.Output.create<bool>(map['vpcIntranetEnable'] as bool),
    );
  }
}

