// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_monitor_custom_schedule.dart';
import 'site_monitor_isp_city.dart';
import 'site_monitor_option_json.dart';

/// {@template pulumi_cms_site_monitor_site_monitor_args_doc}
/// The set of arguments for SiteMonitor.
/// {@endtemplate}
/// {@macro pulumi_cms_site_monitor_site_monitor_args_doc}
class SiteMonitorArgs {
  /// The URL or IP address monitored by the site monitoring task.
  final pulumi.Input<String> address;
  /// The type of the detection point. Default value: `PC`. Valid values: `PC`, `MOBILE`.
  final pulumi.Input<String>? agentGroup;
  /// Field `alert_ids` has been deprecated from provider version 1.262.0.
  final pulumi.Input<List<String>>? alertIds;
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
  final pulumi.Input<String> taskName;
  /// The protocol of the site monitoring task. Currently, site monitoring supports the following protocols: HTTP, PING, TCP, UDP, DNS, SMTP, POP3, and FTP.
  final pulumi.Input<String> taskType;

  /// Creates a new [SiteMonitorArgs].
  /// [address] The URL or IP address monitored by the site monitoring task.
  /// [agentGroup] The type of the detection point. Default value: `PC`. Valid values: `PC`, `MOBILE`.
  /// [alertIds] Field `alert_ids` has been deprecated from provider version 1.262.0.
  /// [customSchedule] Custom probing period. Only a certain period of time from Monday to Sunday can be selected for detection. See `custom_schedule` below.
  /// [interval] The monitoring interval of the site monitoring task. Unit: minutes. Valid values: `1`, `5`, `15`, `30` and `60`. Default value: `1`. **NOTE:** From version 1.207.0, `interval` can be set to `30`, `60`.
  /// [ispCities] The detection points in a JSON array. For example, `[{"city":"546","isp":"465"},{"city":"572","isp":"465"},{"city":"738","isp":"465"}]` indicates the detection points in Beijing, Hangzhou, and Qingdao respectively. You can call the [DescribeSiteMonitorISPCityList](https://www.alibabacloud.com/help/en/doc-detail/115045.htm) operation to query detection point information. If this parameter is not specified, three detection points will be chosen randomly for monitoring. See `isp_cities` below.
  /// [optionJson] The extended options of the protocol that is used by the site monitoring task. See `option_json` below.
  /// [optionsJson] Field `options_json` has been deprecated from provider version 1.262.0. New field `option_json` instead.
  /// [status] The status of the site monitoring task. Valid values:
  /// [taskName] The name of the site monitoring task. The name must be 4 to 100 characters in length. The name can contain the following types of characters: letters, digits, and underscores.
  /// [taskType] The protocol of the site monitoring task. Currently, site monitoring supports the following protocols: HTTP, PING, TCP, UDP, DNS, SMTP, POP3, and FTP.
  SiteMonitorArgs({
    required String address,
    String? agentGroup,
    List<String>? alertIds,
    SiteMonitorCustomSchedule? customSchedule,
    String? interval,
    List<SiteMonitorIspCity>? ispCities,
    SiteMonitorOptionJson? optionJson,
    String? optionsJson,
    String? status,
    required String taskName,
    required String taskType,
  }) :
      address = pulumi.Input.asInput<String>(address),
      agentGroup = pulumi.Input.asOptionalInput<String>(agentGroup),
      alertIds = pulumi.Input.asOptionalInput<List<String>>(alertIds),
      customSchedule = pulumi.Input.asOptionalInput<SiteMonitorCustomSchedule>(customSchedule),
      interval = pulumi.Input.asOptionalInput<String>(interval),
      ispCities = pulumi.Input.asOptionalInput<List<SiteMonitorIspCity>>(ispCities),
      optionJson = pulumi.Input.asOptionalInput<SiteMonitorOptionJson>(optionJson),
      optionsJson = pulumi.Input.asOptionalInput<String>(optionsJson),
      status = pulumi.Input.asOptionalInput<String>(status),
      taskName = pulumi.Input.asInput<String>(taskName),
      taskType = pulumi.Input.asInput<String>(taskType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'agentGroup': ?agentGroup,
      'alertIds': ?alertIds,
      'customSchedule': ?pulumi.Input.mapOptionalInputValue<SiteMonitorCustomSchedule, Map<String, dynamic>>(customSchedule, (value) => value.toMap()),
      'interval': ?interval,
      'ispCities': ?pulumi.Input.mapOptionalInputValue<List<SiteMonitorIspCity>, List<Map<String, dynamic>>>(ispCities, (value) => pulumi.Input.encodeList<SiteMonitorIspCity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'optionJson': ?pulumi.Input.mapOptionalInputValue<SiteMonitorOptionJson, Map<String, dynamic>>(optionJson, (value) => value.toMap()),
      'optionsJson': ?optionsJson,
      'status': ?status,
      'taskName': taskName,
      'taskType': taskType,
    };
  }

  factory SiteMonitorArgs.fromMap(Map<String, dynamic> map) {
    return SiteMonitorArgs(
      address: map['address'] as String,
      agentGroup: map['agentGroup'] == null ? null : map['agentGroup'] as String,
      alertIds: map['alertIds'] == null ? null : (map['alertIds'] as List).cast<String>(),
      customSchedule: map['customSchedule'] == null ? null : SiteMonitorCustomSchedule.fromMap((map['customSchedule'] as Map).cast<String, dynamic>()),
      interval: map['interval'] == null ? null : map['interval'] as String,
      ispCities: map['ispCities'] == null ? null : pulumi.Input.decodeList<SiteMonitorIspCity>(map['ispCities'], (value) => SiteMonitorIspCity.fromMap((value as Map).cast<String, dynamic>())),
      optionJson: map['optionJson'] == null ? null : SiteMonitorOptionJson.fromMap((map['optionJson'] as Map).cast<String, dynamic>()),
      optionsJson: map['optionsJson'] == null ? null : map['optionsJson'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      taskName: map['taskName'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

