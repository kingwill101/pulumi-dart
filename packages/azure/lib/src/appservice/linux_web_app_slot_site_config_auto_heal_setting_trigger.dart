// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger_requests.dart';
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger_slow_request.dart';
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger_slow_request_with_path.dart';
import 'linux_web_app_slot_site_config_auto_heal_setting_trigger_status_code.dart';

class LinuxWebAppSlotSiteConfigAutoHealSettingTrigger {
  /// A `requests` block as defined above.
  final LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests? requests;
  /// A `slow_request` block as defined above.
  final LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest? slowRequest;
  /// One or more `slow_request_with_path` blocks as defined above.
  final List<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath>? slowRequestWithPaths;
  /// One or more `status_code` blocks as defined above.
  final List<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode>? statusCodes;

  /// Creates a new [LinuxWebAppSlotSiteConfigAutoHealSettingTrigger].
  /// [requests] A `requests` block as defined above.
  /// [slowRequest] A `slow_request` block as defined above.
  /// [slowRequestWithPaths] One or more `slow_request_with_path` blocks as defined above.
  /// [statusCodes] One or more `status_code` blocks as defined above.
  LinuxWebAppSlotSiteConfigAutoHealSettingTrigger({
    this.requests,
    this.slowRequest,
    this.slowRequestWithPaths,
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requests': ?requests == null ? null : requests!.toMap(),
      'slowRequest': ?slowRequest == null ? null : slowRequest!.toMap(),
      'slowRequestWithPaths': ?slowRequestWithPaths == null ? null : pulumi.Input.encodeList<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath, Map<String, dynamic>>(slowRequestWithPaths!, (value) => value.toMap()),
      'statusCodes': ?statusCodes == null ? null : pulumi.Input.encodeList<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode, Map<String, dynamic>>(statusCodes!, (value) => value.toMap()),
    };
  }

  factory LinuxWebAppSlotSiteConfigAutoHealSettingTrigger.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotSiteConfigAutoHealSettingTrigger(
      requests: map['requests'] == null ? null : LinuxWebAppSlotSiteConfigAutoHealSettingTriggerRequests.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      slowRequest: map['slowRequest'] == null ? null : LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequest.fromMap((map['slowRequest'] as Map).cast<String, dynamic>()),
      slowRequestWithPaths: map['slowRequestWithPaths'] == null ? null : pulumi.Input.decodeList<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath>(map['slowRequestWithPaths'], (value) => LinuxWebAppSlotSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap((value as Map).cast<String, dynamic>())),
      statusCodes: map['statusCodes'] == null ? null : pulumi.Input.decodeList<LinuxWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode>(map['statusCodes'], (value) => LinuxWebAppSlotSiteConfigAutoHealSettingTriggerStatusCode.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

