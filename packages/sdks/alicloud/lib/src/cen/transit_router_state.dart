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
      cenId: (() {
        final guardedValue = map['cenId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      supportMulticast: (() {
        final guardedValue = map['supportMulticast'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitRouterDescription: (() {
        final guardedValue = map['transitRouterDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterId: (() {
        final guardedValue = map['transitRouterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterName: (() {
        final guardedValue = map['transitRouterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
