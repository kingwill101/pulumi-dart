// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_site_config_auto_heal_setting_trigger_request.dart';
import 'get_windows_web_app_site_config_auto_heal_setting_trigger_slow_request.dart';
import 'get_windows_web_app_site_config_auto_heal_setting_trigger_slow_request_with_path.dart';
import 'get_windows_web_app_site_config_auto_heal_setting_trigger_status_code.dart';

class GetWindowsWebAppSiteConfigAutoHealSettingTrigger {
  /// The amount of Private Memory used.
  final int privateMemoryKb;
  /// A `requests` block as defined above.
  final List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest> requests;
  /// (Optional) One or more `slow_request_with_path` blocks as defined above.
  final List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath> slowRequestWithPaths;
  /// A `slow_request` block as defined above.
  final List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest> slowRequests;
  /// A `status_code` block as defined above.
  final List<GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode> statusCodes;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSettingTrigger].
  /// [privateMemoryKb] The amount of Private Memory used.
  /// [requests] A `requests` block as defined above.
  /// [slowRequestWithPaths] (Optional) One or more `slow_request_with_path` blocks as defined above.
  /// [slowRequests] A `slow_request` block as defined above.
  /// [statusCodes] A `status_code` block as defined above.
  GetWindowsWebAppSiteConfigAutoHealSettingTrigger({
    required this.privateMemoryKb,
    required this.requests,
    required this.slowRequestWithPaths,
    required this.slowRequests,
    required this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateMemoryKb': privateMemoryKb,
      'requests': pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'slowRequestWithPaths': pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath, Map<String, dynamic>>(slowRequestWithPaths, (value) => value.toMap()),
      'slowRequests': pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest, Map<String, dynamic>>(slowRequests, (value) => value.toMap()),
      'statusCodes': pulumi.Input.encodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode, Map<String, dynamic>>(statusCodes, (value) => value.toMap()),
    };
  }

  factory GetWindowsWebAppSiteConfigAutoHealSettingTrigger.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigAutoHealSettingTrigger(
      privateMemoryKb: map['privateMemoryKb'] as int,
      requests: pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest>(map['requests'], (value) => GetWindowsWebAppSiteConfigAutoHealSettingTriggerRequest.fromMap((value as Map).cast<String, dynamic>())),
      slowRequestWithPaths: pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath>(map['slowRequestWithPaths'], (value) => GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequestWithPath.fromMap((value as Map).cast<String, dynamic>())),
      slowRequests: pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest>(map['slowRequests'], (value) => GetWindowsWebAppSiteConfigAutoHealSettingTriggerSlowRequest.fromMap((value as Map).cast<String, dynamic>())),
      statusCodes: pulumi.Input.decodeList<GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode>(map['statusCodes'], (value) => GetWindowsWebAppSiteConfigAutoHealSettingTriggerStatusCode.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

