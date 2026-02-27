// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_kaj_policy_config_default_key_access_justification_policy/organization_kaj_policy_config_default_key_access_justification_policy.dart';

/// The set of arguments for OrganizationKajPolicyConfig.
class OrganizationKajPolicyConfigArgs {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this organization. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  final pulumi
      .Input<OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy>?
      defaultKeyAccessJustificationPolicy;

  /// The organization number for which to retrieve config.
  final pulumi.Input<String> organization;

  OrganizationKajPolicyConfigArgs({
    this.defaultKeyAccessJustificationPolicy,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultKeyAccessJustificationPolicyValue =
        defaultKeyAccessJustificationPolicy;
    if (defaultKeyAccessJustificationPolicyValue != null) {
      map['defaultKeyAccessJustificationPolicy'] = pulumi
          .Input.mapOptionalInputValue<
              OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy,
              Map<String, dynamic>>(
          defaultKeyAccessJustificationPolicyValue, (value) => value.toMap());
    }
    map['organization'] = organization;
    return map;
  }

  factory OrganizationKajPolicyConfigArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationKajPolicyConfigArgs(
      defaultKeyAccessJustificationPolicy: pulumi.Input.asOptionalInput<
              OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy>(
          map['defaultKeyAccessJustificationPolicy']),
      organization: pulumi.Input.asInput<String>(map['organization']),
    );
  }
}
