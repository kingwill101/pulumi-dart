import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_response.dart';
import 'oidc_response.dart';
import 'provider_args.dart';
import 'saml_response.dart';

/// Creates a new WorkloadIdentityPoolProvider in a WorkloadIdentityPool. You cannot reuse the name of a deleted provider until 30 days after deletion.
/// Auto-naming is currently not supported for this resource.
class Provider extends pulumi.CustomResource {
  /// [A Common Expression Language](https://opensource.google/projects/cel) expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * `assertion`: JSON representing the authentication credential issued by the provider. * `google`: The Google attributes mapped from the assertion in the `attribute_mappings`. * `attribute`: The custom attributes mapped from the assertion in the `attribute_mappings`. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credential are accepted. The following example shows how to only allow credentials with a mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
  late final pulumi.Output<String> attributeCondition;

  /// Maps attributes from authentication credentials issued by an external identity provider to Google Cloud attributes, such as `subject` and `segment`. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. Cannot exceed 127 bytes. * `google.groups`: Groups the external identity belongs to. You can grant groups access to resources using an IAM `principalSet` binding; access applies to all members of the group. You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where `{custom_attribute}` is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define fine-grained access for a workload to Google Cloud resources. For example: * `google.subject`: `principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}` * `google.groups`: `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}` * `attribute.{custom_attribute}`: `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}` Each value must be a [Common Expression Language] (https://opensource.google/projects/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the `assertion` keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of all mapped attributes must not exceed 8KB. For AWS providers, if no attribute mapping is defined, the following default mapping applies: ``` { "google.subject":"assertion.arn", "attribute.aws_role": "assertion.arn.contains('assumed-role')" " ? assertion.arn.extract('{account_arn}assumed-role/')" " + 'assumed-role/'" " + assertion.arn.extract('assumed-role/{role_name}/')" " : assertion.arn", } ``` If any custom attribute mappings are defined, they must include a mapping to the `google.subject` attribute. For OIDC providers, you must supply a custom mapping, which must include the `google.subject` attribute. For example, the following maps the `sub` claim of the incoming credential to the `subject` attribute on a Google token: ``` {"google.subject": "assertion.sub"} ```
  late final pulumi.Output<Map<String, String>> attributeMapping;

  /// An Amazon Web Services identity provider.
  late final pulumi.Output<AwsResponse> aws;

  /// A description for the provider. Cannot exceed 256 characters.
  late final pulumi.Output<String> description;

  /// Whether the provider is disabled. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
  late final pulumi.Output<bool> disabled;

  /// A display name for the provider. Cannot exceed 32 characters.
  late final pulumi.Output<String> displayName;

  /// Time after which the workload identity pool provider will be permanently purged and cannot be recovered.
  late final pulumi.Output<String> expireTime;
  late final pulumi.Output<String> location;

  /// The resource name of the provider.
  late final pulumi.Output<String> name;

  /// An OpenId Connect 1.0 identity provider.
  late final pulumi.Output<OidcResponse> oidc;
  late final pulumi.Output<String> project;

  /// An SAML 2.0 identity provider.
  late final pulumi.Output<SamlResponse> saml;

  /// The state of the provider.
  late final pulumi.Output<String> state;
  late final pulumi.Output<String> workloadIdentityPoolId;

  /// Required. The ID for the provider, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workloadIdentityPoolProviderId;

  /// Creates a new [Provider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Provider]. {@macro pulumi_iam_v1_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Provider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:iam/v1:Provider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attributeCondition = registerOutput<String>('attributeCondition');
    this.attributeMapping =
        registerOutput<Map<String, String>>('attributeMapping');
    this.aws = registerOutput<AwsResponse>('aws');
    this.description = registerOutput<String>('description');
    this.disabled = registerOutput<bool>('disabled');
    this.displayName = registerOutput<String>('displayName');
    this.expireTime = registerOutput<String>('expireTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.oidc = registerOutput<OidcResponse>('oidc');
    this.project = registerOutput<String>('project');
    this.saml = registerOutput<SamlResponse>('saml');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId =
        registerOutput<String>('workloadIdentityPoolId');
    this.workloadIdentityPoolProviderId =
        registerOutput<String>('workloadIdentityPoolProviderId');
  }
}
