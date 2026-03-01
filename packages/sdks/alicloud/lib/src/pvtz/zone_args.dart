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
    pulumi.Output<String>? lang,
    pulumi.Output<String>? name,
    pulumi.Output<String>? proxyPattern,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? syncStatus,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userClientIp,
    pulumi.Output<List<ZoneUserInfo>>? userInfos,
    pulumi.Output<String>? zoneName,
  }) :
      lang = pulumi.Input.asOptionalInput<String>(lang),
      name = pulumi.Input.asOptionalInput<String>(name),
      proxyPattern = pulumi.Input.asOptionalInput<String>(proxyPattern),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      syncStatus = pulumi.Input.asOptionalInput<String>(syncStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userClientIp = pulumi.Input.asOptionalInput<String>(userClientIp),
      userInfos = pulumi.Input.asOptionalInput<List<ZoneUserInfo>>(userInfos),
      zoneName = pulumi.Input.asOptionalInput<String>(zoneName);

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
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      proxyPattern: map['proxyPattern'] == null ? null : pulumi.Output.create<String>(map['proxyPattern'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      syncStatus: map['syncStatus'] == null ? null : pulumi.Output.create<String>(map['syncStatus'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userClientIp: map['userClientIp'] == null ? null : pulumi.Output.create<String>(map['userClientIp'] as String),
      userInfos: map['userInfos'] == null ? null : pulumi.Output.create<List<ZoneUserInfo>>(pulumi.Input.decodeList<ZoneUserInfo>(map['userInfos'], (value) => ZoneUserInfo.fromMap((value as Map).cast<String, dynamic>()))),
      zoneName: map['zoneName'] == null ? null : pulumi.Output.create<String>(map['zoneName'] as String),
    );
  }
}

