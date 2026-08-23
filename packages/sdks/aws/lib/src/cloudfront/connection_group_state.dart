// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_group_timeouts.dart';

/// Input properties used for looking up and filtering ConnectionGroup resources.
class ConnectionGroupState {
  /// ID of the associated Anycast IP List. `ipv6Enabled` must not be set to `true` in order to set this argument
  final pulumi.Input<String>? anycastIpListId;
  /// ARN of the connection group.
  final pulumi.Input<String>? arn;
  /// Whether the connection group is enabled. Default is `true`.
  final pulumi.Input<bool>? enabled;
  /// Current version of the connection group.
  final pulumi.Input<String>? etag;
  /// Whether IPv6 is enabled for the connection group. Default is `false`.
  final pulumi.Input<bool>? ipv6Enabled;
  /// Whether the connection group is the default connection group for the distribution tenants.
  final pulumi.Input<bool>? isDefault;
  /// Date and time when the connection group was last modified.
  final pulumi.Input<String>? lastModifiedTime;
  /// Name of the connection group.
  final pulumi.Input<String>? name;
  /// The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.
  final pulumi.Input<String>? routingEndpoint;
  /// Current status of the connection group.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ConnectionGroupTimeouts>? timeouts;
  final pulumi.Input<bool>? waitForDeployment;

  /// Creates a new [ConnectionGroupState].
  /// [anycastIpListId] ID of the associated Anycast IP List. `ipv6Enabled` must not be set to `true` in order to set this argument
  /// [arn] ARN of the connection group.
  /// [enabled] Whether the connection group is enabled. Default is `true`.
  /// [etag] Current version of the connection group.
  /// [ipv6Enabled] Whether IPv6 is enabled for the connection group. Default is `false`.
  /// [isDefault] Whether the connection group is the default connection group for the distribution tenants.
  /// [lastModifiedTime] Date and time when the connection group was last modified.
  /// [name] Name of the connection group.
  /// [routingEndpoint] The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.
  /// [status] Current status of the connection group.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [waitForDeployment] Optional.
  const ConnectionGroupState({
    this.anycastIpListId,
    this.arn,
    this.enabled,
    this.etag,
    this.ipv6Enabled,
    this.isDefault,
    this.lastModifiedTime,
    this.name,
    this.routingEndpoint,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.waitForDeployment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anycastIpListId': ?anycastIpListId,
      'arn': ?arn,
      'enabled': ?enabled,
      'etag': ?etag,
      'ipv6Enabled': ?ipv6Enabled,
      'isDefault': ?isDefault,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'routingEndpoint': ?routingEndpoint,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ConnectionGroupTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForDeployment': ?waitForDeployment,
    };
  }

  factory ConnectionGroupState.fromMap(Map<String, dynamic> map) {
    return ConnectionGroupState(
      anycastIpListId: (() { final guardedValue = map['anycastIpListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Enabled: (() { final guardedValue = map['ipv6Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingEndpoint: (() { final guardedValue = map['routingEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGroupTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForDeployment: (() { final guardedValue = map['waitForDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
