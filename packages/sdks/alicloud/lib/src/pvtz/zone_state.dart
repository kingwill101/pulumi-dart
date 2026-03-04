// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_user_info.dart';

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
  /// Whether the Private Zone is ptr.
  final pulumi.Input<bool>? isPtr;

  /// The language. Valid values: "zh", "en", "jp".
  final pulumi.Input<String>? lang;

  /// The name of the Private Zone. The `name` has been deprecated from provider version 1.107.0. Please use 'zone_name' instead.
  final pulumi.Input<String>? name;

  /// The recursive DNS proxy. Valid values:
  /// - ZONE: indicates that the recursive DNS proxy is disabled.
  /// - RECORD: indicates that the recursive DNS proxy is enabled.
  /// Default to "ZONE".
  final pulumi.Input<String>? proxyPattern;

  /// The count of the Private Zone Record.
  final pulumi.Input<int>? recordCount;

  /// The remark of the Private Zone.
  final pulumi.Input<String>? remark;

  /// The Id of resource group which the Private Zone belongs.
  final pulumi.Input<String>? resourceGroupId;

  /// The status of the host synchronization task. Valid values:  `ON`,`OFF`. **NOTE:** You can update the `sync_status` to enable/disable the host synchronization task.
  final pulumi.Input<String>? syncStatus;

  /// The tags of the Private Zone.
  final pulumi.Input<Map<String, String>>? tags;

  /// The IP address of the client.
  final pulumi.Input<String>? userClientIp;

  /// The user information of the host synchronization task. See `user_info` below.
  final pulumi.Input<List<ZoneUserInfo>>? userInfos;

  /// The zone_name of the Private Zone. The `zone_name` is required when the value of the `name`  is Empty.
  final pulumi.Input<String>? zoneName;

  /// Creates a new [ZoneState].
  /// [isPtr] Whether the Private Zone is ptr.
  /// [lang] The language. Valid values: "zh", "en", "jp".
  /// [name] The name of the Private Zone. The `name` has been deprecated from provider version 1.107.0. Please use 'zone_name' instead.
  /// [proxyPattern] The recursive DNS proxy. Valid values:
  /// [recordCount] The count of the Private Zone Record.
  /// [remark] The remark of the Private Zone.
  /// [resourceGroupId] The Id of resource group which the Private Zone belongs.
  /// [syncStatus] The status of the host synchronization task. Valid values:  `ON`,`OFF`. **NOTE:** You can update the `sync_status` to enable/disable the host synchronization task.
  /// [tags] The tags of the Private Zone.
  /// [userClientIp] The IP address of the client.
  /// [userInfos] The user information of the host synchronization task. See `user_info` below.
  /// [zoneName] The zone_name of the Private Zone. The `zone_name` is required when the value of the `name`  is Empty.
  ZoneState({
    this.isPtr,
    this.lang,
    this.name,
    this.proxyPattern,
    this.recordCount,
    this.remark,
    this.resourceGroupId,
    this.syncStatus,
    this.tags,
    this.userClientIp,
    this.userInfos,
    this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPtr': ?isPtr,
      'lang': ?lang,
      'name': ?name,
      'proxyPattern': ?proxyPattern,
      'recordCount': ?recordCount,
      'remark': ?remark,
      'resourceGroupId': ?resourceGroupId,
      'syncStatus': ?syncStatus,
      'tags': ?tags,
      'userClientIp': ?userClientIp,
      'userInfos':
          ?pulumi.Input.mapOptionalInputValue<
            List<ZoneUserInfo>,
            List<Map<String, dynamic>>
          >(
            userInfos,
            (value) =>
                pulumi.Input.encodeList<ZoneUserInfo, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'zoneName': ?zoneName,
    };
  }

  factory ZoneState.fromMap(Map<String, dynamic> map) {
    return ZoneState(
      isPtr: (() {
        final guardedValue = map['isPtr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxyPattern: (() {
        final guardedValue = map['proxyPattern'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recordCount: (() {
        final guardedValue = map['recordCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      remark: (() {
        final guardedValue = map['remark'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      syncStatus: (() {
        final guardedValue = map['syncStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      userClientIp: (() {
        final guardedValue = map['userClientIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userInfos: (() {
        final guardedValue = map['userInfos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ZoneUserInfo>(
            guardedValue,
            (value) =>
                ZoneUserInfo.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      zoneName: (() {
        final guardedValue = map['zoneName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
