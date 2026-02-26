// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_recaptchaenterprise_v1_firewall_action.dart';

/// The set of arguments for Firewallpolicy.
class FirewallpolicyArgs {
  /// Optional. The actions that the caller should take regarding user access. There should be at most one terminal action. A terminal action is any action that forces a response, such as `AllowAction`, `BlockAction` or `SubstituteAction`. Zero or more non-terminal actions such as `SetHeader` might be specified. A single policy can contain up to 16 actions.
  final Input<List<GoogleCloudRecaptchaenterpriseV1FirewallAction>>? actions;

  /// Optional. A CEL (Common Expression Language) conditional expression that specifies if this policy applies to an incoming user request. If this condition evaluates to true and the requested path matched the path pattern, the associated actions should be executed by the caller. The condition string is checked for CEL syntax correctness on creation. For more information, see the [CEL spec](https://github.com/google/cel-spec) and its [language definition](https://github.com/google/cel-spec/blob/master/doc/langdef.md). A condition has a max length of 500 characters.
  final Input<String>? condition;

  /// Optional. A description of what this policy aims to achieve, for convenience purposes. The description can at most include 256 UTF-8 characters.
  final Input<String>? description;

  /// Identifier. The resource name for the FirewallPolicy in the format `projects/{project}/firewallpolicies/{firewallpolicy}`.
  final Input<String>? name;

  /// Optional. The path for which this policy applies, specified as a glob pattern. For more information on glob, see the [manual page](https://man7.org/linux/man-pages/man7/glob.7.html). A path has a max length of 200 characters.
  final Input<String>? path;
  final Input<String>? project;

  FirewallpolicyArgs({
    this.actions,
    this.condition,
    this.description,
    this.name,
    this.path,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = Input.mapOptionalInputValue<
              List<GoogleCloudRecaptchaenterpriseV1FirewallAction>,
              List<Map<String, dynamic>>>(
          actionsValue,
          (value) => Input.encodeList<
              GoogleCloudRecaptchaenterpriseV1FirewallAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory FirewallpolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallpolicyArgs(
      actions: Input.asOptionalInput<
          List<GoogleCloudRecaptchaenterpriseV1FirewallAction>>(map['actions']),
      condition: Input.asOptionalInput<String>(map['condition']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      path: Input.asOptionalInput<String>(map['path']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
