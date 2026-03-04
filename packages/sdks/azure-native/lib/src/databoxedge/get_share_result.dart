// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_container_info_response.dart';
import 'client_access_right_response.dart';
import 'mount_point_map_response.dart';
import 'refresh_details_response.dart';
import 'system_data_response.dart';
import 'user_access_right_response.dart';

/// Result data returned by getShare.
class GetShareResult {
  /// Access protocol to be used by the share.
  final String accessProtocol;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Azure container mapping for the share.
  final AzureContainerInfoResponse? azureContainerInfo;

  /// List of IP addresses and corresponding access rights on the share(required for NFS protocol).
  final List<ClientAccessRightResponse>? clientAccessRights;

  /// Data policy of the share.
  final String? dataPolicy;

  /// Description for the share.
  final String? description;

  /// The path ID that uniquely identifies the object.
  final String id;

  /// Current monitoring status of the share.
  final String monitoringStatus;

  /// The object name.
  final String name;

  /// Details of the refresh job on this share.
  final RefreshDetailsResponse? refreshDetails;

  /// Share mount point to the role.
  final List<MountPointMapResponse> shareMappings;

  /// Current status of the share.
  final String shareStatus;

  /// Metadata pertaining to creation and last modification of Share
  final SystemDataResponse systemData;

  /// The hierarchical type of the object.
  final String type;

  /// Mapping of users and corresponding access rights on the share (required for SMB protocol).
  final List<UserAccessRightResponse>? userAccessRights;

  /// Creates a new [GetShareResult].
  /// [accessProtocol] Access protocol to be used by the share.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureContainerInfo] Azure container mapping for the share.
  /// [clientAccessRights] List of IP addresses and corresponding access rights on the share(required for NFS protocol).
  /// [dataPolicy] Data policy of the share.
  /// [description] Description for the share.
  /// [id] The path ID that uniquely identifies the object.
  /// [monitoringStatus] Current monitoring status of the share.
  /// [name] The object name.
  /// [refreshDetails] Details of the refresh job on this share.
  /// [shareMappings] Share mount point to the role.
  /// [shareStatus] Current status of the share.
  /// [systemData] Metadata pertaining to creation and last modification of Share
  /// [type] The hierarchical type of the object.
  /// [userAccessRights] Mapping of users and corresponding access rights on the share (required for SMB protocol).
  GetShareResult({
    required this.accessProtocol,
    required this.azureApiVersion,
    this.azureContainerInfo,
    this.clientAccessRights,
    this.dataPolicy,
    this.description,
    required this.id,
    required this.monitoringStatus,
    required this.name,
    this.refreshDetails,
    required this.shareMappings,
    required this.shareStatus,
    required this.systemData,
    required this.type,
    this.userAccessRights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessProtocol': accessProtocol,
      'azureApiVersion': azureApiVersion,
      'azureContainerInfo': ?azureContainerInfo?.toMap(),
      'clientAccessRights': ?(() {
        final guardedValue = clientAccessRights;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ClientAccessRightResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'dataPolicy': ?dataPolicy,
      'description': ?description,
      'id': id,
      'monitoringStatus': monitoringStatus,
      'name': name,
      'refreshDetails': ?refreshDetails?.toMap(),
      'shareMappings':
          pulumi.Input.encodeList<MountPointMapResponse, Map<String, dynamic>>(
            shareMappings,
            (value) => value.toMap(),
          ),
      'shareStatus': shareStatus,
      'systemData': systemData.toMap(),
      'type': type,
      'userAccessRights': ?(() {
        final guardedValue = userAccessRights;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          UserAccessRightResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      accessProtocol: map['accessProtocol'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      azureContainerInfo: (() {
        final guardedValue = map['azureContainerInfo'];
        if (guardedValue == null) return null;
        return AzureContainerInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      clientAccessRights: (() {
        final guardedValue = map['clientAccessRights'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ClientAccessRightResponse>(
          guardedValue,
          (value) => ClientAccessRightResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataPolicy: (() {
        final guardedValue = map['dataPolicy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      monitoringStatus: map['monitoringStatus'] as String,
      name: map['name'] as String,
      refreshDetails: (() {
        final guardedValue = map['refreshDetails'];
        if (guardedValue == null) return null;
        return RefreshDetailsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      shareMappings: pulumi.Input.decodeList<MountPointMapResponse>(
        map['shareMappings']!,
        (value) => MountPointMapResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      shareStatus: map['shareStatus'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      userAccessRights: (() {
        final guardedValue = map['userAccessRights'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<UserAccessRightResponse>(
          guardedValue,
          (value) => UserAccessRightResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
