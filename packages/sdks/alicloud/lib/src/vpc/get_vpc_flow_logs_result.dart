// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_flow_logs_log.dart';

/// Result data returned by getVpcFlowLogs.
class GetVpcFlowLogsResult {
  final String? description;
  final String? flowLogName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? logStoreName;
  final List<GetVpcFlowLogsLog> logs;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? projectName;
  final String? resourceId;
  final String? resourceType;
  final String? status;
  final String? trafficType;

  /// Creates a new [GetVpcFlowLogsResult].
  /// [description] Optional.
  /// [flowLogName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [logStoreName] Optional.
  /// [logs] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [projectName] Optional.
  /// [resourceId] Optional.
  /// [resourceType] Optional.
  /// [status] Optional.
  /// [trafficType] Optional.
  GetVpcFlowLogsResult({
    this.description,
    this.flowLogName,
    required this.id,
    required this.ids,
    this.logStoreName,
    required this.logs,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.projectName,
    this.resourceId,
    this.resourceType,
    this.status,
    this.trafficType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'flowLogName': ?flowLogName,
      'id': id,
      'ids': ids,
      'logStoreName': ?logStoreName,
      'logs': pulumi.Input.encodeList<GetVpcFlowLogsLog, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'projectName': ?projectName,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?status,
      'trafficType': ?trafficType,
    };
  }

  factory GetVpcFlowLogsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcFlowLogsResult(
      description: map['description'] == null ? null : map['description']! as String,
      flowLogName: map['flowLogName'] == null ? null : map['flowLogName']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      logStoreName: map['logStoreName'] == null ? null : map['logStoreName']! as String,
      logs: pulumi.Input.decodeList<GetVpcFlowLogsLog>(map['logs'], (value) => GetVpcFlowLogsLog.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      projectName: map['projectName'] == null ? null : map['projectName']! as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId']! as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      trafficType: map['trafficType'] == null ? null : map['trafficType']! as String,
    );
  }
}

