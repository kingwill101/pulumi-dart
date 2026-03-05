// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flowlogs_flowlog.dart';

/// Result data returned by getFlowlogs.
class GetFlowlogsResult {
  /// The ID of Cen instance.
  final String? cenId;
  /// The description of the flowlog.
  final String? description;
  /// The ID of FlowLog.
  final String? flowLogId;
  /// The name of the flowlog.
  final String? flowLogName;
  /// (Available since v1.236.0) Flowlog Version.
  final String? flowLogVersion;
  /// A list of Flow Log Entries. Each element contains the following attributes:
  final List<GetFlowlogsFlowlog> flowlogs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Flow Log IDs.
  final List<String> ids;
  /// (Available since v1.236.0) The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: **60** or **600 * *. Default value: **600 * *.
  final int? interval;
  /// The LogStore that stores the flowlog.
  final String? logStoreName;
  final String? nameRegex;
  /// A list of name of Flow Logs.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The Project that stores the flowlog.
  final String? projectName;
  /// (Available since v1.236.0) Region Id.
  final String? regionId;
  /// The status of the flow log. Valid values:-**Active**: started.-**InActive**: not started.
  final String? status;
  /// (Available since v1.236.0) Transit Router ID.
  final String? transitRouterId;

  /// Creates a new [GetFlowlogsResult].
  /// [cenId] The ID of Cen instance.
  /// [description] The description of the flowlog.
  /// [flowLogId] The ID of FlowLog.
  /// [flowLogName] The name of the flowlog.
  /// [flowLogVersion] (Available since v1.236.0) Flowlog Version.
  /// [flowlogs] A list of Flow Log Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Flow Log IDs.
  /// [interval] (Available since v1.236.0) The duration of the capture window for the flow log to capture traffic. Unit: seconds. Valid values: **60** or **600 * *. Default value: **600 * *.
  /// [logStoreName] The LogStore that stores the flowlog.
  /// [nameRegex] Optional.
  /// [names] A list of name of Flow Logs.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [projectName] The Project that stores the flowlog.
  /// [regionId] (Available since v1.236.0) Region Id.
  /// [status] The status of the flow log. Valid values:-**Active**: started.-**InActive**: not started.
  /// [transitRouterId] (Available since v1.236.0) Transit Router ID.
  GetFlowlogsResult({
    this.cenId,
    this.description,
    this.flowLogId,
    this.flowLogName,
    this.flowLogVersion,
    required this.flowlogs,
    required this.id,
    required this.ids,
    this.interval,
    this.logStoreName,
    this.nameRegex,
    required this.names,
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
      'flowlogs': pulumi.Input.encodeList<GetFlowlogsFlowlog, Map<String, dynamic>>(flowlogs, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'interval': ?interval,
      'logStoreName': ?logStoreName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'projectName': ?projectName,
      'regionId': ?regionId,
      'status': ?status,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory GetFlowlogsResult.fromMap(Map<String, dynamic> map) {
    return GetFlowlogsResult(
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flowLogId: (() { final guardedValue = map['flowLogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flowLogName: (() { final guardedValue = map['flowLogName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flowLogVersion: (() { final guardedValue = map['flowLogVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flowlogs: pulumi.Input.decodeList<GetFlowlogsFlowlog>(map['flowlogs']!, (value) => GetFlowlogsFlowlog.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return guardedValue as int; })(),
      logStoreName: (() { final guardedValue = map['logStoreName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

