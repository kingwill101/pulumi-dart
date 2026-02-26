// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workload_identity_pool_provider_aws/workload_identity_pool_provider_aws.dart';
import '../workload_identity_pool_provider_oidc/workload_identity_pool_provider_oidc.dart';
import '../workload_identity_pool_provider_saml/workload_identity_pool_provider_saml.dart';
import '../workload_identity_pool_provider_x509/workload_identity_pool_provider_x509.dart';

/// The set of arguments for WorkloadIdentityPoolProvider.
class WorkloadIdentityPoolProviderArgs {
  /// [A Common Expression Language](https://opensource.google/projects/cel) expression, in
  /// plain text, to restrict what otherwise valid authentication credentials issued by the
  /// provider should not be accepted.
  /// The expression must output a boolean representing whether to allow the federation.
  /// The following keywords may be referenced in the expressions:
  final Input<String>? attributeCondition;

  /// Maps attributes from authentication credentials issued by an external identity provider
  /// to Google Cloud attributes, such as <span pulumi-lang-nodejs="`subject`" pulumi-lang-dotnet="`Subject`" pulumi-lang-go="`subject`" pulumi-lang-python="`subject`" pulumi-lang-yaml="`subject`" pulumi-lang-java="`subject`">`subject`</span> and <span pulumi-lang-nodejs="`segment`" pulumi-lang-dotnet="`Segment`" pulumi-lang-go="`segment`" pulumi-lang-python="`segment`" pulumi-lang-yaml="`segment`" pulumi-lang-java="`segment`">`segment`</span>.
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
  /// You can use the <span pulumi-lang-nodejs="`assertion`" pulumi-lang-dotnet="`Assertion`" pulumi-lang-go="`assertion`" pulumi-lang-python="`assertion`" pulumi-lang-yaml="`assertion`" pulumi-lang-java="`assertion`">`assertion`</span> keyword in the expression to access a JSON representation of
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
  /// `google.subject` attribute. For example, the following maps the <span pulumi-lang-nodejs="`sub`" pulumi-lang-dotnet="`Sub`" pulumi-lang-go="`sub`" pulumi-lang-python="`sub`" pulumi-lang-yaml="`sub`" pulumi-lang-java="`sub`">`sub`</span> claim of the
  /// incoming credential to the <span pulumi-lang-nodejs="`subject`" pulumi-lang-dotnet="`Subject`" pulumi-lang-go="`subject`" pulumi-lang-python="`subject`" pulumi-lang-yaml="`subject`" pulumi-lang-java="`subject`">`subject`</span> attribute on a Google token.
  /// ```
  /// {"google.subject": "assertion.sub"}
  /// ```
  final Input<Map<String, String>>? attributeMapping;

  /// An Amazon Web Services identity provider. Not compatible with the property oidc or saml.
  /// Structure is documented below.
  final Input<WorkloadIdentityPoolProviderAws>? aws;

  /// A description for the provider. Cannot exceed 256 characters.
  final Input<String>? description;

  /// Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
  /// However, existing tokens still grant access.
  final Input<bool>? disabled;

  /// A display name for the provider. Cannot exceed 32 characters.
  final Input<String>? displayName;

  /// An OpenId Connect 1.0 identity provider. Not compatible with the property aws or saml.
  /// Structure is documented below.
  final Input<WorkloadIdentityPoolProviderOidc>? oidc;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// An SAML 2.0 identity provider. Not compatible with the property oidc or aws.
  /// Structure is documented below.
  final Input<WorkloadIdentityPoolProviderSaml>? saml;

  /// The ID used for the pool, which is the final component of the pool resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final Input<String> workloadIdentityPoolId;

  /// The ID for the provider, which becomes the final component of the resource name. This
  /// value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final Input<String> workloadIdentityPoolProviderId;

  /// An X.509-type identity provider represents a CA. It is trusted to assert a
  /// client identity if the client has a certificate that chains up to this CA.
  /// Structure is documented below.
  final Input<WorkloadIdentityPoolProviderX509>? x509;

  WorkloadIdentityPoolProviderArgs({
    this.attributeCondition,
    this.attributeMapping,
    this.aws,
    this.description,
    this.disabled,
    this.displayName,
    this.oidc,
    this.project,
    this.saml,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolProviderId,
    this.x509,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeConditionValue = attributeCondition;
    if (attributeConditionValue != null) {
      map['attributeCondition'] = attributeConditionValue;
    }
    final attributeMappingValue = attributeMapping;
    if (attributeMappingValue != null) {
      map['attributeMapping'] = attributeMappingValue;
    }
    final awsValue = aws;
    if (awsValue != null) {
      map['aws'] = Input.mapOptionalInputValue<WorkloadIdentityPoolProviderAws,
          Map<String, dynamic>>(awsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final oidcValue = oidc;
    if (oidcValue != null) {
      map['oidc'] = Input.mapOptionalInputValue<
          WorkloadIdentityPoolProviderOidc,
          Map<String, dynamic>>(oidcValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final samlValue = saml;
    if (samlValue != null) {
      map['saml'] = Input.mapOptionalInputValue<
          WorkloadIdentityPoolProviderSaml,
          Map<String, dynamic>>(samlValue, (value) => value.toMap());
    }
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    map['workloadIdentityPoolProviderId'] = workloadIdentityPoolProviderId;
    final x509Value = x509;
    if (x509Value != null) {
      map['x509'] = Input.mapOptionalInputValue<
          WorkloadIdentityPoolProviderX509,
          Map<String, dynamic>>(x509Value, (value) => value.toMap());
    }
    return map;
  }

  factory WorkloadIdentityPoolProviderArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderArgs(
      attributeCondition:
          Input.asOptionalInput<String>(map['attributeCondition']),
      attributeMapping:
          Input.asOptionalInput<Map<String, String>>(map['attributeMapping']),
      aws: Input.asOptionalInput<WorkloadIdentityPoolProviderAws>(map['aws']),
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      oidc:
          Input.asOptionalInput<WorkloadIdentityPoolProviderOidc>(map['oidc']),
      project: Input.asOptionalInput<String>(map['project']),
      saml:
          Input.asOptionalInput<WorkloadIdentityPoolProviderSaml>(map['saml']),
      workloadIdentityPoolId:
          Input.asInput<String>(map['workloadIdentityPoolId']),
      workloadIdentityPoolProviderId:
          Input.asInput<String>(map['workloadIdentityPoolProviderId']),
      x509:
          Input.asOptionalInput<WorkloadIdentityPoolProviderX509>(map['x509']),
    );
  }
}
