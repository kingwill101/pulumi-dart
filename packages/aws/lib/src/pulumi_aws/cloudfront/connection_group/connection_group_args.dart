// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_group_timeouts/connection_group_timeouts.dart';

/// The set of arguments for ConnectionGroup.
class ConnectionGroupArgs {
  /// ID of the associated Anycast IP List. `ipv6_enabled` must not be set to `true` in order to set this argument
  final pulumi.Input<String>? anycastIpListId;

  /// Whether the connection group is enabled. Default is `true`.
  final pulumi.Input<bool>? enabled;

  /// Whether IPv6 is enabled for the connection group. Default is `false`.
  final pulumi.Input<bool>? ipv6Enabled;

  /// Name of the connection group.
  final pulumi.Input<String>? name;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ConnectionGroupTimeouts>? timeouts;
  final pulumi.Input<bool>? waitForDeployment;

  ConnectionGroupArgs({
    this.anycastIpListId,
    this.enabled,
    this.ipv6Enabled,
    this.name,
    this.tags,
    this.timeouts,
    this.waitForDeployment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final anycastIpListIdValue = anycastIpListId;
    if (anycastIpListIdValue != null) {
      map['anycastIpListId'] = anycastIpListIdValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final ipv6EnabledValue = ipv6Enabled;
    if (ipv6EnabledValue != null) {
      map['ipv6Enabled'] = ipv6EnabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ConnectionGroupTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final waitForDeploymentValue = waitForDeployment;
    if (waitForDeploymentValue != null) {
      map['waitForDeployment'] = waitForDeploymentValue;
    }
    return map;
  }

  factory ConnectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionGroupArgs(
      anycastIpListId:
          pulumi.Input.asOptionalInput<String>(map['anycastIpListId']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      ipv6Enabled: pulumi.Input.asOptionalInput<bool>(map['ipv6Enabled']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ConnectionGroupTimeouts>(
          map['timeouts']),
      waitForDeployment:
          pulumi.Input.asOptionalInput<bool>(map['waitForDeployment']),
    );
  }
}
