// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_organization_security_policy_organization_security_policy_args_doc}
/// The set of arguments for OrganizationSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_organization_security_policy_organization_security_policy_args_doc}
class OrganizationSecurityPolicyArgs {
  /// A textual description for the organization security policy.
  final pulumi.Input<String>? description;

  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL.
  final pulumi.Input<String>? displayName;

  /// The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  final pulumi.Input<String> parent;

  /// User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is CLOUD_ARMOR.
  final pulumi.Input<String>? shortName;

  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// **NOTE** : 'FIREWALL' type is deprecated and will be removed in a future major release. Please use 'google_compute_firewall_policy' instead."
  /// Possible values are: `FIREWALL`, `CLOUD_ARMOR`, `CLOUD_ARMOR_EDGE`, `CLOUD_ARMOR_INTERNAL_SERVICE`, `CLOUD_ARMOR_NETWORK`.
  final pulumi.Input<String>? type;

  /// Creates a new [OrganizationSecurityPolicyArgs].
  /// [description] A textual description for the organization security policy.
  /// [displayName] User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL.
  /// [parent] The parent of this OrganizationSecurityPolicy in the Cloud Resource Hierarchy.
  /// [shortName] User-provided name of the organization security policy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is CLOUD_ARMOR.
  /// [type] The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  OrganizationSecurityPolicyArgs({
    String? description,
    String? displayName,
    required String parent,
    String? shortName,
    String? type,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        parent = pulumi.Input.asInput<String>(parent),
        shortName = pulumi.Input.asOptionalInput<String>(shortName),
        type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['parent'] = parent;
    final shortNameValue = shortName;
    if (shortNameValue != null) {
      map['shortName'] = shortNameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory OrganizationSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      parent: map['parent'] as String,
      shortName: map['shortName'] == null ? null : map['shortName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
