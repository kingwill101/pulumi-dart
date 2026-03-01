// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_access_entry_response.dart';
import 'routine_reference_response.dart';
import 'table_reference_response.dart';

class DatasetAccessItemResponse {
  /// [Pick one] A grant authorizing all resources of a particular type in a particular dataset access to this dataset. Only views are supported for now. The role field is not required when this field is set. If that dataset is deleted and re-created, its access needs to be granted again via an update operation.
  final DatasetAccessEntryResponse dataset;

  /// [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". Maps to IAM policy member "domain:DOMAIN".
  final String domain;

  /// [Pick one] An email address of a Google Group to grant access to. Maps to IAM policy member "group:GROUP".
  final String groupByEmail;

  /// [Pick one] Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group.
  final String iamMember;

  /// [Required] An IAM role ID that should be granted to the user, group, or domain specified in this access entry. The following legacy mappings will be applied: OWNER  roles/bigquery.dataOwner WRITER  roles/bigquery.dataEditor READER  roles/bigquery.dataViewer This field will accept any of the above formats, but will return only the legacy format. For example, if you set this field to "roles/bigquery.dataOwner", it will be returned back as "OWNER".
  final String role;

  /// [Pick one] A routine from a different dataset to grant access to. Queries executed against that routine will have read access to views/tables/routines in this dataset. Only UDF is supported for now. The role field is not required when this field is set. If that routine is updated by any user, access to the routine needs to be granted again via an update operation.
  final RoutineReferenceResponse routine;

  /// [Pick one] A special group to grant access to. Possible values include: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-named IAM members.
  final String specialGroup;

  /// [Pick one] An email address of a user to grant access to. For example: fred@example.com. Maps to IAM policy member "user:EMAIL" or "serviceAccount:EMAIL".
  final String userByEmail;

  /// [Pick one] A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation.
  final TableReferenceResponse view;

  /// Creates a new [DatasetAccessItemResponse].
  /// [dataset] [Pick one] A grant authorizing all resources of a particular type in a particular dataset access to this dataset. Only views are supported for now. The role field is not required when this field is set. If that dataset is deleted and re-created, its access needs to be granted again via an update operation.
  /// [domain] [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". Maps to IAM policy member "domain:DOMAIN".
  /// [groupByEmail] [Pick one] An email address of a Google Group to grant access to. Maps to IAM policy member "group:GROUP".
  /// [iamMember] [Pick one] Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group.
  /// [role] [Required] An IAM role ID that should be granted to the user, group, or domain specified in this access entry. The following legacy mappings will be applied: OWNER  roles/bigquery.dataOwner WRITER  roles/bigquery.dataEditor READER  roles/bigquery.dataViewer This field will accept any of the above formats, but will return only the legacy format. For example, if you set this field to "roles/bigquery.dataOwner", it will be returned back as "OWNER".
  /// [routine] [Pick one] A routine from a different dataset to grant access to. Queries executed against that routine will have read access to views/tables/routines in this dataset. Only UDF is supported for now. The role field is not required when this field is set. If that routine is updated by any user, access to the routine needs to be granted again via an update operation.
  /// [specialGroup] [Pick one] A special group to grant access to. Possible values include: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-named IAM members.
  /// [userByEmail] [Pick one] An email address of a user to grant access to. For example: fred@example.com. Maps to IAM policy member "user:EMAIL" or "serviceAccount:EMAIL".
  /// [view] [Pick one] A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation.
  DatasetAccessItemResponse({
    required this.dataset,
    required this.domain,
    required this.groupByEmail,
    required this.iamMember,
    required this.role,
    required this.routine,
    required this.specialGroup,
    required this.userByEmail,
    required this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset.toMap(),
      'domain': domain,
      'groupByEmail': groupByEmail,
      'iamMember': iamMember,
      'role': role,
      'routine': routine.toMap(),
      'specialGroup': specialGroup,
      'userByEmail': userByEmail,
      'view': view.toMap(),
    };
  }

  factory DatasetAccessItemResponse.fromMap(Map<String, dynamic> map) {
    return DatasetAccessItemResponse(
      dataset: DatasetAccessEntryResponse.fromMap(
        (map['dataset'] as Map).cast<String, dynamic>(),
      ),
      domain: map['domain'] as String,
      groupByEmail: map['groupByEmail'] as String,
      iamMember: map['iamMember'] as String,
      role: map['role'] as String,
      routine: RoutineReferenceResponse.fromMap(
        (map['routine'] as Map).cast<String, dynamic>(),
      ),
      specialGroup: map['specialGroup'] as String,
      userByEmail: map['userByEmail'] as String,
      view: TableReferenceResponse.fromMap(
        (map['view'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
