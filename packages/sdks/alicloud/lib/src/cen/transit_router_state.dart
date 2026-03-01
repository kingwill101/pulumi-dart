// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouter resources.
class TransitRouterState {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String>? cenId;
  /// (Available since v1.247.0) The time when the transit router was created.
  final pulumi.Input<String>? createTime;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// (Available since v1.247.0) The ID of the region where the transit router is deployed.
  final pulumi.Input<String>? regionId;
  /// The status of the transit router.
  final pulumi.Input<String>? status;
  /// Specifies whether to enable the multicast feature for the Enterprise Edition transit router. Valid values:
  final pulumi.Input<bool>? supportMulticast;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The description of the Enterprise Edition transit router instance.
  /// The description must be 1 to 256 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  final pulumi.Input<String>? transitRouterDescription;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The name of the Enterprise Edition transit router.
  /// The name must be 1 to 128 characters in length, and cannot start with http:// or https://. You can also leave this parameter empty.
  final pulumi.Input<String>? transitRouterName;
  /// The edition of the transit router.
  final pulumi.Input<String>? type;

  /// Creates a new [TransitRouterState].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [createTime] (Available since v1.247.0) The time when the transit router was created.
  /// [dryRun] The dry run.
  /// [regionId] (Available since v1.247.0) The ID of the region where the transit router is deployed.
  /// [status] The status of the transit router.
  /// [supportMulticast] Specifies whether to enable the multicast feature for the Enterprise Edition transit router. Valid values:
  /// [tags] The tag of the resource
  /// [transitRouterDescription] The description of the Enterprise Edition transit router instance.
  /// [transitRouterId] The ID of the transit router.
  /// [transitRouterName] The name of the Enterprise Edition transit router.
  /// [type] The edition of the transit router.
  TransitRouterState({
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? supportMulticast,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterDescription,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<String>? transitRouterName,
    pulumi.Output<String>? type,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      supportMulticast = pulumi.Input.asOptionalInput<bool>(supportMulticast),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterDescription = pulumi.Input.asOptionalInput<String>(transitRouterDescription),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterName = pulumi.Input.asOptionalInput<String>(transitRouterName),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'createTime': ?createTime,
      'dryRun': ?dryRun,
      'regionId': ?regionId,
      'status': ?status,
      'supportMulticast': ?supportMulticast,
      'tags': ?tags,
      'transitRouterDescription': ?transitRouterDescription,
      'transitRouterId': ?transitRouterId,
      'transitRouterName': ?transitRouterName,
      'type': ?type,
    };
  }

  factory TransitRouterState.fromMap(Map<String, dynamic> map) {
    return TransitRouterState(
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      supportMulticast: map['supportMulticast'] == null ? null : pulumi.Output.create<bool>(map['supportMulticast'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterDescription: map['transitRouterDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterDescription'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterName: map['transitRouterName'] == null ? null : pulumi.Output.create<String>(map['transitRouterName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

