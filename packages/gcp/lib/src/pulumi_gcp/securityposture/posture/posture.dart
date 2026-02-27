import 'package:pulumi/pulumi.dart' as pulumi;
import '../posture_policy_set/posture_policy_set.dart';
import 'posture_args.dart';

/// A Posture represents a collection of policy set including its name, state, description
/// and policy sets. A policy set includes set of policies along with their definition.
/// A posture can be created at the organization level.
/// Every update to a deployed posture creates a new posture revision with an updated revision_id.
///
///
/// To get more information about Posture, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/securityposture/rest/v1/Posture)
/// * How-to Guides
/// * [Create and deploy a posture](https://cloud.google.com/security-command-center/docs/how-to-use-security-posture)
///
/// ## Example Usage
///
/// ### Securityposture Posture Basic
///
///
///
///
/// ## Import
///
/// Posture can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/postures/{{posture_id}}`
///
/// When using the `pulumi import` command, Posture can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securityposture/posture:Posture default {{parent}}/locations/{{location}}/postures/{{posture_id}}
/// ```
class Posture extends pulumi.CustomResource {
  /// Time the Posture was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Description of the posture.
  late final pulumi.Output<String?> description;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String> etag;

  /// Location of the resource, eg: global.
  late final pulumi.Output<String> location;

  /// Name of the posture.
  late final pulumi.Output<String> name;

  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  late final pulumi.Output<String> parent;

  /// List of policy sets for the posture.
  /// Structure is documented below.
  late final pulumi.Output<List<PosturePolicySet>> policySets;

  /// Id of the posture. It is an immutable field.
  late final pulumi.Output<String> postureId;

  /// If set, there are currently changes in flight to the posture.
  late final pulumi.Output<bool> reconciling;

  /// Revision_id of the posture.
  late final pulumi.Output<String> revisionId;

  /// State of the posture. Update to state field should not be triggered along with
  /// with other field updates.
  /// Possible values are: `DEPRECATED`, `DRAFT`, `ACTIVE`.
  late final pulumi.Output<String> state;

  /// Time the Posture was updated in UTC.
  late final pulumi.Output<String> updateTime;

  Posture(
    String name, {
    PostureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securityposture/posture:Posture',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.policySets = registerOutput<List<PosturePolicySet>>('policySets');
    this.postureId = registerOutput<String>('postureId');
    this.reconciling = registerOutput<bool>('reconciling');
    this.revisionId = registerOutput<String>('revisionId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
