import 'package:pulumi/pulumi.dart';
import '../workforce_pool_provider_extended_attributes_oauth2_client/workforce_pool_provider_extended_attributes_oauth2_client.dart';
import '../workforce_pool_provider_extra_attributes_oauth2_client/workforce_pool_provider_extra_attributes_oauth2_client.dart';
import '../workforce_pool_provider_oidc/workforce_pool_provider_oidc.dart';
import '../workforce_pool_provider_saml/workforce_pool_provider_saml.dart';
import 'workforce_pool_provider_args.dart';

/// A configuration for an external identity provider.
///
///
/// To get more information about WorkforcePoolProvider, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers)
/// * How-to Guides
/// * [Configure a provider within the workforce pool](https://cloud.google.com/iam/docs/manage-workforce-identity-pools-providers#configure_a_provider_within_the_workforce_pool)
///
/// > **Note:** Ask your Google Cloud account team to request access to workforce identity federation for your
/// billing/quota project. The account team notifies you when the project is granted access.
///
///
///
/// ## Example Usage
///
/// ### Iam Workforce Pool Provider Saml Basic
///
///
///
/// ### Iam Workforce Pool Provider Saml Full
///
///
///
/// ### Iam Workforce Pool Provider Oidc Basic
///
///
///
/// ### Iam Workforce Pool Provider Oidc Full
///
///
///
/// ### Iam Workforce Pool Provider Extra Attributes Oauth2 Config Client Basic
///
///
///
/// ### Iam Workforce Pool Provider Extra Attributes Oauth2 Config Client Full
///
///
///
/// ### Iam Workforce Pool Provider Extended Attributes Oauth2 Config Client Basic
///
///
///
/// ### Iam Workforce Pool Provider Extended Attributes Oauth2 Config Client Full
///
///
///
///
/// ## Import
///
/// WorkforcePoolProvider can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}`
///
/// * `{{location}}/{{workforce_pool_id}}/{{provider_id}}`
///
/// When using the `pulumi import` command, WorkforcePoolProvider can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProvider:WorkforcePoolProvider default locations/{{location}}/workforcePools/{{workforce_pool_id}}/providers/{{provider_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolProvider:WorkforcePoolProvider default {{location}}/{{workforce_pool_id}}/{{provider_id}}
/// ```
class WorkforcePoolProvider extends CustomResource {
  /// A [Common Expression Language](https://opensource.google/projects/cel) expression, in
  /// plain text, to restrict what otherwise valid authentication credentials issued by the
  /// provider should not be accepted.
  /// The expression must output a boolean representing whether to allow the federation.
  /// The following keywords may be referenced in the expressions:
  late final Output<String?> attributeCondition;

  /// Maps attributes from the authentication credentials issued by an external identity provider
  /// to Google Cloud attributes, such as `subject` and `segment`.
  /// Each key must be a string specifying the Google Cloud IAM attribute to map to.
  /// The following keys are supported:
  /// * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings.
  /// This is also the subject that appears in Cloud Logging logs. This is a required field and
  /// the mapped subject cannot exceed 127 bytes.
  /// * `google.groups`: Groups the authenticating user belongs to. You can grant groups access to
  /// resources using an IAM `principalSet` binding; access applies to all members of the group.
  /// * `google.display_name`: The name of the authenticated user. This is an optional field and
  /// the mapped display name cannot exceed 100 bytes. If not set, `google.subject` will be displayed instead.
  /// This attribute cannot be referenced in IAM bindings.
  /// * `google.profile_photo`: The URL that specifies the authenticated user's thumbnail photo.
  /// This is an optional field. When set, the image will be visible as the user's profile picture.
  /// If not set, a generic user icon will be displayed instead.
  /// This attribute cannot be referenced in IAM bindings.
  /// You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where {custom_attribute}
  /// is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes.
  /// The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_].
  /// You can reference these attributes in IAM policies to define fine-grained access for a workforce pool
  /// to Google Cloud resources. For example:
  /// * `google.subject`:
  /// `principal://iam.googleapis.com/locations/{location}/workforcePools/{pool}/subject/{value}`
  /// * `google.groups`:
  /// `principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/group/{value}`
  /// * `attribute.{custom_attribute}`:
  /// `principalSet://iam.googleapis.com/locations/{location}/workforcePools/{pool}/attribute.{custom_attribute}/{value}`
  /// Each value must be a [Common Expression Language](https://opensource.google/projects/cel)
  /// function that maps an identity provider credential to the normalized attribute specified
  /// by the corresponding map key.
  /// You can use the `assertion` keyword in the expression to access a JSON representation of
  /// the authentication credential issued by the provider.
  /// The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
  /// the total size of all mapped attributes must not exceed 8KB.
  /// For OIDC providers, you must supply a custom mapping that includes the `google.subject` attribute.
  /// For example, the following maps the sub claim of the incoming credential to the `subject` attribute
  /// on a Google token:
  /// ```
  /// {"google.subject": "assertion.sub"}
  /// ```
  /// An object containing a list of `"key": value` pairs.
  /// Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final Output<Map<String, String>?> attributeMapping;

  /// A user-specified description of the provider. Cannot exceed 256 characters.
  late final Output<String?> description;

  /// Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
  /// However, existing tokens still grant access.
  late final Output<bool?> disabled;

  /// A user-specified display name for the provider. Cannot exceed 32 characters.
  late final Output<String?> displayName;

  /// The configuration for OAuth 2.0 client used to get the extended group
  /// memberships for user identities. Only the `AZURE_AD_GROUPS_ID` attribute
  /// type is supported. Extended groups supports a subset of Google Cloud
  /// services. When the user accesses these services, extended group memberships
  /// override the mapped `google.groups` attribute. Extended group memberships
  /// cannot be used in attribute mapping or attribute condition expressions.
  /// To keep extended group memberships up to date, extended groups are
  /// retrieved when the user signs in and at regular intervals during the user's
  /// active session. Each user identity in the workforce identity pool must map
  /// to a unique Microsoft Entra ID user.
  /// Structure is documented below.
  late final Output<WorkforcePoolProviderExtendedAttributesOauth2Client?>
      extendedAttributesOauth2Client;

  /// The configuration for OAuth 2.0 client used to get the additional user
  /// attributes. This should be used when users can't get the desired claims
  /// in authentication credentials. Currently this configuration is only
  /// supported with SAML and OIDC protocol.
  /// Structure is documented below.
  late final Output<WorkforcePoolProviderExtraAttributesOauth2Client?>
      extraAttributesOauth2Client;

  /// The location for the resource.
  late final Output<String> location;

  /// Output only. The resource name of the provider.
  /// Format: `locations/{location}/workforcePools/{workforcePoolId}/providers/{providerId}`
  late final Output<String> name;

  /// Represents an OpenId Connect 1.0 identity provider.
  /// Structure is documented below.
  late final Output<WorkforcePoolProviderOidc?> oidc;

  /// The ID for the provider, which becomes the final component of the resource name.
  /// This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final Output<String> providerId;

  /// Represents a SAML identity provider.
  /// Structure is documented below.
  late final Output<WorkforcePoolProviderSaml?> saml;

  /// Agentspace only. Specifies whether the workforce identity pool
  /// provider uses SCIM-managed groups instead of the `google.groups`
  /// attribute mapping for authorization checks.
  /// The `scimUsage` and `extendedAttributesOauth2Client` fields are
  /// mutually exclusive. A request that enables both fields on the same
  /// workforce identity pool provider will produce an error.
  /// * SCIM_USAGE_UNSPECIFIED: Default behaviour
  /// * ENABLED_FOR_GROUPS: Use SCIM-managed groups instead of the `google.groups`
  /// attribute mapping for authorization checks
  /// Possible values are: `SCIM_USAGE_UNSPECIFIED`, `ENABLED_FOR_GROUPS`.
  late final Output<String?> scimUsage;

  /// The current state of the provider.
  /// * STATE_UNSPECIFIED: State unspecified.
  /// * ACTIVE: The provider is active and may be used to validate authentication credentials.
  /// * DELETED: The provider is soft-deleted. Soft-deleted providers are permanently
  /// deleted after approximately 30 days. You can restore a soft-deleted provider using
  /// [providers.undelete](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools.providers/undelete#google.iam.admin.v1.WorkforcePools.UndeleteWorkforcePoolProvider).
  late final Output<String> state;

  /// The ID to use for the pool, which becomes the final component of the resource name.
  /// The IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens.
  /// It must start with a letter, and cannot have a trailing hyphen.
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final Output<String> workforcePoolId;

  WorkforcePoolProvider(
    String name, {
    WorkforcePoolProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolProvider:WorkforcePoolProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributeCondition = registerOutput<String?>('attributeCondition');
    this.attributeMapping =
        registerOutput<Map<String, String>?>('attributeMapping');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.extendedAttributesOauth2Client =
        registerOutput<WorkforcePoolProviderExtendedAttributesOauth2Client?>(
            'extendedAttributesOauth2Client');
    this.extraAttributesOauth2Client =
        registerOutput<WorkforcePoolProviderExtraAttributesOauth2Client?>(
            'extraAttributesOauth2Client');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.oidc = registerOutput<WorkforcePoolProviderOidc?>('oidc');
    this.providerId = registerOutput<String>('providerId');
    this.saml = registerOutput<WorkforcePoolProviderSaml?>('saml');
    this.scimUsage = registerOutput<String?>('scimUsage');
    this.state = registerOutput<String>('state');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
