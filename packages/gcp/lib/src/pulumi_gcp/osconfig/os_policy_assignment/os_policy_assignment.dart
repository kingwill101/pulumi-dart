import 'package:pulumi/pulumi.dart';
import '../os_policy_assignment_instance_filter/os_policy_assignment_instance_filter.dart';
import '../os_policy_assignment_os_policy/os_policy_assignment_os_policy.dart';
import '../os_policy_assignment_rollout/os_policy_assignment_rollout.dart';
import 'os_policy_assignment_args.dart';

/// OS policy assignment is an API resource that is used to apply a set of OS
/// policies to a dynamically targeted group of Compute Engine VM instances. An OS
/// policy is used to define the desired state configuration for a Compute Engine VM
/// instance through a set of configuration resources that provide capabilities such
/// as installing or removing software packages, or executing a script. For more
/// information about the OS policy resource definitions and examples, see
/// [OS policy and OS policy assignment](https://cloud.google.com/compute/docs/os-configuration-management/working-with-os-policies).
///
/// To get more information about OSPolicyAssignment, see:
///
/// *   [API documentation](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments)
/// *   How-to Guides
/// *   [Official Documentation](https://cloud.google.com/compute/docs/os-configuration-management/create-os-policy-assignment)
///
/// ## Example Usage
///
/// ### Os Config Os Policy Assignment Basic
///
///
///
/// ## Import
///
/// OSPolicyAssignment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/osPolicyAssignments/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, OSPolicyAssignment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/osPolicyAssignment:OsPolicyAssignment default projects/{{project}}/locations/{{location}}/osPolicyAssignments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/osPolicyAssignment:OsPolicyAssignment default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/osPolicyAssignment:OsPolicyAssignment default {{location}}/{{name}}
/// ```
class OsPolicyAssignment extends CustomResource {
  /// Output only. Indicates that this revision has been successfully
  /// rolled out in this zone and new VMs will be assigned OS policies from this
  /// revision. For a given OS policy assignment, there is only one revision with
  /// a value of `true` for this field.
  late final Output<bool> baseline;

  /// Output only. Indicates that this revision deletes the OS policy
  /// assignment.
  late final Output<bool> deleted;

  /// OS policy assignment description. Length of the description is limited to 1024 characters.
  late final Output<String?> description;

  /// The etag for this OS policy assignment. If this is provided on
  /// update, it must match the server's etag.
  late final Output<String> etag;

  /// Filter to select VMs. Structure is
  /// documented below.
  late final Output<OsPolicyAssignmentInstanceFilter> instanceFilter;

  /// The location for the resource
  late final Output<String> location;

  /// Resource name.
  late final Output<String> name;

  /// List of OS policies to be applied to the VMs.
  /// Structure is documented below.
  late final Output<List<OsPolicyAssignmentOsPolicy>> osPolicies;

  /// The project for the resource
  late final Output<String> project;

  /// Output only. Indicates that reconciliation is in progress
  /// for the revision. This value is `true` when the `rollout_state` is one of:
  late final Output<bool> reconciling;

  /// Output only. The timestamp that the revision was
  /// created.
  late final Output<String> revisionCreateTime;

  /// Output only. The assignment revision ID A new revision is
  /// committed whenever a rollout is triggered for a OS policy assignment
  late final Output<String> revisionId;

  /// Rollout to deploy the OS policy assignment. A rollout
  /// is triggered in the following situations: 1) OSPolicyAssignment is created.
  /// 2) OSPolicyAssignment is updated and the update contains changes to one of
  /// the following fields: - instance_filter - os_policies 3) OSPolicyAssignment
  /// is deleted. Structure is documented below.
  late final Output<OsPolicyAssignmentRollout> rollout;

  /// Output only. OS policy assignment rollout state
  late final Output<String> rolloutState;

  /// Set to true to skip awaiting rollout during resource creation and update.
  late final Output<bool?> skipAwaitRollout;

  /// Output only. Server generated unique id for the OS policy assignment
  /// resource.
  late final Output<String> uid;

  OsPolicyAssignment(
    String name, {
    OsPolicyAssignmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:osconfig/osPolicyAssignment:OsPolicyAssignment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.baseline = registerOutput<bool>('baseline');
    this.deleted = registerOutput<bool>('deleted');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.instanceFilter =
        registerOutput<OsPolicyAssignmentInstanceFilter>('instanceFilter');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.osPolicies =
        registerOutput<List<OsPolicyAssignmentOsPolicy>>('osPolicies');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.rollout = registerOutput<OsPolicyAssignmentRollout>('rollout');
    this.rolloutState = registerOutput<String>('rolloutState');
    this.skipAwaitRollout = registerOutput<bool?>('skipAwaitRollout');
    this.uid = registerOutput<String>('uid');
  }
}
