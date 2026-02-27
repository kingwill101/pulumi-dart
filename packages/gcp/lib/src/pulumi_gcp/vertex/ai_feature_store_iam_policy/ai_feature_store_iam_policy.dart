import 'package:pulumi/pulumi.dart';
import 'ai_feature_store_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Vertex AI Featurestore. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureStoreIamPolicy`: Authoritative. Sets the IAM policy for the featurestore and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureStoreIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featurestore are preserved.
/// * `gcp.vertex.AiFeatureStoreIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featurestore are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureStoreIamPolicy`: Retrieves the IAM policy for the featurestore
///
/// > **Note:** `gcp.vertex.AiFeatureStoreIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureStoreIamBinding` and `gcp.vertex.AiFeatureStoreIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.vertex.AiFeatureStoreIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureStoreIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.vertex.AiFeatureStoreIamPolicy
///
///
///
/// ## gcp.vertex.AiFeatureStoreIamBinding
///
///
///
/// ## gcp.vertex.AiFeatureStoreIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Vertex AI Featurestore
///
/// Three different resources help you manage your IAM policy for Vertex AI Featurestore. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureStoreIamPolicy`: Authoritative. Sets the IAM policy for the featurestore and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureStoreIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featurestore are preserved.
/// * `gcp.vertex.AiFeatureStoreIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featurestore are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureStoreIamPolicy`: Retrieves the IAM policy for the featurestore
///
/// > **Note:** `gcp.vertex.AiFeatureStoreIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureStoreIamBinding` and `gcp.vertex.AiFeatureStoreIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.vertex.AiFeatureStoreIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureStoreIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.vertex.AiFeatureStoreIamPolicy
///
///
///
/// ## gcp.vertex.AiFeatureStoreIamBinding
///
///
///
/// ## gcp.vertex.AiFeatureStoreIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/featurestores/{{name}}
///
/// * {{project}}/{{region}}/{{name}}
///
/// * {{region}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Vertex AI featurestore IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreIamPolicy:AiFeatureStoreIamPolicy editor "projects/{{project}}/locations/{{region}}/featurestores/{{featurestore}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreIamPolicy:AiFeatureStoreIamPolicy editor "projects/{{project}}/locations/{{region}}/featurestores/{{featurestore}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStoreIamPolicy:AiFeatureStoreIamPolicy editor projects/{{project}}/locations/{{region}}/featurestores/{{featurestore}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AiFeatureStoreIamPolicy extends CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> featurestore;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The region of the dataset. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final Output<String> region;

  AiFeatureStoreIamPolicy(
    String name, {
    AiFeatureStoreIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStoreIamPolicy:AiFeatureStoreIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.featurestore = registerOutput<String>('featurestore');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
