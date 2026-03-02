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
    this.dryRun,
    this.listenerDescription,
    this.loadBalancerId,
    this.regionId,
    this.serverGroupId,
    this.status,
    this.tags,
  });

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
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      listenerDescription: map['listenerDescription'] == null ? null : (map['listenerDescription']! as String).input(),
      loadBalancerId: map['loadBalancerId'] == null ? null : (map['loadBalancerId']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      serverGroupId: map['serverGroupId'] == null ? null : (map['serverGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

