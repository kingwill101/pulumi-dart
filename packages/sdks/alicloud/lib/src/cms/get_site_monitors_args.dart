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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? taskId,
    pulumi.Output<String>? taskType,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      taskId = pulumi.Input.asOptionalInput<String>(taskId),
      taskType = pulumi.Input.asOptionalInput<String>(taskType);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      taskId: map['taskId'] == null ? null : pulumi.Output.create<String>(map['taskId'] as String),
      taskType: map['taskType'] == null ? null : pulumi.Output.create<String>(map['taskType'] as String),
    );
  }
}

