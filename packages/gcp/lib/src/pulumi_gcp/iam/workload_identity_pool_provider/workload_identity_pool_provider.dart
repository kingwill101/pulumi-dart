import 'package:pulumi/pulumi.dart' as pulumi;
import '../workload_identity_pool_provider_aws/workload_identity_pool_provider_aws.dart';
import '../workload_identity_pool_provider_oidc/workload_identity_pool_provider_oidc.dart';
import '../workload_identity_pool_provider_saml/workload_identity_pool_provider_saml.dart';
import '../workload_identity_pool_provider_x509/workload_identity_pool_provider_x509.dart';
import 'workload_identity_pool_provider_args.dart';

/// A configuration for an external identity provider.
///
///
/// To get more information about WorkloadIdentityPoolProvider, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools.providers)
/// * How-to Guides
/// * [Managing workload identity providers](https://cloud.google.com/iam/docs/manage-workload-identity-pools-providers#managing_workload_identity_providers)
///
/// ## Example Usage
///
/// ### Iam Workload Identity Pool Provider Aws Basic
///
///
///
/// ### Iam Workload Identity Pool Provider Aws Full
///
///
///
/// ### Iam Workload Identity Pool Provider Github Actions
///
///
///
/// ### Iam Workload Identity Pool Provider Oidc Basic
///
///
///
/// ### Iam Workload Identity Pool Provider Oidc Full
///
///
///
/// ### Iam Workload Identity Pool Provider Saml Basic
///
///
///
/// ### Iam Workload Identity Pool Provider Saml Full
///
///
///
/// ### Iam Workload Identity Pool Provider Oidc Upload Key
///
///
///
/// ### Iam Workload Identity Pool Provider X509 Basic
///
///
///
/// ### Iam Workload Identity Pool Provider X509 Full
///
///
///
///
/// ## Import
///
/// WorkloadIdentityPoolProvider can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/providers/{{workload_identity_pool_provider_id}}`
///
/// * `{{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_provider_id}}`
///
/// * `{{workload_identity_pool_id}}/{{workload_identity_pool_provider_id}}`
///
/// When using the `pulumi import` command, WorkloadIdentityPoolProvider can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolProvider:WorkloadIdentityPoolProvider default projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/providers/{{workload_identity_pool_provider_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolProvider:WorkloadIdentityPoolProvider default {{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_provider_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolProvider:WorkloadIdentityPoolProvider default {{workload_identity_pool_id}}/{{workload_identity_pool_provider_id}}
/// ```
class WorkloadIdentityPoolProvider extends pulumi.CustomResource {
  /// [A Common Expression Language](https://opensource.google/projects/cel) expression, in
  /// plain text, to restrict what otherwise valid authentication credentials issued by the
  /// provider should not be accepted.
  /// The expression must output a boolean representing whether to allow the federation.
  /// The following keywords may be referenced in the expressions:
  late final pulumi.Output<String?> attributeCondition;

  /// Maps attributes from authentication credentials issued by an external identity provider
  /// to Google Cloud attributes, such as `subject` and `segment`.
  /// Each key must be a string specifying the Google Cloud IAM attribute to map to.
  /// The following keys are supported:
  /// * `google.subject`: The principal IAM is authenticating. You can reference this value
  /// in IAM bindings. This is also the subject that appears in Cloud Logging logs.
  /// Cannot exceed 127 characters.
  /// * `google.groups`: Groups the external identity belongs to. You can grant groups
  /// access to resources using an IAM `principalSet` binding; access applies to all
  /// members of the group.
  /// You can also provide custom attributes by specifying `attribute.{custom_attribute}`,
  /// where `{custom_attribute}` is the name of the custom attribute to be mapped. You can
  /// define a maximum of 50 custom attributes. The maximum length of a mapped attribute key
  /// is 100 characters, and the key may only contain the characters [a-z0-9_].
  /// You can reference these attributes in IAM policies to define fine-grained access for a
  /// workload to Google Cloud resources. For example:
  /// * `google.subject`:
  /// `principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}`
  /// * `google.groups`:
  /// `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}`
  /// * `attribute.{custom_attribute}`:
  /// `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}`
  /// Each value must be a [Common Expression Language](https://opensource.google/projects/cel)
  /// function that maps an identity provider credential to the normalized attribute specified
  /// by the corresponding map key.
  /// You can use the `assertion` keyword in the expression to access a JSON representation of
  /// the authentication credential issued by the provider.
  /// The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
  /// the total size of all mapped attributes must not exceed 8KB.
  /// For AWS providers, the following rules apply:
  /// - If no attribute mapping is defined, the following default mapping applies:
  /// ```
  /// {
  /// "google.subject":"assertion.arn",
  /// "attribute.aws_role":
  /// "assertion.arn.contains('assumed-role')"
  /// " ? assertion.arn.extract('{account_arn}assumed-role/')"
  /// "   + 'assumed-role/'"
  /// "   + assertion.arn.extract('assumed-role/{role_name}/')"
  /// " : assertion.arn",
  /// }
  /// ```
  /// - If any custom attribute mappings are defined, they must include a mapping to the
  /// `google.subject` attribute.
  /// For OIDC providers, the following rules apply:
  /// - Custom attribute mappings must be defined, and must include a mapping to the
  /// `google.subject` attribute. For example, the following maps the `sub` claim of the
  /// incoming credential to the `subject` attribute on a Google token.
  /// ```
  /// {"google.subject": "assertion.sub"}
  /// ```
  late final pulumi.Output<Map<String, String>?> attributeMapping;

  /// An Amazon Web Services identity provider. Not compatible with the property oidc or saml.
  /// Structure is documented below.
  late final pulumi.Output<WorkloadIdentityPoolProviderAws?> aws;

  /// A description for the provider. Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;

  /// Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
  /// However, existing tokens still grant access.
  late final pulumi.Output<bool?> disabled;

  /// A display name for the provider. Cannot exceed 32 characters.
  late final pulumi.Output<String?> displayName;

  /// The resource name of the provider as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/providers/{workload_identity_pool_provider_id}`.
  late final pulumi.Output<String> name;

  /// An OpenId Connect 1.0 identity provider. Not compatible with the property aws or saml.
  /// Structure is documented below.
  late final pulumi.Output<WorkloadIdentityPoolProviderOidc?> oidc;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// An SAML 2.0 identity provider. Not compatible with the property oidc or aws.
  /// Structure is documented below.
  late final pulumi.Output<WorkloadIdentityPoolProviderSaml?> saml;

  /// The state of the provider.
  /// * STATE_UNSPECIFIED: State unspecified.
  /// * ACTIVE: The provider is active, and may be used to validate authentication credentials.
  /// * DELETED: The provider is soft-deleted. Soft-deleted providers are permanently deleted
  /// after approximately 30 days. You can restore a soft-deleted provider using
  /// UndeleteWorkloadIdentityPoolProvider. You cannot reuse the ID of a soft-deleted provider
  /// until it is permanently deleted.
  late final pulumi.Output<String> state;

  /// The ID used for the pool, which is the final component of the pool resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workloadIdentityPoolId;

  /// The ID for the provider, which becomes the final component of the resource name. This
  /// value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workloadIdentityPoolProviderId;

  /// An X.509-type identity provider represents a CA. It is trusted to assert a
  /// client identity if the client has a certificate that chains up to this CA.
  /// Structure is documented below.
  late final pulumi.Output<WorkloadIdentityPoolProviderX509?> x509;

  WorkloadIdentityPoolProvider(
    String name, {
    WorkloadIdentityPoolProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workloadIdentityPoolProvider:WorkloadIdentityPoolProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attributeCondition = registerOutput<String?>('attributeCondition');
    this.attributeMapping =
        registerOutput<Map<String, String>?>('attributeMapping');
    this.aws = registerOutput<WorkloadIdentityPoolProviderAws?>('aws');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.oidc = registerOutput<WorkloadIdentityPoolProviderOidc?>('oidc');
    this.project = registerOutput<String>('project');
    this.saml = registerOutput<WorkloadIdentityPoolProviderSaml?>('saml');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId =
        registerOutput<String>('workloadIdentityPoolId');
    this.workloadIdentityPoolProviderId =
        registerOutput<String>('workloadIdentityPoolProviderId');
    this.x509 = registerOutput<WorkloadIdentityPoolProviderX509?>('x509');
  }
}
