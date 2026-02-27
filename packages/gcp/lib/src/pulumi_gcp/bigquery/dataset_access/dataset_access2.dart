import 'package:pulumi/pulumi.dart';
import '../dataset_access_authorized_dataset/dataset_access_authorized_dataset.dart';
import '../dataset_access_condition/dataset_access_condition.dart';
import '../dataset_access_routine/dataset_access_routine.dart';
import '../dataset_access_view/dataset_access_view.dart';
import 'dataset_access_args.dart';

/// ## Example Usage
///
/// ### Bigquery Dataset Access Basic User
///
///
///
/// ### Bigquery Dataset Access View
///
///
///
/// ### Bigquery Dataset Access Authorized Dataset
///
///
///
/// ### Bigquery Dataset Access Authorized Routine
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class DatasetAccess2 extends CustomResource {
  /// If true, represents that that the iam_member in the config was translated to a different member type by the API, and is stored in state as a different member type
  late final Output<bool> apiUpdatedMember;

  /// Grants all resources of particular types in a particular dataset read access to the current dataset.
  /// Structure is documented below.
  late final Output<DatasetAccessAuthorizedDataset?> authorizedDataset;

  /// Condition for the binding. If CEL expression in this field is true, this
  /// access binding will be considered.
  /// Structure is documented below.
  late final Output<DatasetAccessCondition?> condition;

  /// A unique ID for this dataset, without the project name. The ID
  /// must contain only letters (a-z, A-Z), numbers (0-9), or
  /// underscores (_). The maximum length is 1,024 characters.
  late final Output<String> datasetId;

  /// A domain to grant access to. Any users signed in with the
  /// domain specified will be granted the specified access
  late final Output<String?> domain;

  /// An email address of a Google Group to grant access to.
  late final Output<String?> groupByEmail;

  /// Some other type of member that appears in the IAM Policy but isn't a user,
  /// group, domain, or special group. For example: `allUsers`
  late final Output<String?> iamMember;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Describes the rights granted to the user specified by the other
  /// member of the access object. Basic, predefined, and custom roles are
  /// supported. Predefined roles that have equivalent basic roles are
  /// swapped by the API to their basic counterparts, and will show a diff
  /// post-create. See
  /// [official docs](https://cloud.google.com/bigquery/docs/access-control).
  late final Output<String?> role;

  /// A routine from a different dataset to grant access to. Queries
  /// executed against that routine will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that routine is updated by any user, access to the routine
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  late final Output<DatasetAccessRoutine?> routine;

  /// A special group to grant access to. Possible values include:
  /// * `projectOwners`: Owners of the enclosing project.
  /// * `projectReaders`: Readers of the enclosing project.
  /// * `projectWriters`: Writers of the enclosing project.
  /// * `allAuthenticatedUsers`: All authenticated BigQuery users.
  late final Output<String?> specialGroup;

  /// An email address of a user to grant access to. For example:
  /// fred@example.com
  late final Output<String?> userByEmail;

  /// A view from a different dataset to grant access to. Queries
  /// executed against that view will have read access to tables in
  /// this dataset. The role field is not required when this field is
  /// set. If that view is updated by any user, access to the view
  /// needs to be granted again via an update operation.
  /// Structure is documented below.
  late final Output<DatasetAccessView?> view;

  DatasetAccess2(
    String name, {
    DatasetAccessArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/datasetAccess:DatasetAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiUpdatedMember = registerOutput<bool>('apiUpdatedMember');
    this.authorizedDataset =
        registerOutput<DatasetAccessAuthorizedDataset?>('authorizedDataset');
    this.condition = registerOutput<DatasetAccessCondition?>('condition');
    this.datasetId = registerOutput<String>('datasetId');
    this.domain = registerOutput<String?>('domain');
    this.groupByEmail = registerOutput<String?>('groupByEmail');
    this.iamMember = registerOutput<String?>('iamMember');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String?>('role');
    this.routine = registerOutput<DatasetAccessRoutine?>('routine');
    this.specialGroup = registerOutput<String?>('specialGroup');
    this.userByEmail = registerOutput<String?>('userByEmail');
    this.view = registerOutput<DatasetAccessView?>('view');
  }
}
