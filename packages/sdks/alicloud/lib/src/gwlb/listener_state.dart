// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Listener resources.
class ListenerState {
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The description of the listener.
  ///
  /// The description must be 2 to 256 characters in length, and can contain letters, digits, commas (,), periods (.), semicolons (;), forward slashes (/), at signs (@), underscores (\_), and hyphens (-).
  final pulumi.Input<String>? listenerDescription;
  /// The GWLB instance ID.
  final pulumi.Input<String>? loadBalancerId;
  /// The region ID.
  final pulumi.Input<String>? regionId;
  /// The server group ID.
  final pulumi.Input<String>? serverGroupId;
  /// The status of the listener.
  final pulumi.Input<String>? status;
  /// The tags. You can specify at most 20 tags in each call.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ListenerState].
  /// [dryRun] Specifies whether to perform a dry run, without performing the actual request. Valid values:
  /// [listenerDescription] The description of the listener.
  /// [loadBalancerId] The GWLB instance ID.
  /// [regionId] The region ID.
  /// [serverGroupId] The server group ID.
  /// [status] The status of the listener.
  /// [tags] The tags. You can specify at most 20 tags in each call.
  ListenerState({
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? listenerDescription,
    pulumi.Output<String>? loadBalancerId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? serverGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      listenerDescription = pulumi.Input.asOptionalInput<String>(listenerDescription),
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      serverGroupId = pulumi.Input.asOptionalInput<String>(serverGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'listenerDescription': ?listenerDescription,
      'loadBalancerId': ?loadBalancerId,
      'regionId': ?regionId,
      'serverGroupId': ?serverGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ListenerState.fromMap(Map<String, dynamic> map) {
    return ListenerState(
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      listenerDescription: map['listenerDescription'] == null ? null : pulumi.Output.create<String>(map['listenerDescription'] as String),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      serverGroupId: map['serverGroupId'] == null ? null : pulumi.Output.create<String>(map['serverGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

