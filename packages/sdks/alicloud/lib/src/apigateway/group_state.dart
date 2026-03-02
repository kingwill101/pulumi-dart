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
      basePath: map['basePath'] == null ? null : (map['basePath'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      subDomain: map['subDomain'] == null ? null : (map['subDomain'] as String).input(),
      userLogConfig: map['userLogConfig'] == null ? null : (GroupUserLogConfig.fromMap((map['userLogConfig'] as Map).cast<String, dynamic>())).input(),
      vpcDomain: map['vpcDomain'] == null ? null : (map['vpcDomain'] as String).input(),
      vpcIntranetEnable: map['vpcIntranetEnable'] == null ? null : (map['vpcIntranetEnable'] as bool).input(),
    );
  }
}

