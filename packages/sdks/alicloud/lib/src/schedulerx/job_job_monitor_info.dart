// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_job_monitor_info_contact_info.dart';
import 'job_job_monitor_info_monitor_config.dart';

class JobJobMonitorInfo {
  /// Contact information. See `contact_info` below.
  final pulumi.Input<List<JobJobMonitorInfoContactInfo>>? contactInfos;
  /// Alarm switch and threshold configuration. See `monitor_config` below.
  final pulumi.Input<JobJobMonitorInfoMonitorConfig>? monitorConfig;

  /// Creates a new [JobJobMonitorInfo].
  /// [contactInfos] Contact information. See `contact_info` below.
  /// [monitorConfig] Alarm switch and threshold configuration. See `monitor_config` below.
  JobJobMonitorInfo({
    this.contactInfos,
    this.monitorConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactInfos': ?pulumi.Input.mapOptionalInputValue<List<JobJobMonitorInfoContactInfo>, List<Map<String, dynamic>>>(contactInfos, (value) => pulumi.Input.encodeList<JobJobMonitorInfoContactInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitorConfig': ?pulumi.Input.mapOptionalInputValue<JobJobMonitorInfoMonitorConfig, Map<String, dynamic>>(monitorConfig, (value) => value.toMap()),
    };
  }

  factory JobJobMonitorInfo.fromMap(Map<String, dynamic> map) {
    return JobJobMonitorInfo(
      contactInfos: map['contactInfos'] == null ? null : (pulumi.Input.decodeList<JobJobMonitorInfoContactInfo>(map['contactInfos']!, (value) => JobJobMonitorInfoContactInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      monitorConfig: map['monitorConfig'] == null ? null : (JobJobMonitorInfoMonitorConfig.fromMap((map['monitorConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

