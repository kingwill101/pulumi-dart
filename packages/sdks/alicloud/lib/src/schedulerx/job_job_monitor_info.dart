// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_job_monitor_info_contact_info.dart';
import 'job_job_monitor_info_monitor_config.dart';

class JobJobMonitorInfo {
  /// Contact information. See `contact_info` below.
  final List<JobJobMonitorInfoContactInfo>? contactInfos;
  /// Alarm switch and threshold configuration. See `monitor_config` below.
  final JobJobMonitorInfoMonitorConfig? monitorConfig;

  /// Creates a new [JobJobMonitorInfo].
  /// [contactInfos] Contact information. See `contact_info` below.
  /// [monitorConfig] Alarm switch and threshold configuration. See `monitor_config` below.
  JobJobMonitorInfo({
    this.contactInfos,
    this.monitorConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactInfos': ?contactInfos == null ? null : pulumi.Input.encodeList<JobJobMonitorInfoContactInfo, Map<String, dynamic>>(contactInfos!, (value) => value.toMap()),
      'monitorConfig': ?monitorConfig == null ? null : monitorConfig!.toMap(),
    };
  }

  factory JobJobMonitorInfo.fromMap(Map<String, dynamic> map) {
    return JobJobMonitorInfo(
      contactInfos: map['contactInfos'] == null ? null : pulumi.Input.decodeList<JobJobMonitorInfoContactInfo>(map['contactInfos'], (value) => JobJobMonitorInfoContactInfo.fromMap((value as Map).cast<String, dynamic>())),
      monitorConfig: map['monitorConfig'] == null ? null : JobJobMonitorInfoMonitorConfig.fromMap((map['monitorConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

