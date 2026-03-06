// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_get_alarms_get_alarms_args_doc}
/// Arguments for getAlarms.
/// {@endtemplate}
/// {@macro pulumi_ess_get_alarms_get_alarms_args_doc}
class GetAlarmsArgs {
  /// A list of alarm IDs.
  final pulumi.Input<List<String>>? ids;
  /// The type for the alarm's associated metric. Supported value: system, custom. "system" means the metric data is collected by Aliyun Cloud Monitor Service(CMS), "custom" means the metric data is upload to CMS by users. Defaults to system.
  final pulumi.Input<String>? metricType;
  /// A regex string to filter resulting alarms by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Scaling group id the alarms belong to.
  final pulumi.Input<String>? scalingGroupId;

  /// Creates a new [GetAlarmsArgs].
  /// [ids] A list of alarm IDs.
  /// [metricType] The type for the alarm's associated metric. Supported value: system, custom. "system" means the metric data is collected by Aliyun Cloud Monitor Service(CMS), "custom" means the metric data is upload to CMS by users. Defaults to system.
  /// [nameRegex] A regex string to filter resulting alarms by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [scalingGroupId] Scaling group id the alarms belong to.
  const GetAlarmsArgs({
    this.ids,
    this.metricType,
    this.nameRegex,
    this.outputFile,
    this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'metricType': ?metricType,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory GetAlarmsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlarmsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metricType: (() { final guardedValue = map['metricType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingGroupId: (() { final guardedValue = map['scalingGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

