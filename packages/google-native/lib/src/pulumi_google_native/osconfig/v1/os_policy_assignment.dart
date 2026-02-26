import 'package:pulumi/pulumi.dart';
import 'os_policy_assignment_args.dart';
import 'ospolicy_assignment_instance_filter_response.dart';
import 'ospolicy_assignment_rollout_response.dart';
import 'ospolicy_response.dart';

/// Create an OS policy assignment. This method also creates the first revision of the OS policy assignment. This method returns a long running operation (LRO) that contains the rollout details. The rollout can be cancelled by cancelling the LRO. For more information, see [Method: projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).
class OsPolicyAssignment extends CustomResource {
  /// Indicates that this revision has been successfully rolled out in this zone and new VMs will be assigned OS policies from this revision. For a given OS policy assignment, there is only one revision with a value of `true` for this field.
  late final Output<bool> baseline;

  /// Indicates that this revision deletes the OS policy assignment.
  late final Output<bool> deleted;

  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  late final Output<String> description;

  /// The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.
  late final Output<String> etag;

  /// Filter to select VMs.
  late final Output<OSPolicyAssignmentInstanceFilterResponse> instanceFilter;
  late final Output<String> location;

  /// Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.
  late final Output<String> name;

  /// List of OS policies to be applied to the VMs.
  late final Output<List<OSPolicyResponse>> osPolicies;

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
  late final Output<OSPolicyAssignmentRolloutResponse> rollout;

  /// OS policy assignment rollout state
  late final Output<String> rolloutState;

  /// Server generated unique id for the OS policy assignment resource.
  late final Output<String> uid;

  OsPolicyAssignment(
    String name, {
    OsPolicyAssignmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:osconfig/v1:OsPolicyAssignment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.baseline = registerOutput<bool>('baseline');
    this.deleted = registerOutput<bool>('deleted');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.instanceFilter =
        registerOutput<OSPolicyAssignmentInstanceFilterResponse>(
            'instanceFilter');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.osPolicies = registerOutput<List<OSPolicyResponse>>('osPolicies');
    this.osPolicyAssignmentId = registerOutput<String>('osPolicyAssignmentId');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.rollout = registerOutput<OSPolicyAssignmentRolloutResponse>('rollout');
    this.rolloutState = registerOutput<String>('rolloutState');
    this.uid = registerOutput<String>('uid');
  }
}
