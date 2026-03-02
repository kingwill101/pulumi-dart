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
    this.cenId,
    this.createTime,
    this.dryRun,
    this.regionId,
    this.status,
    this.supportMulticast,
    this.tags,
    this.transitRouterDescription,
    this.transitRouterId,
    this.transitRouterName,
    this.type,
  });

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
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      supportMulticast: map['supportMulticast'] == null ? null : (map['supportMulticast'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      transitRouterDescription: map['transitRouterDescription'] == null ? null : (map['transitRouterDescription'] as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId'] as String).input(),
      transitRouterName: map['transitRouterName'] == null ? null : (map['transitRouterName'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

