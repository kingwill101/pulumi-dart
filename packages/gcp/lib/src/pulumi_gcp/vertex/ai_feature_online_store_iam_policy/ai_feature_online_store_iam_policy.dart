import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Vertex AI FeatureOnlineStore. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureOnlineStoreIamPolicy`: Authoritative. Sets the IAM policy for the featureonlinestore and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureOnlineStoreIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featureonlinestore are preserved.
/// * `gcp.vertex.AiFeatureOnlineStoreIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featureonlinestore are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureOnlineStoreIamPolicy`: Retrieves the IAM policy for the featureonlinestore
///
/// > **Note:** `gcp.vertex.AiFeatureOnlineStoreIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureOnlineStoreIamBinding` and `gcp.vertex.AiFeatureOnlineStoreIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.vertex.AiFeatureOnlineStoreIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureOnlineStoreIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamPolicy
///
///
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamBinding
///
///
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Vertex AI FeatureOnlineStore
///
/// Three different resources help you manage your IAM policy for Vertex AI FeatureOnlineStore. Each of these resources serves a different use case:
///
/// * `gcp.vertex.AiFeatureOnlineStoreIamPolicy`: Authoritative. Sets the IAM policy for the featureonlinestore and replaces any existing policy already attached.
/// * `gcp.vertex.AiFeatureOnlineStoreIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the featureonlinestore are preserved.
/// * `gcp.vertex.AiFeatureOnlineStoreIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the featureonlinestore are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.vertex.AiFeatureOnlineStoreIamPolicy`: Retrieves the IAM policy for the featureonlinestore
///
/// > **Note:** `gcp.vertex.AiFeatureOnlineStoreIamPolicy` **cannot** be used in conjunction with `gcp.vertex.AiFeatureOnlineStoreIamBinding` and `gcp.vertex.AiFeatureOnlineStoreIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.vertex.AiFeatureOnlineStoreIamBinding` resources **can be** used in conjunction with `gcp.vertex.AiFeatureOnlineStoreIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamPolicy
///
///
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamBinding
///
///
///
/// ## gcp.vertex.AiFeatureOnlineStoreIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{region}}/featureOnlineStores/{{name}}
///
/// * {{project}}/{{region}}/{{name}}
///
/// * {{region}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Vertex AI featureonlinestore IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreIamPolicy:AiFeatureOnlineStoreIamPolicy editor "projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreIamPolicy:AiFeatureOnlineStoreIamPolicy editor "projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreIamPolicy:AiFeatureOnlineStoreIamPolicy editor projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class AiFeatureOnlineStoreIamPolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> featureOnlineStore;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region of feature online store. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> region;

  AiFeatureOnlineStoreIamPolicy(
    String name, {
    AiFeatureOnlineStoreIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureOnlineStoreIamPolicy:AiFeatureOnlineStoreIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.featureOnlineStore = registerOutput<String>('featureOnlineStore');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
