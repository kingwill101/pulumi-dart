// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_flowlogs_get_flowlogs_args_doc}
/// Arguments for getFlowlogs.
/// {@endtemplate}
/// {@macro pulumi_cen_get_flowlogs_get_flowlogs_args_doc}
class GetFlowlogsArgs {
  /// The ID of Cen instance.
  final pulumi.Input<String>? cenId;
  /// The description of the flowlog.
  final pulumi.Input<String>? description;
  /// The ID of FlowLog.
  final pulumi.Input<String>? flowLogId;
  /// The name of the flowlog.
  final pulumi.Input<String>? flowLogName;
  /// Flowlog Version.
  final pulumi.Input<String>? flowLogVersion;
  /// A list of Flow Log IDs.
  final pulumi.Input<List<String>>? ids;
  /// The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: **60** or **600 * *. Default value: **600 * *.
  final pulumi.Input<int>? interval;
  /// The LogStore that stores the flowlog.
  final pulumi.Input<String>? logStoreName;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Current page number.
  final pulumi.Input<int>? pageNumber;
  /// Number of records per page.
  final pulumi.Input<int>? pageSize;
  /// The Project that stores the flowlog.
  final pulumi.Input<String>? projectName;
  /// Region id
  final pulumi.Input<String>? regionId;
  /// The status of the flow log. Valid values:-**Active**: started.-**InActive**: not started.
  final pulumi.Input<String>? status;
  /// Transit Router ID
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [GetFlowlogsArgs].
  /// [cenId] The ID of Cen instance.
  /// [description] The description of the flowlog.
  /// [flowLogId] The ID of FlowLog.
  /// [flowLogName] The name of the flowlog.
  /// [flowLogVersion] Flowlog Version.
  /// [ids] A list of Flow Log IDs.
  /// [interval] The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: **60** or **600 * *. Default value: **600 * *.
  /// [logStoreName] The LogStore that stores the flowlog.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Current page number.
  /// [pageSize] Number of records per page.
  /// [projectName] The Project that stores the flowlog.
  /// [regionId] Region id
  /// [status] The status of the flow log. Valid values:-**Active**: started.-**InActive**: not started.
  /// [transitRouterId] Transit Router ID
  const GetFlowlogsArgs({
    this.cenId,
    this.description,
    this.flowLogId,
    this.flowLogName,
    this.flowLogVersion,
    this.ids,
    this.interval,
    this.logStoreName,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.projectName,
    this.regionId,
    this.status,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'description': ?description,
      'flowLogId': ?flowLogId,
      'flowLogName': ?flowLogName,
      'flowLogVersion': ?flowLogVersion,
      'ids': ?ids,
      'interval': ?interval,
      'logStoreName': ?logStoreName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'projectName': ?projectName,
      'regionId': ?regionId,
      'status': ?status,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory GetFlowlogsArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowlogsArgs(
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowLogId: (() { final guardedValue = map['flowLogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowLogName: (() { final guardedValue = map['flowLogName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowLogVersion: (() { final guardedValue = map['flowLogVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logStoreName: (() { final guardedValue = map['logStoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

