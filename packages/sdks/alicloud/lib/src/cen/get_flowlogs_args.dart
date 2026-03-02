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
  GetFlowlogsArgs({
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
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      flowLogId: map['flowLogId'] == null ? null : (map['flowLogId'] as String).input(),
      flowLogName: map['flowLogName'] == null ? null : (map['flowLogName'] as String).input(),
      flowLogVersion: map['flowLogVersion'] == null ? null : (map['flowLogVersion'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      interval: map['interval'] == null ? null : (map['interval'] as int).input(),
      logStoreName: map['logStoreName'] == null ? null : (map['logStoreName'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId'] as String).input(),
    );
  }
}

