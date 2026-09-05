// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_group_timeouts.dart';

/// {@template pulumi_cloudfront_connection_group_connection_group_args_doc}
/// The set of arguments for ConnectionGroup.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_connection_group_connection_group_args_doc}
class ConnectionGroupArgs {
  /// ID of the associated Anycast IP List. `ipv6Enabled` must not be set to `true` in order to set this argument
  final pulumi.Input<String?>? anycastIpListId;
  /// Whether the connection group is enabled. Default is `true`.
  final pulumi.Input<bool?>? enabled;
  /// Whether IPv6 is enabled for the connection group. Default is `false`.
  final pulumi.Input<bool?>? ipv6Enabled;
  /// Name of the connection group.
  final pulumi.Input<String?>? name;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<ConnectionGroupTimeouts?>? timeouts;
  final pulumi.Input<bool?>? waitForDeployment;

  /// Creates a new [ConnectionGroupArgs].
  /// [anycastIpListId] ID of the associated Anycast IP List. `ipv6Enabled` must not be set to `true` in order to set this argument
  /// [enabled] Whether the connection group is enabled. Default is `true`.
  /// [ipv6Enabled] Whether IPv6 is enabled for the connection group. Default is `false`.
  /// [name] Name of the connection group.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [waitForDeployment] Optional.
  const ConnectionGroupArgs({
    this.anycastIpListId,
    this.enabled,
    this.ipv6Enabled,
    this.name,
    this.tags,
    this.timeouts,
    this.waitForDeployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anycastIpListId': ?anycastIpListId,
      'enabled': ?enabled,
      'ipv6Enabled': ?ipv6Enabled,
      'name': ?name,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ConnectionGroupTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForDeployment': ?waitForDeployment,
    };
  }

  factory ConnectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionGroupArgs(
      anycastIpListId: (() { final guardedValue = map['anycastIpListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6Enabled: (() { final guardedValue = map['ipv6Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGroupTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForDeployment: (() { final guardedValue = map['waitForDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
