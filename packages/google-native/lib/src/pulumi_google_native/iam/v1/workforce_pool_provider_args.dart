// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_iam_admin_v1_workforce_pool_provider_oidc.dart';
import 'google_iam_admin_v1_workforce_pool_provider_saml.dart';

/// The set of arguments for WorkforcePoolProvider.
class WorkforcePoolProviderArgs {
  /// A [Common Expression Language](https://opensource.google/projects/cel) expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. The expression must output a boolean representing whether to allow the federation. The following keywords may be referenced in the expressions: * `assertion`: JSON representing the authentication credential issued by the provider. * `google`: The Google attributes mapped from the assertion in the `attribute_mappings`. `google.profile_photo` and `google.display_name` are not supported. * `attribute`: The custom attributes mapped from the assertion in the `attribute_mappings`. The maximum length of the attribute condition expression is 4096 characters. If unspecified, all valid authentication credentials will be accepted. The following example shows how to only allow credentials with a mapped `google.groups` value of `admins`: ``` "'admins' in google.groups" ```
  final Input<String>? attributeCondition;

  /// Maps attributes from the authentication credentials issued by an external identity provider to Google Cloud attributes, such as `subject` and `segment`. Each key must be a string specifying the Google Cloud IAM attribute to map to. The following keys are supported: * `google.subject`: The principal IAM is authenticating. You can reference this value in IAM bindings. This is also the subject that appears in Cloud Logging logs. This is a required field and the mapped subject cannot exceed 127 bytes. * `google.groups`: Groups the authenticating user belongs to. You can grant groups access to resources using an IAM `principalSet` binding; access applies to all members of the group. * `google.display_name`: The name of the authenticated user. This is an optional field and the mapped display name cannot exceed 100 bytes. If not set, `google.subject` will be displayed instead. This attribute cannot be referenced in IAM bindings. * `google.profile_photo`: The URL that specifies the authenticated user's thumbnail photo. This is an optional field. When set, the image will be visible as the user's profile picture. If not set, a generic user icon will be displayed instead. This attribute cannot be referenced in IAM bindings. You can also provide custom attributes by specifying `attribute.{custom_attribute}`, where {custom_attribute} is the name of the custom attribute to be mapped. You can define a maximum of 50 custom attributes. The maximum length of a mapped attribute key is 100 characters, and the key may only contain the characters [a-z0-9_]. You can reference these attributes in IAM policies to define fine-grained access for a workforce pool to Google Cloud resources. For example: * `google.subject`: `principal://iam.googleapis.com/locations/global/workforcePools/{pool}/subject/{value}` * `google.groups`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/group/{value}` * `attribute.{custom_attribute}`: `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/attribute.{custom_attribute}/{value}` Each value must be a [Common Expression Language] (https://opensource.google/projects/cel) function that maps an identity provider credential to the normalized attribute specified by the corresponding map key. You can use the `assertion` keyword in the expression to access a JSON representation of the authentication credential issued by the provider. The maximum length of an attribute mapping expression is 2048 characters. When evaluated, the total size of all mapped attributes must not exceed 4KB. For OIDC providers, you must supply a custom mapping that includes the `google.subject` attribute. For example, the following maps the `sub` claim of the incoming credential to the `subject` attribute on a Google token: ``` {"google.subject": "assertion.sub"} ```
  final Input<Map<String, String>> attributeMapping;

  /// A user-specified description of the provider. Cannot exceed 256 characters.
  final Input<String>? description;

  /// Disables the workforce pool provider. You cannot use a disabled provider to exchange tokens. However, existing tokens still grant access.
  final Input<bool>? disabled;

  /// A user-specified display name for the provider. Cannot exceed 32 characters.
  final Input<String>? displayName;
  final Input<String>? location;

  /// An OpenId Connect 1.0 identity provider configuration.
  final Input<GoogleIamAdminV1WorkforcePoolProviderOidc>? oidc;

  /// A SAML identity provider configuration.
  final Input<GoogleIamAdminV1WorkforcePoolProviderSaml>? saml;
  final Input<String> workforcePoolId;

  /// Required. The ID for the provider, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final Input<String> workforcePoolProviderId;

  WorkforcePoolProviderArgs({
    this.attributeCondition,
    required this.attributeMapping,
    this.description,
    this.disabled,
    this.displayName,
    this.location,
    this.oidc,
    this.saml,
    required this.workforcePoolId,
    required this.workforcePoolProviderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeConditionValue = attributeCondition;
    if (attributeConditionValue != null) {
      map['attributeCondition'] = attributeConditionValue;
    }
    map['attributeMapping'] = attributeMapping;
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
      map['oidc'] = Input.mapOptionalInputValue<
          GoogleIamAdminV1WorkforcePoolProviderOidc,
          Map<String, dynamic>>(oidcValue, (value) => value.toMap());
    }
    final samlValue = saml;
    if (samlValue != null) {
      map['saml'] = Input.mapOptionalInputValue<
          GoogleIamAdminV1WorkforcePoolProviderSaml,
          Map<String, dynamic>>(samlValue, (value) => value.toMap());
    }
    map['workforcePoolId'] = workforcePoolId;
    map['workforcePoolProviderId'] = workforcePoolProviderId;
    return map;
  }

  factory WorkforcePoolProviderArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderArgs(
      attributeCondition:
          Input.asOptionalInput<String>(map['attributeCondition']),
      attributeMapping:
          Input.asInput<Map<String, String>>(map['attributeMapping']),
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      oidc: Input.asOptionalInput<GoogleIamAdminV1WorkforcePoolProviderOidc>(
          map['oidc']),
      saml: Input.asOptionalInput<GoogleIamAdminV1WorkforcePoolProviderSaml>(
          map['saml']),
      workforcePoolId: Input.asInput<String>(map['workforcePoolId']),
      workforcePoolProviderId:
          Input.asInput<String>(map['workforcePoolProviderId']),
    );
  }
}
