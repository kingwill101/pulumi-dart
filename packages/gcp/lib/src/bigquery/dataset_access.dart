// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_access_condition.dart';
import 'dataset_access_dataset.dart';
import 'dataset_access_routine.dart';
import 'dataset_access_view.dart';

class DatasetAccess {
  /// Condition for the binding. If CEL expression in this field is true, this
  /// access binding will be considered.
  /// Structure is documented below.
  final DatasetAccessCondition? condition;

  /// Grants all resources of particular types in a particular dataset read access to the current dataset.
  /// Structure is documented below.
  final DatasetAccessDataset? dataset;

  /// A domain to grant access to. Any users signed in with the
  /// domain specified will be granted the specified access
  final String? domain;

  /// An email address of a Google Group to grant access to.
  final String? groupByEmail;

  /// Some other type of member that appears in the IAM Policy but isn't a user,
  /// group, domain, or special group. For example: `allUsers`
  final String? iamMember;

  /// Describes the rights granted to the user specified by the other
  /// member of the access object. Basic, predefined, and custom roles
  /// are supported. Predefined roles that have equivalent basic roles
  /// are swapped by the API to their basic counterparts. See
  /// [official docs](https://cloud.google.com/bigquery/docs/access-control).
  final String? role;

  /// A routine from a different dataset to grant access to. Queries
  /// executed against that routine will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that routine is updated by any user, access to the routine
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  final DatasetAccessRoutine? routine;

  /// A special group to grant access to. Possible values include:
  /// * `projectOwners`: Owners of the enclosing project.
  /// * `projectReaders`: Readers of the enclosing project.
  /// * `projectWriters`: Writers of the enclosing project.
  /// * `allAuthenticatedUsers`: All authenticated BigQuery users.
  final String? specialGroup;

  /// An email address of a user to grant access to. For example:
  /// fred@example.com
  final String? userByEmail;

  /// A view from a different dataset to grant access to. Queries
  /// executed against that view will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that view is updated by any user, access to the view
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  final DatasetAccessView? view;

  /// Creates a new [DatasetAccess].
  /// [condition] Condition for the binding. If CEL expression in this field is true, this
  /// [dataset] Grants all resources of particular types in a particular dataset read access to the current dataset.
  /// [domain] A domain to grant access to. Any users signed in with the
  /// [groupByEmail] An email address of a Google Group to grant access to.
  /// [iamMember] Some other type of member that appears in the IAM Policy but isn't a user,
  /// [role] Describes the rights granted to the user specified by the other
  /// [routine] A routine from a different dataset to grant access to. Queries
  /// [specialGroup] A special group to grant access to. Possible values include:
  /// [userByEmail] An email address of a user to grant access to. For example:
  /// [view] A view from a different dataset to grant access to. Queries
  DatasetAccess({
    this.condition,
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
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue.toMap();
    }
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

  factory DatasetAccess.fromMap(Map<String, dynamic> map) {
    return DatasetAccess(
      condition: map['condition'] == null
          ? null
          : DatasetAccessCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      dataset: map['dataset'] == null
          ? null
          : DatasetAccessDataset.fromMap(
              (map['dataset'] as Map).cast<String, dynamic>()),
      domain: map['domain'] == null ? null : map['domain'] as String,
      groupByEmail:
          map['groupByEmail'] == null ? null : map['groupByEmail'] as String,
      iamMember: map['iamMember'] == null ? null : map['iamMember'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      routine: map['routine'] == null
          ? null
          : DatasetAccessRoutine.fromMap(
              (map['routine'] as Map).cast<String, dynamic>()),
      specialGroup:
          map['specialGroup'] == null ? null : map['specialGroup'] as String,
      userByEmail:
          map['userByEmail'] == null ? null : map['userByEmail'] as String,
      view: map['view'] == null
          ? null
          : DatasetAccessView.fromMap(
              (map['view'] as Map).cast<String, dynamic>()),
    );
  }
}
