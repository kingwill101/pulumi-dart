// ignore_for_file: unused_element, unnecessary_cast

import 'edge_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloudEdgeManagementRole.
class GetCloudEdgeManagementRoleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Edge Profile of the resource
  final EdgeProfileResponse? edgeProfile;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// Role type.
  /// Expected value is 'CloudEdgeManagement'.
  final String? kind;
  /// Local Edge Management Status
  final String? localManagementStatus;
  /// The object name.
  final String? name;
  /// Role status.
  final String? roleStatus;
  /// Metadata pertaining to creation and last modification of Role
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

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
  const GetCloudEdgeManagementRoleResult({
    this.azureApiVersion,
    this.edgeProfile,
    this.id,
    this.kind,
    this.localManagementStatus,
    this.name,
    this.roleStatus,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'edgeProfile': ?edgeProfile?.toMap(),
      'id': ?id,
      'kind': ?kind,
      'localManagementStatus': ?localManagementStatus,
      'name': ?name,
      'roleStatus': ?roleStatus,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCloudEdgeManagementRoleResult.fromMap(Map<String, dynamic> map) {
    return GetCloudEdgeManagementRoleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      edgeProfile: (() { final guardedValue = map['edgeProfile']; if (guardedValue == null) return null; return EdgeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localManagementStatus: (() { final guardedValue = map['localManagementStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleStatus: (() { final guardedValue = map['roleStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
