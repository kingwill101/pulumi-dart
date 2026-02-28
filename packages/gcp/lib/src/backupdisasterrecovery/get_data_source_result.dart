// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_backup_config_info.dart';
import 'get_data_source_data_source_backup_appliance_application.dart';
import 'get_data_source_data_source_gcp_resource.dart';

/// Result data returned by getDataSource.
class GetDataSourceResult {
  final List<GetDataSourceBackupConfigInfo> backupConfigInfos;
  final String backupCount;
  final String backupVaultId;
  final String configState;
  final String createTime;
  final List<GetDataSourceDataSourceBackupApplianceApplication> dataSourceBackupApplianceApplications;
  final List<GetDataSourceDataSourceGcpResource> dataSourceGcpResources;
  final String dataSourceId;
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String project;
  final String state;
  final String totalStoredBytes;
  final String updateTime;

  /// Creates a new [GetDataSourceResult].
  /// [backupConfigInfos] Required.
  /// [backupCount] Required.
  /// [backupVaultId] Required.
  /// [configState] Required.
  /// [createTime] Required.
  /// [dataSourceBackupApplianceApplications] Required.
  /// [dataSourceGcpResources] Required.
  /// [dataSourceId] Required.
  /// [etag] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Required.
  /// [state] Required.
  /// [totalStoredBytes] Required.
  /// [updateTime] Required.
  GetDataSourceResult({
    required this.backupConfigInfos,
    required this.backupCount,
    required this.backupVaultId,
    required this.configState,
    required this.createTime,
    required this.dataSourceBackupApplianceApplications,
    required this.dataSourceGcpResources,
    required this.dataSourceId,
    required this.etag,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    required this.project,
    required this.state,
    required this.totalStoredBytes,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfigInfos': pulumi.Input.encodeList<GetDataSourceBackupConfigInfo, Map<String, dynamic>>(backupConfigInfos, (value) => value.toMap()),
      'backupCount': backupCount,
      'backupVaultId': backupVaultId,
      'configState': configState,
      'createTime': createTime,
      'dataSourceBackupApplianceApplications': pulumi.Input.encodeList<GetDataSourceDataSourceBackupApplianceApplication, Map<String, dynamic>>(dataSourceBackupApplianceApplications, (value) => value.toMap()),
      'dataSourceGcpResources': pulumi.Input.encodeList<GetDataSourceDataSourceGcpResource, Map<String, dynamic>>(dataSourceGcpResources, (value) => value.toMap()),
      'dataSourceId': dataSourceId,
      'etag': etag,
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'project': project,
      'state': state,
      'totalStoredBytes': totalStoredBytes,
      'updateTime': updateTime,
    };
  }

  factory GetDataSourceResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourceResult(
      backupConfigInfos: pulumi.Input.decodeList<GetDataSourceBackupConfigInfo>(map['backupConfigInfos'], (value) => GetDataSourceBackupConfigInfo.fromMap((value as Map).cast<String, dynamic>())),
      backupCount: map['backupCount'] as String,
      backupVaultId: map['backupVaultId'] as String,
      configState: map['configState'] as String,
      createTime: map['createTime'] as String,
      dataSourceBackupApplianceApplications: pulumi.Input.decodeList<GetDataSourceDataSourceBackupApplianceApplication>(map['dataSourceBackupApplianceApplications'], (value) => GetDataSourceDataSourceBackupApplianceApplication.fromMap((value as Map).cast<String, dynamic>())),
      dataSourceGcpResources: pulumi.Input.decodeList<GetDataSourceDataSourceGcpResource>(map['dataSourceGcpResources'], (value) => GetDataSourceDataSourceGcpResource.fromMap((value as Map).cast<String, dynamic>())),
      dataSourceId: map['dataSourceId'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      state: map['state'] as String,
      totalStoredBytes: map['totalStoredBytes'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

