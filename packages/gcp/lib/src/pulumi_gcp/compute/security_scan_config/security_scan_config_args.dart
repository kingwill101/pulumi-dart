// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_scan_config_authentication/security_scan_config_authentication.dart';
import '../security_scan_config_schedule/security_scan_config_schedule.dart';

/// The set of arguments for SecurityScanConfig.
class SecurityScanConfigArgs {
  /// The authentication configuration.
  /// If specified, service will use the authentication configuration during scanning.
  /// Structure is documented below.
  final pulumi.Input<SecurityScanConfigAuthentication>? authentication;

  /// The blacklist URL patterns as described in
  /// https://cloud.google.com/security-scanner/docs/excluded-urls
  final pulumi.Input<List<String>>? blacklistPatterns;

  /// The user provider display name of the ScanConfig.
  final pulumi.Input<String> displayName;

  /// Controls export of scan configurations and results to Cloud Security Command Center.
  /// Default value is `ENABLED`.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? exportToSecurityCommandCenter;

  /// The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
  /// Defaults to 15.
  final pulumi.Input<int>? maxQps;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The schedule of the ScanConfig
  /// Structure is documented below.
  final pulumi.Input<SecurityScanConfigSchedule>? schedule;

  /// The starting URLs from which the scanner finds site pages.
  final pulumi.Input<List<String>> startingUrls;

  /// Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default.
  /// Each value may be one of: `APP_ENGINE`, `COMPUTE`.
  final pulumi.Input<List<String>>? targetPlatforms;

  /// Type of the user agents used for scanning
  /// Default value is `CHROME_LINUX`.
  /// Possible values are: `USER_AGENT_UNSPECIFIED`, `CHROME_LINUX`, `CHROME_ANDROID`, `SAFARI_IPHONE`.
  final pulumi.Input<String>? userAgent;

  SecurityScanConfigArgs({
    this.authentication,
    this.blacklistPatterns,
    required this.displayName,
    this.exportToSecurityCommandCenter,
    this.maxQps,
    this.project,
    this.schedule,
    required this.startingUrls,
    this.targetPlatforms,
    this.userAgent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationValue = authentication;
    if (authenticationValue != null) {
      map['authentication'] = pulumi.Input.mapOptionalInputValue<
          SecurityScanConfigAuthentication,
          Map<String, dynamic>>(authenticationValue, (value) => value.toMap());
    }
    final blacklistPatternsValue = blacklistPatterns;
    if (blacklistPatternsValue != null) {
      map['blacklistPatterns'] = blacklistPatternsValue;
    }
    map['displayName'] = displayName;
    final exportToSecurityCommandCenterValue = exportToSecurityCommandCenter;
    if (exportToSecurityCommandCenterValue != null) {
      map['exportToSecurityCommandCenter'] = exportToSecurityCommandCenterValue;
    }
    final maxQpsValue = maxQps;
    if (maxQpsValue != null) {
      map['maxQps'] = maxQpsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = pulumi.Input.mapOptionalInputValue<
          SecurityScanConfigSchedule,
          Map<String, dynamic>>(scheduleValue, (value) => value.toMap());
    }
    map['startingUrls'] = startingUrls;
    final targetPlatformsValue = targetPlatforms;
    if (targetPlatformsValue != null) {
      map['targetPlatforms'] = targetPlatformsValue;
    }
    final userAgentValue = userAgent;
    if (userAgentValue != null) {
      map['userAgent'] = userAgentValue;
    }
    return map;
  }

  factory SecurityScanConfigArgs.fromMap(Map<String, dynamic> map) {
    return SecurityScanConfigArgs(
      authentication:
          pulumi.Input.asOptionalInput<SecurityScanConfigAuthentication>(
              map['authentication']),
      blacklistPatterns:
          pulumi.Input.asOptionalInput<List<String>>(map['blacklistPatterns']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      exportToSecurityCommandCenter: pulumi.Input.asOptionalInput<String>(
          map['exportToSecurityCommandCenter']),
      maxQps: pulumi.Input.asOptionalInput<int>(map['maxQps']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schedule: pulumi.Input.asOptionalInput<SecurityScanConfigSchedule>(
          map['schedule']),
      startingUrls: pulumi.Input.asInput<List<String>>(map['startingUrls']),
      targetPlatforms:
          pulumi.Input.asOptionalInput<List<String>>(map['targetPlatforms']),
      userAgent: pulumi.Input.asOptionalInput<String>(map['userAgent']),
    );
  }
}
