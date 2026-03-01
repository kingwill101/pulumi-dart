// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_group_timeouts.dart';

/// Input properties used for looking up and filtering ConnectionGroup resources.
class ConnectionGroupState {
  /// ID of the associated Anycast IP List. `ipv6_enabled` must not be set to `true` in order to set this argument
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
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ConnectionGroupTimeouts>? timeouts;
  final pulumi.Input<bool>? waitForDeployment;

  /// Creates a new [ConnectionGroupState].
  /// [anycastIpListId] ID of the associated Anycast IP List. `ipv6_enabled` must not be set to `true` in order to set this argument
  /// [arn] ARN of the connection group.
  /// [enabled] Whether the connection group is enabled. Default is `true`.
  /// [etag] Current version of the connection group.
  /// [ipv6Enabled] Whether IPv6 is enabled for the connection group. Default is `false`.
  /// [isDefault] Whether the connection group is the default connection group for the distribution tenants.
  /// [lastModifiedTime] Date and time when the connection group was last modified.
  /// [name] Name of the connection group.
  /// [routingEndpoint] The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.
  /// [status] Current status of the connection group.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [waitForDeployment] Optional.
  ConnectionGroupState({
    pulumi.Output<String>? anycastIpListId,
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? etag,
    pulumi.Output<bool>? ipv6Enabled,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? routingEndpoint,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ConnectionGroupTimeouts>? timeouts,
    pulumi.Output<bool>? waitForDeployment,
  }) :
      anycastIpListId = pulumi.Input.asOptionalInput<String>(anycastIpListId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      ipv6Enabled = pulumi.Input.asOptionalInput<bool>(ipv6Enabled),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      routingEndpoint = pulumi.Input.asOptionalInput<String>(routingEndpoint),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ConnectionGroupTimeouts>(timeouts),
      waitForDeployment = pulumi.Input.asOptionalInput<bool>(waitForDeployment);

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
      anycastIpListId: map['anycastIpListId'] == null ? null : pulumi.Output.create<String>(map['anycastIpListId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      ipv6Enabled: map['ipv6Enabled'] == null ? null : pulumi.Output.create<bool>(map['ipv6Enabled'] as bool),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      routingEndpoint: map['routingEndpoint'] == null ? null : pulumi.Output.create<String>(map['routingEndpoint'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ConnectionGroupTimeouts>(ConnectionGroupTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      waitForDeployment: map['waitForDeployment'] == null ? null : pulumi.Output.create<bool>(map['waitForDeployment'] as bool),
    );
  }
}

