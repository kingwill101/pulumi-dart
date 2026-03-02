// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_site_monitors_get_site_monitors_args_doc}
/// Arguments for getSiteMonitors.
/// {@endtemplate}
/// {@macro pulumi_cms_get_site_monitors_get_site_monitors_args_doc}
class GetSiteMonitorsArgs {
  /// A list of Site Monitor IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Task ID.
  final pulumi.Input<String>? taskId;
  /// Task Type.
  final pulumi.Input<String>? taskType;

  /// Creates a new [GetSiteMonitorsArgs].
  /// [ids] A list of Site Monitor IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [taskId] Task ID.
  /// [taskType] Task Type.
  GetSiteMonitorsArgs({
    this.ids,
    this.outputFile,
    this.taskId,
    this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'taskId': ?taskId,
      'taskType': ?taskType,
    };
  }

  factory GetSiteMonitorsArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteMonitorsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      taskId: map['taskId'] == null ? null : (map['taskId'] as String).input(),
      taskType: map['taskType'] == null ? null : (map['taskType'] as String).input(),
    );
  }
}

