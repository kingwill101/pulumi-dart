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
    pulumi.Output<String>? address,
    pulumi.Output<String>? agentGroup,
    pulumi.Output<List<String>>? alertIds,
    pulumi.Output<String>? createTime,
    pulumi.Output<SiteMonitorCustomSchedule>? customSchedule,
    pulumi.Output<String>? interval,
    pulumi.Output<List<SiteMonitorIspCity>>? ispCities,
    pulumi.Output<SiteMonitorOptionJson>? optionJson,
    pulumi.Output<String>? optionsJson,
    pulumi.Output<String>? status,
    pulumi.Output<String>? taskName,
    pulumi.Output<String>? taskState,
    pulumi.Output<String>? taskType,
    pulumi.Output<String>? updateTime,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      agentGroup = pulumi.Input.asOptionalInput<String>(agentGroup),
      alertIds = pulumi.Input.asOptionalInput<List<String>>(alertIds),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      customSchedule = pulumi.Input.asOptionalInput<SiteMonitorCustomSchedule>(customSchedule),
      interval = pulumi.Input.asOptionalInput<String>(interval),
      ispCities = pulumi.Input.asOptionalInput<List<SiteMonitorIspCity>>(ispCities),
      optionJson = pulumi.Input.asOptionalInput<SiteMonitorOptionJson>(optionJson),
      optionsJson = pulumi.Input.asOptionalInput<String>(optionsJson),
      status = pulumi.Input.asOptionalInput<String>(status),
      taskName = pulumi.Input.asOptionalInput<String>(taskName),
      taskState = pulumi.Input.asOptionalInput<String>(taskState),
      taskType = pulumi.Input.asOptionalInput<String>(taskType),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      agentGroup: map['agentGroup'] == null ? null : pulumi.Output.create<String>(map['agentGroup'] as String),
      alertIds: map['alertIds'] == null ? null : pulumi.Output.create<List<String>>((map['alertIds'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      customSchedule: map['customSchedule'] == null ? null : pulumi.Output.create<SiteMonitorCustomSchedule>(SiteMonitorCustomSchedule.fromMap((map['customSchedule'] as Map).cast<String, dynamic>())),
      interval: map['interval'] == null ? null : pulumi.Output.create<String>(map['interval'] as String),
      ispCities: map['ispCities'] == null ? null : pulumi.Output.create<List<SiteMonitorIspCity>>(pulumi.Input.decodeList<SiteMonitorIspCity>(map['ispCities'], (value) => SiteMonitorIspCity.fromMap((value as Map).cast<String, dynamic>()))),
      optionJson: map['optionJson'] == null ? null : pulumi.Output.create<SiteMonitorOptionJson>(SiteMonitorOptionJson.fromMap((map['optionJson'] as Map).cast<String, dynamic>())),
      optionsJson: map['optionsJson'] == null ? null : pulumi.Output.create<String>(map['optionsJson'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      taskName: map['taskName'] == null ? null : pulumi.Output.create<String>(map['taskName'] as String),
      taskState: map['taskState'] == null ? null : pulumi.Output.create<String>(map['taskState'] as String),
      taskType: map['taskType'] == null ? null : pulumi.Output.create<String>(map['taskType'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

