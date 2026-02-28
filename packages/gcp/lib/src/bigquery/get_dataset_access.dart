// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_access_condition.dart';
import 'get_dataset_access_dataset.dart';
import 'get_dataset_access_routine.dart';
import 'get_dataset_access_view.dart';

class GetDatasetAccess {
  /// Condition for the binding. If CEL expression in this field is true, this
  /// access binding will be considered.
  final List<GetDatasetAccessCondition> conditions;

  /// Grants all resources of particular types in a particular dataset read access to the current dataset.
  final List<GetDatasetAccessDataset> datasets;

  /// A domain to grant access to. Any users signed in with the
  /// domain specified will be granted the specified access
  final String domain;

  /// An email address of a Google Group to grant access to.
  final String groupByEmail;

  /// Some other type of member that appears in the IAM Policy but isn't a user,
  /// group, domain, or special group. For example: 'allUsers'
  final String iamMember;

  /// Describes the rights granted to the user specified by the other
  /// member of the access object. Basic, predefined, and custom roles
  /// are supported. Predefined roles that have equivalent basic roles
  /// are swapped by the API to their basic counterparts. See
  /// [official docs](https://cloud.google.com/bigquery/docs/access-control).
  final String role;

  /// A routine from a different dataset to grant access to. Queries
  /// executed against that routine will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that routine is updated by any user, access to the routine
  /// needs to be granted again via an update operation.
  final List<GetDatasetAccessRoutine> routines;

  /// A special group to grant access to. Possible values include:
  /// * 'projectOwners': Owners of the enclosing project.
  /// * 'projectReaders': Readers of the enclosing project.
  /// * 'projectWriters': Writers of the enclosing project.
  /// * 'allAuthenticatedUsers': All authenticated BigQuery users.
  final String specialGroup;

  /// An email address of a user to grant access to. For example:
  /// fred@example.com
  final String userByEmail;

  /// A view from a different dataset to grant access to. Queries
  /// executed against that view will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that view is updated by any user, access to the view
  /// needs to be granted again via an update operation.
  final List<GetDatasetAccessView> views;

  /// Creates a new [GetDatasetAccess].
  /// [conditions] Condition for the binding. If CEL expression in this field is true, this
  /// [datasets] Grants all resources of particular types in a particular dataset read access to the current dataset.
  /// [domain] A domain to grant access to. Any users signed in with the
  /// [groupByEmail] An email address of a Google Group to grant access to.
  /// [iamMember] Some other type of member that appears in the IAM Policy but isn't a user,
  /// [role] Describes the rights granted to the user specified by the other
  /// [routines] A routine from a different dataset to grant access to. Queries
  /// [specialGroup] A special group to grant access to. Possible values include:
  /// [userByEmail] An email address of a user to grant access to. For example:
  /// [views] A view from a different dataset to grant access to. Queries
  GetDatasetAccess({
    required this.conditions,
    required this.datasets,
    required this.domain,
    required this.groupByEmail,
    required this.iamMember,
    required this.role,
    required this.routines,
    required this.specialGroup,
    required this.userByEmail,
    required this.views,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = pulumi.Input.encodeList<GetDatasetAccessCondition,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['datasets'] =
        pulumi.Input.encodeList<GetDatasetAccessDataset, Map<String, dynamic>>(
            datasets, (value) => value.toMap());
    map['domain'] = domain;
    map['groupByEmail'] = groupByEmail;
    map['iamMember'] = iamMember;
    map['role'] = role;
    map['routines'] =
        pulumi.Input.encodeList<GetDatasetAccessRoutine, Map<String, dynamic>>(
            routines, (value) => value.toMap());
    map['specialGroup'] = specialGroup;
    map['userByEmail'] = userByEmail;
    map['views'] =
        pulumi.Input.encodeList<GetDatasetAccessView, Map<String, dynamic>>(
            views, (value) => value.toMap());
    return map;
  }

  factory GetDatasetAccess.fromMap(Map<String, dynamic> map) {
    return GetDatasetAccess(
      conditions: pulumi.Input.decodeList<GetDatasetAccessCondition>(
          map['conditions'],
          (value) => GetDatasetAccessCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
      datasets: pulumi.Input.decodeList<GetDatasetAccessDataset>(
          map['datasets'],
          (value) => GetDatasetAccessDataset.fromMap(
              (value as Map).cast<String, dynamic>())),
      domain: map['domain'] as String,
      groupByEmail: map['groupByEmail'] as String,
      iamMember: map['iamMember'] as String,
      role: map['role'] as String,
      routines: pulumi.Input.decodeList<GetDatasetAccessRoutine>(
          map['routines'],
          (value) => GetDatasetAccessRoutine.fromMap(
              (value as Map).cast<String, dynamic>())),
      specialGroup: map['specialGroup'] as String,
      userByEmail: map['userByEmail'] as String,
      views: pulumi.Input.decodeList<GetDatasetAccessView>(
          map['views'],
          (value) => GetDatasetAccessView.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
