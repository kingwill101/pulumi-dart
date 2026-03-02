// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_user_info.dart';

/// {@template pulumi_pvtz_zone_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_pvtz_zone_zone_args_doc}
class ZoneArgs {
  /// The language. Valid values: "zh", "en", "jp".
  final pulumi.Input<String>? lang;
  /// The name of the Private Zone. The `name` has been deprecated from provider version 1.107.0. Please use 'zone_name' instead.
  final pulumi.Input<String>? name;
  /// The recursive DNS proxy. Valid values:
  /// - ZONE: indicates that the recursive DNS proxy is disabled.
  /// - RECORD: indicates that the recursive DNS proxy is enabled.
  /// Default to "ZONE".
  final pulumi.Input<String>? proxyPattern;
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

  /// Creates a new [ZoneArgs].
  /// [lang] The language. Valid values: "zh", "en", "jp".
  /// [name] The name of the Private Zone. The `name` has been deprecated from provider version 1.107.0. Please use 'zone_name' instead.
  /// [proxyPattern] The recursive DNS proxy. Valid values:
  /// [remark] The remark of the Private Zone.
  /// [resourceGroupId] The Id of resource group which the Private Zone belongs.
  /// [syncStatus] The status of the host synchronization task. Valid values:  `ON`,`OFF`. **NOTE:** You can update the `sync_status` to enable/disable the host synchronization task.
  /// [tags] The tags of the Private Zone.
  /// [userClientIp] The IP address of the client.
  /// [userInfos] The user information of the host synchronization task. See `user_info` below.
  /// [zoneName] The zone_name of the Private Zone. The `zone_name` is required when the value of the `name`  is Empty.
  ZoneArgs({
    this.lang,
    this.name,
    this.proxyPattern,
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
      'lang': ?lang,
      'name': ?name,
      'proxyPattern': ?proxyPattern,
      'remark': ?remark,
      'resourceGroupId': ?resourceGroupId,
      'syncStatus': ?syncStatus,
      'tags': ?tags,
      'userClientIp': ?userClientIp,
      'userInfos': ?pulumi.Input.mapOptionalInputValue<List<ZoneUserInfo>, List<Map<String, dynamic>>>(userInfos, (value) => pulumi.Input.encodeList<ZoneUserInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneName': ?zoneName,
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      proxyPattern: map['proxyPattern'] == null ? null : (map['proxyPattern']! as String).input(),
      remark: map['remark'] == null ? null : (map['remark']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      syncStatus: map['syncStatus'] == null ? null : (map['syncStatus']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userClientIp: map['userClientIp'] == null ? null : (map['userClientIp']! as String).input(),
      userInfos: map['userInfos'] == null ? null : (pulumi.Input.decodeList<ZoneUserInfo>(map['userInfos']!, (value) => ZoneUserInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zoneName: map['zoneName'] == null ? null : (map['zoneName']! as String).input(),
    );
  }
}

