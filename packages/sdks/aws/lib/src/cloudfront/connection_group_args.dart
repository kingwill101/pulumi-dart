// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_group_timeouts.dart';

/// {@template pulumi_cloudfront_connection_group_connection_group_args_doc}
/// The set of arguments for ConnectionGroup.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_connection_group_connection_group_args_doc}
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

  /// Creates a new [ConnectionGroupArgs].
  /// [anycastIpListId] ID of the associated Anycast IP List. `ipv6_enabled` must not be set to `true` in order to set this argument
  /// [enabled] Whether the connection group is enabled. Default is `true`.
  /// [ipv6Enabled] Whether IPv6 is enabled for the connection group. Default is `false`.
  /// [name] Name of the connection group.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [waitForDeployment] Optional.
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
      anycastIpListId: map['anycastIpListId'] == null ? null : ((map['anycastIpListId'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      ipv6Enabled: map['ipv6Enabled'] == null ? null : ((map['ipv6Enabled'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ConnectionGroupTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      waitForDeployment: map['waitForDeployment'] == null ? null : ((map['waitForDeployment'] as bool).input()).input(),
    );
  }
}

