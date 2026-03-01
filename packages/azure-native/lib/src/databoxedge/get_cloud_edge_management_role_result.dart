// ignore_for_file: unused_element, unnecessary_cast

import 'edge_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloudEdgeManagementRole.
class GetCloudEdgeManagementRoleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Edge Profile of the resource
  final EdgeProfileResponse edgeProfile;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// Role type.
  /// Expected value is 'CloudEdgeManagement'.
  final String kind;
  /// Local Edge Management Status
  final String localManagementStatus;
  /// The object name.
  final String name;
  /// Role status.
  final String roleStatus;
  /// Metadata pertaining to creation and last modification of Role
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;

  /// Creates a new [GetCloudEdgeManagementRoleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [edgeProfile] Edge Profile of the resource
  /// [id] The path ID that uniquely identifies the object.
  /// [kind] Role type.
  /// [localManagementStatus] Local Edge Management Status
  /// [name] The object name.
  /// [roleStatus] Role status.
  /// [systemData] Metadata pertaining to creation and last modification of Role
  /// [type] The hierarchical type of the object.
  GetCloudEdgeManagementRoleResult({
    required this.azureApiVersion,
    required this.edgeProfile,
    required this.id,
    required this.kind,
    required this.localManagementStatus,
    required this.name,
    required this.roleStatus,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'edgeProfile': edgeProfile.toMap(),
      'id': id,
      'kind': kind,
      'localManagementStatus': localManagementStatus,
      'name': name,
      'roleStatus': roleStatus,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetCloudEdgeManagementRoleResult.fromMap(Map<String, dynamic> map) {
    return GetCloudEdgeManagementRoleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      edgeProfile: EdgeProfileResponse.fromMap((map['edgeProfile'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      kind: map['kind'] as String,
      localManagementStatus: map['localManagementStatus'] as String,
      name: map['name'] as String,
      roleStatus: map['roleStatus'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

