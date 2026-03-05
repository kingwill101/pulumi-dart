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
    this.basePath,
    this.description,
    this.instanceId,
    this.name,
    this.subDomain,
    this.userLogConfig,
    this.vpcDomain,
    this.vpcIntranetEnable,
  });

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
      basePath: (() { final guardedValue = map['basePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subDomain: (() { final guardedValue = map['subDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLogConfig: (() { final guardedValue = map['userLogConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupUserLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcDomain: (() { final guardedValue = map['vpcDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcIntranetEnable: (() { final guardedValue = map['vpcIntranetEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

