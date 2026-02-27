// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_group_timeouts/connection_group_timeouts.dart';

/// The set of arguments for ConnectionGroup.
class ConnectionGroupArgs {
  /// ID of the associated Anycast IP List. `ipv6_enabled` must not be set to `true` in order to set this argument
  final Input<String>? anycastIpListId;

  /// Whether the connection group is enabled. Default is `true`.
  final Input<bool>? enabled;

  /// Whether IPv6 is enabled for the connection group. Default is `false`.
  final Input<bool>? ipv6Enabled;

  /// Name of the connection group.
  final Input<String>? name;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ConnectionGroupTimeouts>? timeouts;
  final Input<bool>? waitForDeployment;

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
      map['timeouts'] = Input.mapOptionalInputValue<ConnectionGroupTimeouts,
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
      anycastIpListId: Input.asOptionalInput<String>(map['anycastIpListId']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      ipv6Enabled: Input.asOptionalInput<bool>(map['ipv6Enabled']),
      name: Input.asOptionalInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ConnectionGroupTimeouts>(map['timeouts']),
      waitForDeployment: Input.asOptionalInput<bool>(map['waitForDeployment']),
    );
  }
}
