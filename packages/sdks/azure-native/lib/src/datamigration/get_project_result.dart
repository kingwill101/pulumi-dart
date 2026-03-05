// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_app_response.dart';
import 'database_info_response.dart';
import 'mi_sql_connection_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getProject.
class GetProjectResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Field that defines the Azure active directory application info, used to connect to the target Azure resource
  final AzureActiveDirectoryAppResponse? azureAuthenticationInfo;
  /// UTC Date and time when project was created
  final String creationTime;
  /// List of DatabaseInfo
  final List<DatabaseInfoResponse>? databasesInfo;
  /// HTTP strong entity tag value. This is ignored if submitted.
  final String? etag;
  final String id;
  final String? location;
  final String name;
  /// The project's provisioning state
  final String provisioningState;
  /// Information for connecting to source
  final MiSqlConnectionInfoResponse? sourceConnectionInfo;
  /// Source platform for the project
  final String sourcePlatform;
  final SystemDataResponse systemData;
  final Map<String, String>? tags;
  /// Information for connecting to target
  final MiSqlConnectionInfoResponse? targetConnectionInfo;
  /// Target platform for the project
  final String targetPlatform;
  final String type;

  /// Creates a new [GetProjectResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureAuthenticationInfo] Field that defines the Azure active directory application info, used to connect to the target Azure resource
  /// [creationTime] UTC Date and time when project was created
  /// [databasesInfo] List of DatabaseInfo
  /// [etag] HTTP strong entity tag value. This is ignored if submitted.
  /// [id] Required.
  /// [location] Optional.
  /// [name] Required.
  /// [provisioningState] The project's provisioning state
  /// [sourceConnectionInfo] Information for connecting to source
  /// [sourcePlatform] Source platform for the project
  /// [systemData] Required.
  /// [tags] Optional.
  /// [targetConnectionInfo] Information for connecting to target
  /// [targetPlatform] Target platform for the project
  /// [type] Required.
  GetProjectResult({
    required this.azureApiVersion,
    this.azureAuthenticationInfo,
    required this.creationTime,
    this.databasesInfo,
    this.etag,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.sourceConnectionInfo,
    required this.sourcePlatform,
    required this.systemData,
    this.tags,
    this.targetConnectionInfo,
    required this.targetPlatform,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureAuthenticationInfo': ?azureAuthenticationInfo?.toMap(),
      'creationTime': creationTime,
      'databasesInfo': ?(() { final guardedValue = databasesInfo; if (guardedValue == null) return null; return pulumi.Input.encodeList<DatabaseInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'sourceConnectionInfo': ?sourceConnectionInfo?.toMap(),
      'sourcePlatform': sourcePlatform,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetConnectionInfo': ?targetConnectionInfo?.toMap(),
      'targetPlatform': targetPlatform,
      'type': type,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureAuthenticationInfo: (() { final guardedValue = map['azureAuthenticationInfo']; if (guardedValue == null) return null; return AzureActiveDirectoryAppResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTime: map['creationTime'] as String,
      databasesInfo: (() { final guardedValue = map['databasesInfo']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatabaseInfoResponse>(guardedValue, (value) => DatabaseInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceConnectionInfo: (() { final guardedValue = map['sourceConnectionInfo']; if (guardedValue == null) return null; return MiSqlConnectionInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourcePlatform: map['sourcePlatform'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetConnectionInfo: (() { final guardedValue = map['targetConnectionInfo']; if (guardedValue == null) return null; return MiSqlConnectionInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetPlatform: map['targetPlatform'] as String,
      type: map['type'] as String,
    );
  }
}

