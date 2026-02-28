// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_access_entry.dart';
import 'routine_reference.dart';
import 'table_reference.dart';

class DatasetAccessItem {
  /// [Pick one] A grant authorizing all resources of a particular type in a particular dataset access to this dataset. Only views are supported for now. The role field is not required when this field is set. If that dataset is deleted and re-created, its access needs to be granted again via an update operation.
  final DatasetAccessEntry? dataset;

  /// [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". Maps to IAM policy member "domain:DOMAIN".
  final String? domain;

  /// [Pick one] An email address of a Google Group to grant access to. Maps to IAM policy member "group:GROUP".
  final String? groupByEmail;

  /// [Pick one] Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group.
  final String? iamMember;

  /// [Required] An IAM role ID that should be granted to the user, group, or domain specified in this access entry. The following legacy mappings will be applied: OWNER  roles/bigquery.dataOwner WRITER  roles/bigquery.dataEditor READER  roles/bigquery.dataViewer This field will accept any of the above formats, but will return only the legacy format. For example, if you set this field to "roles/bigquery.dataOwner", it will be returned back as "OWNER".
  final String? role;

  /// [Pick one] A routine from a different dataset to grant access to. Queries executed against that routine will have read access to views/tables/routines in this dataset. Only UDF is supported for now. The role field is not required when this field is set. If that routine is updated by any user, access to the routine needs to be granted again via an update operation.
  final RoutineReference? routine;

  /// [Pick one] A special group to grant access to. Possible values include: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-named IAM members.
  final String? specialGroup;

  /// [Pick one] An email address of a user to grant access to. For example: fred@example.com. Maps to IAM policy member "user:EMAIL" or "serviceAccount:EMAIL".
  final String? userByEmail;

  /// [Pick one] A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation.
  final TableReference? view;

  /// Creates a new [DatasetAccessItem].
  /// [dataset] [Pick one] A grant authorizing all resources of a particular type in a particular dataset access to this dataset. Only views are supported for now. The role field is not required when this field is set. If that dataset is deleted and re-created, its access needs to be granted again via an update operation.
  /// [domain] [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: "example.com". Maps to IAM policy member "domain:DOMAIN".
  /// [groupByEmail] [Pick one] An email address of a Google Group to grant access to. Maps to IAM policy member "group:GROUP".
  /// [iamMember] [Pick one] Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group.
  /// [role] [Required] An IAM role ID that should be granted to the user, group, or domain specified in this access entry. The following legacy mappings will be applied: OWNER  roles/bigquery.dataOwner WRITER  roles/bigquery.dataEditor READER  roles/bigquery.dataViewer This field will accept any of the above formats, but will return only the legacy format. For example, if you set this field to "roles/bigquery.dataOwner", it will be returned back as "OWNER".
  /// [routine] [Pick one] A routine from a different dataset to grant access to. Queries executed against that routine will have read access to views/tables/routines in this dataset. Only UDF is supported for now. The role field is not required when this field is set. If that routine is updated by any user, access to the routine needs to be granted again via an update operation.
  /// [specialGroup] [Pick one] A special group to grant access to. Possible values include: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-named IAM members.
  /// [userByEmail] [Pick one] An email address of a user to grant access to. For example: fred@example.com. Maps to IAM policy member "user:EMAIL" or "serviceAccount:EMAIL".
  /// [view] [Pick one] A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation.
  DatasetAccessItem({
    this.dataset,
    this.domain,
    this.groupByEmail,
    this.iamMember,
    this.role,
    this.routine,
    this.specialGroup,
    this.userByEmail,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetValue = dataset;
    if (datasetValue != null) {
      map['dataset'] = datasetValue.toMap();
    }
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final groupByEmailValue = groupByEmail;
    if (groupByEmailValue != null) {
      map['groupByEmail'] = groupByEmailValue;
    }
    final iamMemberValue = iamMember;
    if (iamMemberValue != null) {
      map['iamMember'] = iamMemberValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    final routineValue = routine;
    if (routineValue != null) {
      map['routine'] = routineValue.toMap();
    }
    final specialGroupValue = specialGroup;
    if (specialGroupValue != null) {
      map['specialGroup'] = specialGroupValue;
    }
    final userByEmailValue = userByEmail;
    if (userByEmailValue != null) {
      map['userByEmail'] = userByEmailValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue.toMap();
    }
    return map;
  }

  factory DatasetAccessItem.fromMap(Map<String, dynamic> map) {
    return DatasetAccessItem(
      dataset: map['dataset'] == null
          ? null
          : DatasetAccessEntry.fromMap(
              (map['dataset'] as Map).cast<String, dynamic>()),
      domain: map['domain'] == null ? null : map['domain'] as String,
      groupByEmail:
          map['groupByEmail'] == null ? null : map['groupByEmail'] as String,
      iamMember: map['iamMember'] == null ? null : map['iamMember'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      routine: map['routine'] == null
          ? null
          : RoutineReference.fromMap(
              (map['routine'] as Map).cast<String, dynamic>()),
      specialGroup:
          map['specialGroup'] == null ? null : map['specialGroup'] as String,
      userByEmail:
          map['userByEmail'] == null ? null : map['userByEmail'] as String,
      view: map['view'] == null
          ? null
          : TableReference.fromMap(
              (map['view'] as Map).cast<String, dynamic>()),
    );
  }
}
