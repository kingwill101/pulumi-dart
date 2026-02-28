// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws.dart';
import 'oidc.dart';
import 'saml.dart';

/// {@template pulumi_iam_v1_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_provider_args_doc}
class ProviderArgs {
  /// [A Common Expression Language](https://opensource.google/projects/cel) expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * `assertion`: JSON representing the authentication credential issued by the provider. * `google`: The Google attributes mapped from the assertion in the `attribute_mappings`. * `attribute`: The custom attributes mapped from the assertion in the `attribute_mappings`. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credential are accepted. The following example shows how to only allow credentials with a mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
  final pulumi.Input<String>? attributeCondition;

  /// Maps attributes from authentication credentials issued by an external identity provider to Google Cloud attributes, such as `subject` and `segment`. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. Cannot exceed 127 bytes. * `google.groups`: Groups the external identity belongs to. You can grant groups access to resources using an IAM `principalSet` binding; access applies to all members of the group. You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where `{custom_attribute}` is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define fine-grained access for a workload to Google Cloud resources. For example: * `google.subject`: `principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}` * `google.groups`: `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}` * `attribute.{custom_attribute}`: `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}` Each value must be a [Common Expression Language] (https://opensource.google/projects/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the `assertion` keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of all mapped attributes must not exceed 8KB. For AWS providers, if no attribute mapping is defined, the following default mapping applies: ``` { "google.subject":"assertion.arn", "attribute.aws_role": "assertion.arn.contains('assumed-role')" " ? assertion.arn.extract('{account_arn}assumed-role/')" " + 'assumed-role/'" " + assertion.arn.extract('assumed-role/{role_name}/')" " : assertion.arn", } ``` If any custom attribute mappings are defined, they must include a mapping to the `google.subject` attribute. For OIDC providers, you must supply a custom mapping, which must include the `google.subject` attribute. For example, the following maps the `sub` claim of the incoming credential to the `subject` attribute on a Google token: ``` {"google.subject": "assertion.sub"} ```
  final pulumi.Input<Map<String, String>>? attributeMapping;

  /// An Amazon Web Services identity provider.
  final pulumi.Input<Aws>? aws;

  /// A description for the provider. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;

  /// Whether the provider is disabled. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
  final pulumi.Input<bool>? disabled;

  /// A display name for the provider. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// An OpenId Connect 1.0 identity provider.
  final pulumi.Input<Oidc>? oidc;
  final pulumi.Input<String>? project;

  /// An SAML 2.0 identity provider.
  final pulumi.Input<Saml>? saml;
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Required. The ID for the provider, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workloadIdentityPoolProviderId;

  /// Creates a new [ProviderArgs].
  /// [attributeCondition] [A Common Expression Language](https://opensource.google/projects/cel) expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * `assertion`: JSON representing the authentication credential issued by the provider. * `google`: The Google attributes mapped from the assertion in the `attribute_mappings`. * `attribute`: The custom attributes mapped from the assertion in the `attribute_mappings`. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credential are accepted. The following example shows how to only allow credentials with a mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
  /// [attributeMapping] Maps attributes from authentication credentials issued by an external identity provider to Google Cloud attributes, such as `subject` and `segment`. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. Cannot exceed 127 bytes. * `google.groups`: Groups the external identity belongs to. You can grant groups access to resources using an IAM `principalSet` binding; access applies to all members of the group. You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where `{custom_attribute}` is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define fine-grained access for a workload to Google Cloud resources. For example: * `google.subject`: `principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}` * `google.groups`: `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}` * `attribute.{custom_attribute}`: `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}` Each value must be a [Common Expression Language] (https://opensource.google/projects/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the `assertion` keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of all mapped attributes must not exceed 8KB. For AWS providers, if no attribute mapping is defined, the following default mapping applies: ``` { "google.subject":"assertion.arn", "attribute.aws_role": "assertion.arn.contains('assumed-role')" " ? assertion.arn.extract('{account_arn}assumed-role/')" " + 'assumed-role/'" " + assertion.arn.extract('assumed-role/{role_name}/')" " : assertion.arn", } ``` If any custom attribute mappings are defined, they must include a mapping to the `google.subject` attribute. For OIDC providers, you must supply a custom mapping, which must include the `google.subject` attribute. For example, the following maps the `sub` claim of the incoming credential to the `subject` attribute on a Google token: ``` {"google.subject": "assertion.sub"} ```
  /// [aws] An Amazon Web Services identity provider.
  /// [description] A description for the provider. Cannot exceed 256 characters.
  /// [disabled] Whether the provider is disabled. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
  /// [displayName] A display name for the provider. Cannot exceed 32 characters.
  /// [location] Optional.
  /// [oidc] An OpenId Connect 1.0 identity provider.
  /// [project] Optional.
  /// [saml] An SAML 2.0 identity provider.
  /// [workloadIdentityPoolId] Required.
  /// [workloadIdentityPoolProviderId] Required. The ID for the provider, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  ProviderArgs({
    String? attributeCondition,
    Map<String, String>? attributeMapping,
    Aws? aws,
    String? description,
    bool? disabled,
    String? displayName,
    String? location,
    Oidc? oidc,
    String? project,
    Saml? saml,
    required String workloadIdentityPoolId,
    required String workloadIdentityPoolProviderId,
  })  : attributeCondition =
            pulumi.Input.asOptionalInput<String>(attributeCondition),
        attributeMapping =
            pulumi.Input.asOptionalInput<Map<String, String>>(attributeMapping),
        aws = pulumi.Input.asOptionalInput<Aws>(aws),
        description = pulumi.Input.asOptionalInput<String>(description),
        disabled = pulumi.Input.asOptionalInput<bool>(disabled),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        oidc = pulumi.Input.asOptionalInput<Oidc>(oidc),
        project = pulumi.Input.asOptionalInput<String>(project),
        saml = pulumi.Input.asOptionalInput<Saml>(saml),
        workloadIdentityPoolId =
            pulumi.Input.asInput<String>(workloadIdentityPoolId),
        workloadIdentityPoolProviderId =
            pulumi.Input.asInput<String>(workloadIdentityPoolProviderId);

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
      map['aws'] =
          pulumi.Input.mapOptionalInputValue<Aws, Map<String, dynamic>>(
              awsValue, (value) => value.toMap());
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
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final oidcValue = oidc;
    if (oidcValue != null) {
      map['oidc'] =
          pulumi.Input.mapOptionalInputValue<Oidc, Map<String, dynamic>>(
              oidcValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final samlValue = saml;
    if (samlValue != null) {
      map['saml'] =
          pulumi.Input.mapOptionalInputValue<Saml, Map<String, dynamic>>(
              samlValue, (value) => value.toMap());
    }
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    map['workloadIdentityPoolProviderId'] = workloadIdentityPoolProviderId;
    return map;
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      attributeCondition: map['attributeCondition'] == null
          ? null
          : map['attributeCondition'] as String,
      attributeMapping: map['attributeMapping'] == null
          ? null
          : (map['attributeMapping'] as Map).cast<String, String>(),
      aws: map['aws'] == null
          ? null
          : Aws.fromMap((map['aws'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      oidc: map['oidc'] == null
          ? null
          : Oidc.fromMap((map['oidc'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      saml: map['saml'] == null
          ? null
          : Saml.fromMap((map['saml'] as Map).cast<String, dynamic>()),
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
      workloadIdentityPoolProviderId:
          map['workloadIdentityPoolProviderId'] as String,
    );
  }
}
