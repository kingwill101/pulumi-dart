// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synthetic_task_common_setting_custom_host.dart';

class SyntheticTaskCommonSetting {
  /// Custom host. See `custom_host` below.
  final pulumi.Input<SyntheticTaskCommonSettingCustomHost>? customHost;
  /// IpType.
  final pulumi.Input<int>? ipType;
  /// Whether to enable link tracking.
  final pulumi.Input<bool>? isOpenTrace;
  /// Whether the monitoring samples are evenly distributed:
  /// - 0: No
  /// 1: Yes.
  final pulumi.Input<int>? monitorSamples;
  /// Link trace client type:
  /// - 0:ARMS Agent
  /// - 1:OpenTelemetry
  /// - 2:Jaeger.
  final pulumi.Input<int>? traceClientType;
  /// The link data is reported to the region.
  final pulumi.Input<String>? xtraceRegion;

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
      'customHost': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskCommonSettingCustomHost, Map<String, dynamic>>(customHost, (value) => value.toMap()),
      'ipType': ?ipType,
      'isOpenTrace': ?isOpenTrace,
      'monitorSamples': ?monitorSamples,
      'traceClientType': ?traceClientType,
      'xtraceRegion': ?xtraceRegion,
    };
  }

  factory SyntheticTaskCommonSetting.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskCommonSetting(
      customHost: map['customHost'] == null ? null : (SyntheticTaskCommonSettingCustomHost.fromMap((map['customHost']! as Map).cast<String, dynamic>())).input(),
      ipType: map['ipType'] == null ? null : (map['ipType']! as int).input(),
      isOpenTrace: map['isOpenTrace'] == null ? null : (map['isOpenTrace']! as bool).input(),
      monitorSamples: map['monitorSamples'] == null ? null : (map['monitorSamples']! as int).input(),
      traceClientType: map['traceClientType'] == null ? null : (map['traceClientType']! as int).input(),
      xtraceRegion: map['xtraceRegion'] == null ? null : (map['xtraceRegion']! as String).input(),
    );
  }
}

