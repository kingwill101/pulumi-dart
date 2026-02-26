import 'package:pulumi/pulumi.dart';
import 'os_policy_assignment_args2.dart';
import 'ospolicy_assignment_instance_filter_response2.dart';
import 'ospolicy_assignment_rollout_response2.dart';
import 'ospolicy_response2.dart';

/// Create an OS policy assignment. This method also creates the first revision of the OS policy assignment. This method returns a long running operation (LRO) that contains the rollout details. The rollout can be cancelled by cancelling the LRO. For more information, see [Method: projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/osconfig/rest/v1alpha/projects.locations.osPolicyAssignments.operations/cancel).
class OsPolicyAssignment2 extends CustomResource {
  /// Indicates that this revision has been successfully rolled out in this zone and new VMs will be assigned OS policies from this revision. For a given OS policy assignment, there is only one revision with a value of `true` for this field.
  late final Output<bool> baseline;

  /// Indicates that this revision deletes the OS policy assignment.
  late final Output<bool> deleted;

  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  late final Output<String> description;

  /// The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  late final Output<String> etag;

  /// Filter to select VMs.
  late final Output<OSPolicyAssignmentInstanceFilterResponse2> instanceFilter;
  late final Output<String> location;

  /// Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  late final Output<String> name;

  /// List of OS policies to be applied to the VMs.
  late final Output<List<OSPolicyResponse2>> osPolicies;

  /// Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  late final Output<String> osPolicyAssignmentId;
  late final Output<String> project;

  /// Indicates that reconciliation is in progress for the revision. This value is `true` when the `rollout_state` is one of: * IN_PROGRESS * CANCELLING
  late final Output<bool> reconciling;

  /// The timestamp that the revision was created.
  late final Output<String> revisionCreateTime;

  /// The assignment revision ID A new revision is committed whenever a rollout is triggered for a OS policy assignment
  late final Output<String> revisionId;

  /// Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.
  late final Output<OSPolicyAssignmentRolloutResponse2> rollout;

  /// OS policy assignment rollout state
  late final Output<String> rolloutState;

  /// Server generated unique id for the OS policy assignment resource.
  late final Output<String> uid;

  OsPolicyAssignment2(
    String name, {
    OsPolicyAssignmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:osconfig/v1alpha:OsPolicyAssignment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.baseline = Output.createUnknown<bool>();
    this.deleted = Output.createUnknown<bool>();
    this.description = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.instanceFilter =
        Output.createUnknown<OSPolicyAssignmentInstanceFilterResponse2>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.osPolicies = Output.createUnknown<List<OSPolicyResponse2>>();
    this.osPolicyAssignmentId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.revisionCreateTime = Output.createUnknown<String>();
    this.revisionId = Output.createUnknown<String>();
    this.rollout = Output.createUnknown<OSPolicyAssignmentRolloutResponse2>();
    this.rolloutState = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
  }
}
