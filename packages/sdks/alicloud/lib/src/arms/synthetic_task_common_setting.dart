// ignore_for_file: unused_element, unnecessary_cast

import 'synthetic_task_common_setting_custom_host.dart';

class SyntheticTaskCommonSetting {
  /// Custom host. See `custom_host` below.
  final SyntheticTaskCommonSettingCustomHost? customHost;
  /// IpType.
  final int? ipType;
  /// Whether to enable link tracking.
  final bool? isOpenTrace;
  /// Whether the monitoring samples are evenly distributed:
  /// - 0: No
  /// 1: Yes.
  final int? monitorSamples;
  /// Link trace client type:
  /// - 0:ARMS Agent
  /// - 1:OpenTelemetry
  /// - 2:Jaeger.
  final int? traceClientType;
  /// The link data is reported to the region.
  final String? xtraceRegion;

  /// Creates a new [SyntheticTaskCommonSetting].
  /// [customHost] Custom host. See `custom_host` below.
  /// [ipType] IpType.
  /// [isOpenTrace] Whether to enable link tracking.
  /// [monitorSamples] Whether the monitoring samples are evenly distributed:
  /// [traceClientType] Link trace client type:
  /// [xtraceRegion] The link data is reported to the region.
  SyntheticTaskCommonSetting({
    this.customHost,
    this.ipType,
    this.isOpenTrace,
    this.monitorSamples,
    this.traceClientType,
    this.xtraceRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHost': ?customHost == null ? null : customHost!.toMap(),
      'ipType': ?ipType,
      'isOpenTrace': ?isOpenTrace,
      'monitorSamples': ?monitorSamples,
      'traceClientType': ?traceClientType,
      'xtraceRegion': ?xtraceRegion,
    };
  }

  factory SyntheticTaskCommonSetting.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskCommonSetting(
      customHost: map['customHost'] == null ? null : SyntheticTaskCommonSettingCustomHost.fromMap((map['customHost'] as Map).cast<String, dynamic>()),
      ipType: map['ipType'] == null ? null : map['ipType'] as int,
      isOpenTrace: map['isOpenTrace'] == null ? null : map['isOpenTrace'] as bool,
      monitorSamples: map['monitorSamples'] == null ? null : map['monitorSamples'] as int,
      traceClientType: map['traceClientType'] == null ? null : map['traceClientType'] as int,
      xtraceRegion: map['xtraceRegion'] == null ? null : map['xtraceRegion'] as String,
    );
  }
}

