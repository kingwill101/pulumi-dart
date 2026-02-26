// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../dataset_access_authorized_dataset/dataset_access_authorized_dataset.dart';
import '../dataset_access_condition/dataset_access_condition.dart';
import '../dataset_access_routine/dataset_access_routine.dart';
import '../dataset_access_view/dataset_access_view.dart';

/// The set of arguments for DatasetAccess.
class DatasetAccessArgs {
  /// Grants all resources of particular types in a particular dataset read access to the current dataset.
  /// Structure is documented below.
  final Input<DatasetAccessAuthorizedDataset>? authorizedDataset;

  /// Condition for the binding. If CEL expression in this field is true, this
  /// access binding will be considered.
  /// Structure is documented below.
  final Input<DatasetAccessCondition>? condition;

  /// A unique ID for this dataset, without the project name. The ID
  /// must contain only letters (a-z, A-Z), numbers (0-9), or
  /// underscores (_). The maximum length is 1,024 characters.
  final Input<String> datasetId;

  /// A domain to grant access to. Any users signed in with the
  /// domain specified will be granted the specified access
  final Input<String>? domain;

  /// An email address of a Google Group to grant access to.
  final Input<String>? groupByEmail;

  /// Some other type of member that appears in the IAM Policy but isn't a user,
  /// group, domain, or special group. For example: `allUsers`
  final Input<String>? iamMember;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Describes the rights granted to the user specified by the other
  /// member of the access object. Basic, predefined, and custom roles are
  /// supported. Predefined roles that have equivalent basic roles are
  /// swapped by the API to their basic counterparts, and will show a diff
  /// post-create. See
  /// [official docs](https://cloud.google.com/bigquery/docs/access-control).
  final Input<String>? role;

  /// A routine from a different dataset to grant access to. Queries
  /// executed against that routine will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that routine is updated by any user, access to the routine
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  final Input<DatasetAccessRoutine>? routine;

  /// A special group to grant access to. Possible values include:
  /// * `projectOwners`: Owners of the enclosing project.
  /// * `projectReaders`: Readers of the enclosing project.
  /// * `projectWriters`: Writers of the enclosing project.
  /// * `allAuthenticatedUsers`: All authenticated BigQuery users.
  final Input<String>? specialGroup;

  /// An email address of a user to grant access to. For example:
  /// fred@example.com
  final Input<String>? userByEmail;

  /// A view from a different dataset to grant access to. Queries
  /// executed against that view will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that view is updated by any user, access to the view
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  final Input<DatasetAccessView>? view;

  DatasetAccessArgs({
    this.authorizedDataset,
    this.condition,
    required this.datasetId,
    this.domain,
    this.groupByEmail,
    this.iamMember,
    this.project,
    this.role,
    this.routine,
    this.specialGroup,
    this.userByEmail,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizedDatasetValue = authorizedDataset;
    if (authorizedDatasetValue != null) {
      map['authorizedDataset'] = Input.mapOptionalInputValue<
              DatasetAccessAuthorizedDataset, Map<String, dynamic>>(
          authorizedDatasetValue, (value) => value.toMap());
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<DatasetAccessCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['datasetId'] = datasetId;
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
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    final routineValue = routine;
    if (routineValue != null) {
      map['routine'] = Input.mapOptionalInputValue<DatasetAccessRoutine,
          Map<String, dynamic>>(routineValue, (value) => value.toMap());
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
      map['view'] =
          Input.mapOptionalInputValue<DatasetAccessView, Map<String, dynamic>>(
              viewValue, (value) => value.toMap());
    }
    return map;
  }

  factory DatasetAccessArgs.fromMap(Map<String, dynamic> map) {
    return DatasetAccessArgs(
      authorizedDataset: Input.asOptionalInput<DatasetAccessAuthorizedDataset>(
          map['authorizedDataset']),
      condition:
          Input.asOptionalInput<DatasetAccessCondition>(map['condition']),
      datasetId: Input.asInput<String>(map['datasetId']),
      domain: Input.asOptionalInput<String>(map['domain']),
      groupByEmail: Input.asOptionalInput<String>(map['groupByEmail']),
      iamMember: Input.asOptionalInput<String>(map['iamMember']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asOptionalInput<String>(map['role']),
      routine: Input.asOptionalInput<DatasetAccessRoutine>(map['routine']),
      specialGroup: Input.asOptionalInput<String>(map['specialGroup']),
      userByEmail: Input.asOptionalInput<String>(map['userByEmail']),
      view: Input.asOptionalInput<DatasetAccessView>(map['view']),
    );
  }
}
