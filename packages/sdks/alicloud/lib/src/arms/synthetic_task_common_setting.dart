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
      'customHost':
          ?pulumi.Input.mapOptionalInputValue<
            SyntheticTaskCommonSettingCustomHost,
            Map<String, dynamic>
          >(customHost, (value) => value.toMap()),
      'ipType': ?ipType,
      'isOpenTrace': ?isOpenTrace,
      'monitorSamples': ?monitorSamples,
      'traceClientType': ?traceClientType,
      'xtraceRegion': ?xtraceRegion,
    };
  }

  factory SyntheticTaskCommonSetting.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskCommonSetting(
      customHost: (() {
        final guardedValue = map['customHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SyntheticTaskCommonSettingCustomHost.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ipType: (() {
        final guardedValue = map['ipType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      isOpenTrace: (() {
        final guardedValue = map['isOpenTrace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      monitorSamples: (() {
        final guardedValue = map['monitorSamples'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      traceClientType: (() {
        final guardedValue = map['traceClientType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      xtraceRegion: (() {
        final guardedValue = map['xtraceRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
