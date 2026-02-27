import 'package:pulumi/pulumi.dart' as pulumi;
import '../principal_access_boundary_policy_details/principal_access_boundary_policy_details.dart';
import 'principal_access_boundary_policy_args.dart';

/// ## Example Usage
///
/// ### Iam Principal Access Boundary Policy
///
///
///
/// ### Iam Organizations Policy Binding
///
///
///
///
/// ## Import
///
/// PrincipalAccessBoundaryPolicy can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/principalAccessBoundaryPolicies/{{principal_access_boundary_policy_id}}`
///
/// * `{{organization}}/{{location}}/{{principal_access_boundary_policy_id}}`
///
/// When using the `pulumi import` command, PrincipalAccessBoundaryPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/principalAccessBoundaryPolicy:PrincipalAccessBoundaryPolicy default organizations/{{organization}}/locations/{{location}}/principalAccessBoundaryPolicies/{{principal_access_boundary_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/principalAccessBoundaryPolicy:PrincipalAccessBoundaryPolicy default {{organization}}/{{location}}/{{principal_access_boundary_policy_id}}
/// ```
class PrincipalAccessBoundaryPolicy extends pulumi.CustomResource {
  /// User defined annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Output only. The time when the principal access boundary policy was created.
  late final pulumi.Output<String> createTime;

  /// Principal access boundary policy details
  /// Structure is documented below.
  late final pulumi.Output<PrincipalAccessBoundaryPolicyDetails> details;

  /// The description of the principal access boundary policy. Must be less than or equal to 63 characters.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// The etag for the principal access boundary. If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;

  /// The location the principal access boundary policy is in.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the principal access boundary policy.  The following format is supported:
  /// `organizations/{organization_id}/locations/{location}/principalAccessBoundaryPolicies/{policy_id}`
  late final pulumi.Output<String> name;

  /// The parent organization of the principal access boundary policy.
  late final pulumi.Output<String> organization;

  /// The ID to use to create the principal access boundary policy.
  /// This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, hyphens, or dots. Pattern, /a-z{2,62}/.
  late final pulumi.Output<String> principalAccessBoundaryPolicyId;

  /// Output only. The globally unique ID of the principal access boundary policy.
  late final pulumi.Output<String> uid;

  /// Output only. The time when the principal access boundary policy was most recently updated.
  late final pulumi.Output<String> updateTime;

  PrincipalAccessBoundaryPolicy(
    String name, {
    PrincipalAccessBoundaryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/principalAccessBoundaryPolicy:PrincipalAccessBoundaryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.details =
        registerOutput<PrincipalAccessBoundaryPolicyDetails>('details');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.principalAccessBoundaryPolicyId =
        registerOutput<String>('principalAccessBoundaryPolicyId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
