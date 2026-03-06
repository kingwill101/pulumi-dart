// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyStatement {
  /// (It has been deprecated since version 1.49.0, and use field `document` to replace.) List of operations for the `resource`. The format of each item in this list is `${service}:${action_name}`, such as `oss:ListBuckets` and `ecs:Describe*`. The `${service}` can be `ecs`, `oss`, `ots` and so on, the `${action_name}` refers to the name of an api interface which related to the `${service}`.
  final pulumi.Input<List<String>> actions;
  /// (It has been deprecated since version 1.49.0, and use field `document` to replace.) This parameter indicates whether or not the `action` is allowed. Valid values are `Allow` and `Deny`.
  final pulumi.Input<String> effect;
  /// (It has been deprecated since version 1.49.0, and use field `document` to replace.) List of specific objects which will be authorized. The format of each item in this list is `acs:${service}:${region}:${account_id}:${relative_id}`, such as `acs:ecs:*:*:instance/inst-002` and `acs:oss:*:1234567890000:mybucket`. The `${service}` can be `ecs`, `oss`, `ots` and so on, the `${region}` is the region info which can use `*` replace when it is not supplied, the `${account_id}` refers to someone`s Alicloud account id or you can use `*` to replace, the `${relative_id}` is the resource description section which related to the `${service}`.
  final pulumi.Input<List<String>> resources;

  /// Creates a new [PolicyStatement].
  /// [actions] (It has been deprecated since version 1.49.0, and use field `document` to replace.) List of operations for the `resource`. The format of each item in this list is `${service}:${action_name}`, such as `oss:ListBuckets` and `ecs:Describe*`. The `${service}` can be `ecs`, `oss`, `ots` and so on, the `${action_name}` refers to the name of an api interface which related to the `${service}`.
  /// [effect] (It has been deprecated since version 1.49.0, and use field `document` to replace.) This parameter indicates whether or not the `action` is allowed. Valid values are `Allow` and `Deny`.
  /// [resources] (It has been deprecated since version 1.49.0, and use field `document` to replace.) List of specific objects which will be authorized. The format of each item in this list is `acs:${service}:${region}:${account_id}:${relative_id}`, such as `acs:ecs:*:*:instance/inst-002` and `acs:oss:*:1234567890000:mybucket`. The `${service}` can be `ecs`, `oss`, `ots` and so on, the `${region}` is the region info which can use `*` replace when it is not supplied, the `${account_id}` refers to someone`s Alicloud account id or you can use `*` to replace, the `${relative_id}` is the resource description section which related to the `${service}`.
  const PolicyStatement({
    required this.actions,
    required this.effect,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'effect': effect,
      'resources': resources,
    };
  }

  factory PolicyStatement.fromMap(Map<String, dynamic> map) {
    return PolicyStatement(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      effect: pulumi.Input.fromValue(map['effect'] as String),
      resources: pulumi.Input.fromValue((map['resources'] as List).cast<String>()),
    );
  }
}

