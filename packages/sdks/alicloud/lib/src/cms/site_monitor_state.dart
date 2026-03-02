// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_monitor_custom_schedule.dart';
import 'site_monitor_isp_city.dart';
import 'site_monitor_option_json.dart';

/// Input properties used for looking up and filtering SiteMonitor resources.
class SiteMonitorState {
  /// The URL or IP address monitored by the site monitoring task.
  final pulumi.Input<String>? address;
  /// The type of the detection point. Default value: `PC`. Valid values: `PC`, `MOBILE`.
  final pulumi.Input<String>? agentGroup;
  /// Field `alert_ids` has been deprecated from provider version 1.262.0.
  final pulumi.Input<List<String>>? alertIds;
  /// (Deprecated since v1.262.0) Field `create_time` has been deprecated from provider version 1.262.0.
  final pulumi.Input<String>? createTime;
  /// Custom probing period. Only a certain period of time from Monday to Sunday can be selected for detection. See `custom_schedule` below.
  final pulumi.Input<SiteMonitorCustomSchedule>? customSchedule;
  /// The monitoring interval of the site monitoring task. Unit: minutes. Valid values: `1`, `5`, `15`, `30` and `60`. Default value: `1`. **NOTE:** From version 1.207.0, `interval` can be set to `30`, `60`.
  final pulumi.Input<String>? interval;
  /// The detection points in a JSON array. For example, `[{"city":"546","isp":"465"},{"city":"572","isp":"465"},{"city":"738","isp":"465"}]` indicates the detection points in Beijing, Hangzhou, and Qingdao respectively. You can call the [DescribeSiteMonitorISPCityList](https://www.alibabacloud.com/help/en/doc-detail/115045.htm) operation to query detection point information. If this parameter is not specified, three detection points will be chosen randomly for monitoring. See `isp_cities` below.
  final pulumi.Input<List<SiteMonitorIspCity>>? ispCities;
  /// The extended options of the protocol that is used by the site monitoring task. See `option_json` below.
  final pulumi.Input<SiteMonitorOptionJson>? optionJson;
  /// Field `options_json` has been deprecated from provider version 1.262.0. New field `option_json` instead.
  final pulumi.Input<String>? optionsJson;
  /// The status of the site monitoring task. Valid values:
  final pulumi.Input<String>? status;
  /// The name of the site monitoring task. The name must be 4 to 100 characters in length. The name can contain the following types of characters: letters, digits, and underscores.
  final pulumi.Input<String>? taskName;
  /// (Deprecated since v1.262.0) Field `task_state` has been deprecated from provider version 1.262.0. New field `status` instead.
  final pulumi.Input<String>? taskState;
  /// The protocol of the site monitoring task. Currently, site monitoring supports the following protocols: HTTP, PING, TCP, UDP, DNS, SMTP, POP3, and FTP.
  final pulumi.Input<String>? taskType;
  /// (Deprecated since v1.262.0) Field `update_time` has been deprecated from provider version 1.262.0.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SiteMonitorState].
  /// [address] The URL or IP address monitored by the site monitoring task.
  /// [agentGroup] The type of the detection point. Default value: `PC`. Valid values: `PC`, `MOBILE`.
  /// [alertIds] Field `alert_ids` has been deprecated from provider version 1.262.0.
  /// [createTime] (Deprecated since v1.262.0) Field `create_time` has been deprecated from provider version 1.262.0.
  /// [customSchedule] Custom probing period. Only a certain period of time from Monday to Sunday can be selected for detection. See `custom_schedule` below.
  /// [interval] The monitoring interval of the site monitoring task. Unit: minutes. Valid values: `1`, `5`, `15`, `30` and `60`. Default value: `1`. **NOTE:** From version 1.207.0, `interval` can be set to `30`, `60`.
  /// [ispCities] The detection points in a JSON array. For example, `[{"city":"546","isp":"465"},{"city":"572","isp":"465"},{"city":"738","isp":"465"}]` indicates the detection points in Beijing, Hangzhou, and Qingdao respectively. You can call the [DescribeSiteMonitorISPCityList](https://www.alibabacloud.com/help/en/doc-detail/115045.htm) operation to query detection point information. If this parameter is not specified, three detection points will be chosen randomly for monitoring. See `isp_cities` below.
  /// [optionJson] The extended options of the protocol that is used by the site monitoring task. See `option_json` below.
  /// [optionsJson] Field `options_json` has been deprecated from provider version 1.262.0. New field `option_json` instead.
  /// [status] The status of the site monitoring task. Valid values:
  /// [taskName] The name of the site monitoring task. The name must be 4 to 100 characters in length. The name can contain the following types of characters: letters, digits, and underscores.
  /// [taskState] (Deprecated since v1.262.0) Field `task_state` has been deprecated from provider version 1.262.0. New field `status` instead.
  /// [taskType] The protocol of the site monitoring task. Currently, site monitoring supports the following protocols: HTTP, PING, TCP, UDP, DNS, SMTP, POP3, and FTP.
  /// [updateTime] (Deprecated since v1.262.0) Field `update_time` has been deprecated from provider version 1.262.0.
  SiteMonitorState({
    this.address,
    this.agentGroup,
    this.alertIds,
    this.createTime,
    this.customSchedule,
    this.interval,
    this.ispCities,
    this.optionJson,
    this.optionsJson,
    this.status,
    this.taskName,
    this.taskState,
    this.taskType,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'agentGroup': ?agentGroup,
      'alertIds': ?alertIds,
      'createTime': ?createTime,
      'customSchedule': ?pulumi.Input.mapOptionalInputValue<SiteMonitorCustomSchedule, Map<String, dynamic>>(customSchedule, (value) => value.toMap()),
      'interval': ?interval,
      'ispCities': ?pulumi.Input.mapOptionalInputValue<List<SiteMonitorIspCity>, List<Map<String, dynamic>>>(ispCities, (value) => pulumi.Input.encodeList<SiteMonitorIspCity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'optionJson': ?pulumi.Input.mapOptionalInputValue<SiteMonitorOptionJson, Map<String, dynamic>>(optionJson, (value) => value.toMap()),
      'optionsJson': ?optionsJson,
      'status': ?status,
      'taskName': ?taskName,
      'taskState': ?taskState,
      'taskType': ?taskType,
      'updateTime': ?updateTime,
    };
  }

  factory SiteMonitorState.fromMap(Map<String, dynamic> map) {
    return SiteMonitorState(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      agentGroup: map['agentGroup'] == null ? null : (map['agentGroup'] as String).input(),
      alertIds: map['alertIds'] == null ? null : ((map['alertIds'] as List).cast<String>()).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      customSchedule: map['customSchedule'] == null ? null : (SiteMonitorCustomSchedule.fromMap((map['customSchedule'] as Map).cast<String, dynamic>())).input(),
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      ispCities: map['ispCities'] == null ? null : (pulumi.Input.decodeList<SiteMonitorIspCity>(map['ispCities'], (value) => SiteMonitorIspCity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      optionJson: map['optionJson'] == null ? null : (SiteMonitorOptionJson.fromMap((map['optionJson'] as Map).cast<String, dynamic>())).input(),
      optionsJson: map['optionsJson'] == null ? null : (map['optionsJson'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      taskName: map['taskName'] == null ? null : (map['taskName'] as String).input(),
      taskState: map['taskState'] == null ? null : (map['taskState'] as String).input(),
      taskType: map['taskType'] == null ? null : (map['taskType'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

